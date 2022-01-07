; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_channel**, i32, %struct.net_device*, %struct.xgbe_phy_if, %struct.xgbe_hw_if }
%struct.xgbe_channel = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.xgbe_phy_if = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.3*)* }
%struct.xgbe_prv_data.1 = type opaque
%struct.xgbe_prv_data.2 = type opaque
%struct.xgbe_prv_data.3 = type opaque
%struct.netdev_queue = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"-->xgbe_stop\0A\00", align 1
@XGBE_STOPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"<--xgbe_stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_stop(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_hw_if*, align 8
  %4 = alloca %struct.xgbe_phy_if*, align 8
  %5 = alloca %struct.xgbe_channel*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 6
  store %struct.xgbe_hw_if* %10, %struct.xgbe_hw_if** %3, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 5
  store %struct.xgbe_phy_if* %12, %struct.xgbe_phy_if** %4, align 8
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 4
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = call i32 @DBGPR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @XGBE_STOPPED, align 4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %98

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %24)
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %27 = call i32 @xgbe_stop_timers(%struct.xgbe_prv_data* %26)
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @flush_workqueue(i32 %30)
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %33 = call i32 @xgbe_reset_vxlan_accel(%struct.xgbe_prv_data* %32)
  %34 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %3, align 8
  %35 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %34, i32 0, i32 2
  %36 = load i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.3*)** %35, align 8
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %38 = bitcast %struct.xgbe_prv_data* %37 to %struct.xgbe_prv_data.3*
  %39 = call i32 %36(%struct.xgbe_prv_data.3* %38)
  %40 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %3, align 8
  %41 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %40, i32 0, i32 1
  %42 = load i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.2*)** %41, align 8
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %44 = bitcast %struct.xgbe_prv_data* %43 to %struct.xgbe_prv_data.2*
  %45 = call i32 %42(%struct.xgbe_prv_data.2* %44)
  %46 = load %struct.xgbe_phy_if*, %struct.xgbe_phy_if** %4, align 8
  %47 = getelementptr inbounds %struct.xgbe_phy_if, %struct.xgbe_phy_if* %46, i32 0, i32 0
  %48 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %47, align 8
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %50 = bitcast %struct.xgbe_prv_data* %49 to %struct.xgbe_prv_data.0*
  %51 = call i32 %48(%struct.xgbe_prv_data.0* %50)
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %53 = call i32 @xgbe_free_irqs(%struct.xgbe_prv_data* %52)
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %55 = call i32 @xgbe_napi_disable(%struct.xgbe_prv_data* %54, i32 1)
  %56 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %3, align 8
  %57 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %56, i32 0, i32 0
  %58 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %57, align 8
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %60 = bitcast %struct.xgbe_prv_data* %59 to %struct.xgbe_prv_data.1*
  %61 = call i32 %58(%struct.xgbe_prv_data.1* %60)
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %89, %23
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %70 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %69, i32 0, i32 2
  %71 = load %struct.xgbe_channel**, %struct.xgbe_channel*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.xgbe_channel*, %struct.xgbe_channel** %71, i64 %73
  %75 = load %struct.xgbe_channel*, %struct.xgbe_channel** %74, align 8
  store %struct.xgbe_channel* %75, %struct.xgbe_channel** %5, align 8
  %76 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %77 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  br label %89

81:                                               ; preds = %68
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %84 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %82, i32 %85)
  store %struct.netdev_queue* %86, %struct.netdev_queue** %7, align 8
  %87 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %88 = call i32 @netdev_tx_reset_queue(%struct.netdev_queue* %87)
  br label %89

89:                                               ; preds = %81, %80
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %62

92:                                               ; preds = %62
  %93 = load i32, i32* @XGBE_STOPPED, align 4
  %94 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %95 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %94, i32 0, i32 1
  %96 = call i32 @set_bit(i32 %93, i32* %95)
  %97 = call i32 @DBGPR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %92, %22
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @xgbe_stop_timers(%struct.xgbe_prv_data*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @xgbe_reset_vxlan_accel(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_free_irqs(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_napi_disable(%struct.xgbe_prv_data*, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(%struct.netdev_queue*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
