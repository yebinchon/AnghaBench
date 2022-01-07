; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_free_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_free_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.moxart_mac_priv_t = type { i32, i32, i32, i64, %struct.TYPE_2__*, i32, i64, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@RX_DESC_NUM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_REG_DESC_SIZE = common dso_local global i32 0, align 4
@TX_DESC_NUM = common dso_local global i32 0, align 4
@RX_REG_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @moxart_mac_free_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_mac_free_memory(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.moxart_mac_priv_t*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device* %5)
  store %struct.moxart_mac_priv_t* %6, %struct.moxart_mac_priv_t** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RX_DESC_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %15 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %22 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @dma_unmap_single(i32* %13, i32 %20, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %31 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %36 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* @TX_REG_DESC_SIZE, align 4
  %40 = load i32, i32* @TX_DESC_NUM, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %43 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %46 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_free_coherent(i32* %38, i32 %41, i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %34, %29
  %50 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %51 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %56 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* @RX_REG_DESC_SIZE, align 4
  %60 = load i32, i32* @RX_DESC_NUM, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %63 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %66 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_free_coherent(i32* %58, i32 %61, i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %54, %49
  %70 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %71 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @kfree(i32 %72)
  %74 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %75 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @kfree(i32 %76)
  ret void
}

declare dso_local %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
