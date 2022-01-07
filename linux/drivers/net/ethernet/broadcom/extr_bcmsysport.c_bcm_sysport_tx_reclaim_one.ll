; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_tx_reclaim_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_tx_reclaim_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_tx_ring = type { %struct.bcm_sysport_priv* }
%struct.bcm_sysport_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm_sysport_cb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@dma_addr = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_cb*, i32*, i32*)* @bcm_sysport_tx_reclaim_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_tx_reclaim_one(%struct.bcm_sysport_tx_ring* %0, %struct.bcm_sysport_cb* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.bcm_sysport_tx_ring*, align 8
  %6 = alloca %struct.bcm_sysport_cb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bcm_sysport_priv*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.bcm_sysport_tx_ring* %0, %struct.bcm_sysport_tx_ring** %5, align 8
  store %struct.bcm_sysport_cb* %1, %struct.bcm_sysport_cb** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %5, align 8
  %12 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %11, i32 0, i32 0
  %13 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %12, align 8
  store %struct.bcm_sysport_priv* %13, %struct.bcm_sysport_priv** %9, align 8
  %14 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %9, align 8
  %15 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %19 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %4
  %23 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %24 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %30, %27
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %35 = load i32, i32* @dma_addr, align 4
  %36 = call i64 @dma_unmap_addr(%struct.bcm_sysport_cb* %34, i32 %35)
  %37 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %38 = load i32, i32* @dma_len, align 4
  %39 = call i64 @dma_unmap_len(%struct.bcm_sysport_cb* %37, i32 %38)
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(%struct.device* %33, i64 %36, i64 %39, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %46 = call i32 @bcm_sysport_free_cb(%struct.bcm_sysport_cb* %45)
  br label %74

47:                                               ; preds = %4
  %48 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %49 = load i32, i32* @dma_addr, align 4
  %50 = call i64 @dma_unmap_addr(%struct.bcm_sysport_cb* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %54 = load i32, i32* @dma_len, align 4
  %55 = call i64 @dma_unmap_len(%struct.bcm_sysport_cb* %53, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %58, %55
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load %struct.device*, %struct.device** %10, align 8
  %62 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %63 = load i32, i32* @dma_addr, align 4
  %64 = call i64 @dma_unmap_addr(%struct.bcm_sysport_cb* %62, i32 %63)
  %65 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %66 = load i32, i32* @dma_len, align 4
  %67 = call i64 @dma_unmap_len(%struct.bcm_sysport_cb* %65, i32 %66)
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @dma_unmap_page(%struct.device* %61, i64 %64, i64 %67, i32 %68)
  %70 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %6, align 8
  %71 = load i32, i32* @dma_addr, align 4
  %72 = call i32 @dma_unmap_addr_set(%struct.bcm_sysport_cb* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %52, %47
  br label %74

74:                                               ; preds = %73, %22
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i64 @dma_unmap_addr(%struct.bcm_sysport_cb*, i32) #1

declare dso_local i64 @dma_unmap_len(%struct.bcm_sysport_cb*, i32) #1

declare dso_local i32 @bcm_sysport_free_cb(%struct.bcm_sysport_cb*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bcm_sysport_cb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
