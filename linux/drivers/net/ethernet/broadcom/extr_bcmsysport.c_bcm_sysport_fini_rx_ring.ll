; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_fini_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_fini_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32, i32, %struct.bcm_sysport_cb*, %struct.TYPE_2__* }
%struct.bcm_sysport_cb = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RDMA_STATUS = common dso_local global i32 0, align 4
@RDMA_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RDMA not stopped!\0A\00", align 1
@dma_addr = common dso_local global i32 0, align 4
@RX_BUF_LENGTH = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"RDMA fini done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*)* @bcm_sysport_fini_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_fini_rx_ring(%struct.bcm_sysport_priv* %0) #0 {
  %2 = alloca %struct.bcm_sysport_priv*, align 8
  %3 = alloca %struct.bcm_sysport_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %2, align 8
  %6 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %7 = load i32, i32* @RDMA_STATUS, align 4
  %8 = call i32 @rdma_readl(%struct.bcm_sysport_priv* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RDMA_DISABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %15 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netdev_warn(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %13, %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %50, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %22 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %27 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %26, i32 0, i32 2
  %28 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %28, i64 %30
  store %struct.bcm_sysport_cb* %31, %struct.bcm_sysport_cb** %3, align 8
  %32 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %3, align 8
  %33 = load i32, i32* @dma_addr, align 4
  %34 = call i64 @dma_unmap_addr(%struct.bcm_sysport_cb* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %38 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %3, align 8
  %42 = load i32, i32* @dma_addr, align 4
  %43 = call i64 @dma_unmap_addr(%struct.bcm_sysport_cb* %41, i32 %42)
  %44 = load i32, i32* @RX_BUF_LENGTH, align 4
  %45 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %46 = call i32 @dma_unmap_single(i32* %40, i64 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %25
  %48 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %3, align 8
  %49 = call i32 @bcm_sysport_free_cb(%struct.bcm_sysport_cb* %48)
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %55 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %54, i32 0, i32 2
  %56 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %55, align 8
  %57 = call i32 @kfree(%struct.bcm_sysport_cb* %56)
  %58 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %59 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %58, i32 0, i32 2
  store %struct.bcm_sysport_cb* null, %struct.bcm_sysport_cb** %59, align 8
  %60 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %61 = load i32, i32* @hw, align 4
  %62 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %63 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @netif_dbg(%struct.bcm_sysport_priv* %60, i32 %61, i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rdma_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i64 @dma_unmap_addr(%struct.bcm_sysport_cb*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @bcm_sysport_free_cb(%struct.bcm_sysport_cb*) #1

declare dso_local i32 @kfree(%struct.bcm_sysport_cb*) #1

declare dso_local i32 @netif_dbg(%struct.bcm_sysport_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
