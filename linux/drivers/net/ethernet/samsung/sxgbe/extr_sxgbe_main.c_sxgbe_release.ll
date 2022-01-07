; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.sxgbe_priv_data = type { i32, i32, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_4__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@SXGBE_TX_QUEUES = common dso_local global i32 0, align 4
@SXGBE_RX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sxgbe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_release(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sxgbe_priv_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device* %4)
  store %struct.sxgbe_priv_data* %5, %struct.sxgbe_priv_data** %3, align 8
  %6 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %7 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %12 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %11, i32 0, i32 4
  %13 = call i32 @del_timer_sync(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @phy_stop(i64 %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @phy_disconnect(i64 %26)
  br label %28

28:                                               ; preds = %19, %14
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %29)
  %31 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %32 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %31, i32 0, i32 3
  %33 = call i32 @napi_disable(i32* %32)
  %34 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %35 = call i32 @sxgbe_tx_del_timer(%struct.sxgbe_priv_data* %34)
  %36 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %37 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %44 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SXGBE_TX_QUEUES, align 4
  %47 = call i32 %42(i32 %45, i32 %46)
  %48 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %49 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %56 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SXGBE_RX_QUEUES, align 4
  %59 = call i32 %54(i32 %57, i32 %58)
  %60 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %61 = call i32 @sxgbe_disable_mtl_engine(%struct.sxgbe_priv_data* %60)
  %62 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %63 = call i32 @free_dma_desc_resources(%struct.sxgbe_priv_data* %62)
  %64 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %65 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32 (i32, i32)*, i32 (i32, i32)** %69, align 8
  %71 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %72 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %70(i32 %73, i32 0)
  %75 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %76 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  %82 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %83 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %81(i32 %84, i32 0)
  %86 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %87 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @clk_disable_unprepare(i32 %88)
  ret i32 0
}

declare dso_local %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @sxgbe_tx_del_timer(%struct.sxgbe_priv_data*) #1

declare dso_local i32 @sxgbe_disable_mtl_engine(%struct.sxgbe_priv_data*) #1

declare dso_local i32 @free_dma_desc_resources(%struct.sxgbe_priv_data*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
