; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgbe_prv_data = type { i32, i64, %struct.xgbe_hw_if }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@.str = private unnamed_addr constant [17 x i8] c"-->xgbe_powerup\0A\00", align 1
@XGMAC_IOCTL_CONTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Device is already powered up\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"<--xgbe_powerup\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XGMAC_DRIVER_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgbe_powerup(%struct.net_device* %0, i32 %1) #0 {
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
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 2
  store %struct.xgbe_hw_if* %12, %struct.xgbe_hw_if** %7, align 8
  %13 = call i32 @DBGPR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
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
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @netdev_alert(%struct.net_device* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @DBGPR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %21, %17
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %38 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %40 = call i32 @xgbe_napi_enable(%struct.xgbe_prv_data* %39, i32 0)
  %41 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %42 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %41, i32 0, i32 1
  %43 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %42, align 8
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %45 = bitcast %struct.xgbe_prv_data* %44 to %struct.xgbe_prv_data.1*
  %46 = call i32 %43(%struct.xgbe_prv_data.1* %45)
  %47 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %48 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %47, i32 0, i32 0
  %49 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %48, align 8
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %51 = bitcast %struct.xgbe_prv_data* %50 to %struct.xgbe_prv_data.0*
  %52 = call i32 %49(%struct.xgbe_prv_data.0* %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @XGMAC_DRIVER_CONTEXT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %32
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @netif_device_attach(%struct.net_device* %57)
  br label %59

59:                                               ; preds = %56, %32
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @netif_tx_start_all_queues(%struct.net_device* %60)
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %63 = call i32 @xgbe_start_timers(%struct.xgbe_prv_data* %62)
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %65 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %64, i32 0, i32 0
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = call i32 @DBGPR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_alert(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xgbe_napi_enable(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @xgbe_start_timers(%struct.xgbe_prv_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
