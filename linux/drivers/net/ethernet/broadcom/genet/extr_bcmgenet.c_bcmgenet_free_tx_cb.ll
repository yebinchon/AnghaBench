; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_free_tx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_free_tx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.device = type { i32 }
%struct.enet_cb = type { %struct.sk_buff* }
%struct.TYPE_2__ = type { %struct.enet_cb*, %struct.enet_cb* }

@dma_addr = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.device*, %struct.enet_cb*)* @bcmgenet_free_tx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bcmgenet_free_tx_cb(%struct.device* %0, %struct.enet_cb* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.enet_cb*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.enet_cb* %1, %struct.enet_cb** %5, align 8
  %7 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %8 = getelementptr inbounds %struct.enet_cb, %struct.enet_cb* %7, i32 0, i32 0
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %2
  %13 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %14 = getelementptr inbounds %struct.enet_cb, %struct.enet_cb* %13, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %15 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.TYPE_2__* @GENET_CB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.enet_cb*, %struct.enet_cb** %18, align 8
  %20 = icmp eq %struct.enet_cb* %15, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %24 = load i32, i32* @dma_addr, align 4
  %25 = call i64 @dma_unmap_addr(%struct.enet_cb* %23, i32 %24)
  %26 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %27 = load i32, i32* @dma_len, align 4
  %28 = call i32 @dma_unmap_len(%struct.enet_cb* %26, i32 %27)
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_unmap_single(%struct.device* %22, i64 %25, i32 %28, i32 %29)
  br label %41

31:                                               ; preds = %12
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %34 = load i32, i32* @dma_addr, align 4
  %35 = call i64 @dma_unmap_addr(%struct.enet_cb* %33, i32 %34)
  %36 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %37 = load i32, i32* @dma_len, align 4
  %38 = call i32 @dma_unmap_len(%struct.enet_cb* %36, i32 %37)
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_unmap_page(%struct.device* %32, i64 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %21
  %42 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %43 = load i32, i32* @dma_addr, align 4
  %44 = call i32 @dma_unmap_addr_set(%struct.enet_cb* %42, i32 %43, i32 0)
  %45 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call %struct.TYPE_2__* @GENET_CB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.enet_cb*, %struct.enet_cb** %48, align 8
  %50 = icmp eq %struct.enet_cb* %45, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %3, align 8
  br label %74

53:                                               ; preds = %41
  br label %73

54:                                               ; preds = %2
  %55 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %56 = load i32, i32* @dma_addr, align 4
  %57 = call i64 @dma_unmap_addr(%struct.enet_cb* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %62 = load i32, i32* @dma_addr, align 4
  %63 = call i64 @dma_unmap_addr(%struct.enet_cb* %61, i32 %62)
  %64 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %65 = load i32, i32* @dma_len, align 4
  %66 = call i32 @dma_unmap_len(%struct.enet_cb* %64, i32 %65)
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i32 @dma_unmap_page(%struct.device* %60, i64 %63, i32 %66, i32 %67)
  %69 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %70 = load i32, i32* @dma_addr, align 4
  %71 = call i32 @dma_unmap_addr_set(%struct.enet_cb* %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %59, %54
  br label %73

73:                                               ; preds = %72, %53
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %74

74:                                               ; preds = %73, %51
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %75
}

declare dso_local %struct.TYPE_2__* @GENET_CB(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i64 @dma_unmap_addr(%struct.enet_cb*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.enet_cb*, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.enet_cb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
