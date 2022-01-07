; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.bcmgenet_priv = type { %struct.bcmgenet_rx_ring*, %struct.TYPE_3__* }
%struct.bcmgenet_rx_ring = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DESC_INDEX = common dso_local global i64 0, align 8
@DMA_MBUF_DONE_THRESH = common dso_local global i32 0, align 4
@DMA_RING16_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @bcmgenet_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.bcmgenet_priv*, align 8
  %6 = alloca %struct.bcmgenet_rx_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcmgenet_priv* %9, %struct.bcmgenet_priv** %5, align 8
  %10 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %11 = load i64, i64* @DESC_INDEX, align 8
  %12 = load i32, i32* @DMA_MBUF_DONE_THRESH, align 4
  %13 = call i32 @bcmgenet_tdma_ring_readl(%struct.bcmgenet_priv* %10, i64 %11, i32 %12)
  %14 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %17 = load i64, i64* @DESC_INDEX, align 8
  %18 = load i32, i32* @DMA_MBUF_DONE_THRESH, align 4
  %19 = call i32 @bcmgenet_rdma_ring_readl(%struct.bcmgenet_priv* %16, i64 %17, i32 %18)
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %23 = load i32, i32* @DMA_RING16_TIMEOUT, align 4
  %24 = call i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv* %22, i32 %23)
  %25 = mul nsw i32 %24, 8192
  %26 = sdiv i32 %25, 1000
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %52, %2
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %32 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %30, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %29
  %38 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %39 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %38, i32 0, i32 0
  %40 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %40, i64 %42
  store %struct.bcmgenet_rx_ring* %43, %struct.bcmgenet_rx_ring** %6, align 8
  %44 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %6, align 8
  %45 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %29

55:                                               ; preds = %29
  %56 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %57 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %56, i32 0, i32 0
  %58 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %57, align 8
  %59 = load i64, i64* @DESC_INDEX, align 8
  %60 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %58, i64 %59
  store %struct.bcmgenet_rx_ring* %60, %struct.bcmgenet_rx_ring** %6, align 8
  %61 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %6, align 8
  %62 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  ret i32 0
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_tdma_ring_readl(%struct.bcmgenet_priv*, i64, i32) #1

declare dso_local i32 @bcmgenet_rdma_ring_readl(%struct.bcmgenet_priv*, i64, i32) #1

declare dso_local i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
