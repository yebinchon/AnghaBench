; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgbe_prv_data = type { i32, i32, i32, %struct.xgbe_hw_if }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@.str = private unnamed_addr constant [19 x i8] c"-->xgbe_powerdown\0A\00", align 1
@XGMAC_IOCTL_CONTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Device is already powered down\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"<--xgbe_powerdown\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XGMAC_DRIVER_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgbe_powerdown(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.xgbe_hw_if*, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.xgbe_prv_data* %10, %struct.xgbe_prv_data** %6, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 3
  store %struct.xgbe_hw_if* %12, %struct.xgbe_hw_if** %7, align 8
  %13 = call i32 @DBGPR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @XGMAC_IOCTL_CONTEXT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21, %2
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @netdev_alert(%struct.net_device* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @DBGPR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %73

32:                                               ; preds = %21, %17
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 1
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @XGMAC_DRIVER_CONTEXT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @netif_device_detach(%struct.net_device* %41)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %44)
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %47 = call i32 @xgbe_stop_timers(%struct.xgbe_prv_data* %46)
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %49 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @flush_workqueue(i32 %50)
  %52 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %53 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %52, i32 0, i32 1
  %54 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %53, align 8
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %56 = bitcast %struct.xgbe_prv_data* %55 to %struct.xgbe_prv_data.1*
  %57 = call i32 %54(%struct.xgbe_prv_data.1* %56)
  %58 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %59 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %58, i32 0, i32 0
  %60 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %59, align 8
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %62 = bitcast %struct.xgbe_prv_data* %61 to %struct.xgbe_prv_data.0*
  %63 = call i32 %60(%struct.xgbe_prv_data.0* %62)
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %65 = call i32 @xgbe_napi_disable(%struct.xgbe_prv_data* %64, i32 0)
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %67 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %69 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %68, i32 0, i32 1
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = call i32 @DBGPR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %43, %26
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_alert(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @xgbe_stop_timers(%struct.xgbe_prv_data*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @xgbe_napi_disable(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
