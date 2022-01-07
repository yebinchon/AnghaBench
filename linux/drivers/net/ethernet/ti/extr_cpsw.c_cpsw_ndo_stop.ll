; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, i32, i32, i32, i32, i32, i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"shutting down cpsw device\0A\00", align 1
@cpsw_purge_all_mc = common dso_local global i32 0, align 4
@cpsw_slave_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cpsw_ndo_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpsw_priv*, align 8
  %4 = alloca %struct.cpsw_common*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.cpsw_priv* %6, %struct.cpsw_priv** %3, align 8
  %7 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %8 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %7, i32 0, i32 1
  %9 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  store %struct.cpsw_common* %9, %struct.cpsw_common** %4, align 8
  %10 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %11 = load i32, i32* @ifdown, align 4
  %12 = call i32 @cpsw_info(%struct.cpsw_priv* %10, i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load i32, i32* @cpsw_purge_all_mc, align 4
  %17 = call i32 @__hw_addr_ref_unsync_dev(i32* %14, %struct.net_device* %15, i32 %16)
  %18 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %19 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @netif_tx_stop_all_queues(i32 %20)
  %22 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %23 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netif_carrier_off(i32 %24)
  %26 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %27 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %53

30:                                               ; preds = %1
  %31 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %32 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %31, i32 0, i32 6
  %33 = call i32 @napi_disable(i32* %32)
  %34 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %35 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %34, i32 0, i32 5
  %36 = call i32 @napi_disable(i32* %35)
  %37 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %38 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpts_unregister(i32 %39)
  %41 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %42 = call i32 @cpsw_intr_disable(%struct.cpsw_common* %41)
  %43 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %44 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpdma_ctlr_stop(i32 %45)
  %47 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %48 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cpsw_ale_stop(i32 %49)
  %51 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %52 = call i32 @cpsw_destroy_xdp_rxqs(%struct.cpsw_common* %51)
  br label %53

53:                                               ; preds = %30, %1
  %54 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %55 = load i32, i32* @cpsw_slave_stop, align 4
  %56 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %57 = call i32 @for_each_slave(%struct.cpsw_priv* %54, i32 %55, %struct.cpsw_common* %56)
  %58 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %59 = call i64 @cpsw_need_resplit(%struct.cpsw_common* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %63 = call i32 @cpsw_split_res(%struct.cpsw_common* %62)
  br label %64

64:                                               ; preds = %61, %53
  %65 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %66 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %70 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pm_runtime_put_sync(i32 %71)
  ret i32 0
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_info(%struct.cpsw_priv*, i32, i8*) #1

declare dso_local i32 @__hw_addr_ref_unsync_dev(i32*, %struct.net_device*, i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @cpts_unregister(i32) #1

declare dso_local i32 @cpsw_intr_disable(%struct.cpsw_common*) #1

declare dso_local i32 @cpdma_ctlr_stop(i32) #1

declare dso_local i32 @cpsw_ale_stop(i32) #1

declare dso_local i32 @cpsw_destroy_xdp_rxqs(%struct.cpsw_common*) #1

declare dso_local i32 @for_each_slave(%struct.cpsw_priv*, i32, %struct.cpsw_common*) #1

declare dso_local i64 @cpsw_need_resplit(%struct.cpsw_common*) #1

declare dso_local i32 @cpsw_split_res(%struct.cpsw_common*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
