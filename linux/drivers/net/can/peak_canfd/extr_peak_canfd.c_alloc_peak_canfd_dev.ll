; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_alloc_peak_canfd_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_alloc_peak_canfd_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32 }
%struct.peak_canfd_priv = type { i32, i32, i64, %struct.net_device*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32 }

@PCANFD_ECHO_SKB_MAX = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@peak_canfd_nominal_const = common dso_local global i32 0, align 4
@peak_canfd_data_const = common dso_local global i32 0, align 4
@peak_canfd_set_mode = common dso_local global i32 0, align 4
@peak_canfd_get_berr_counter = common dso_local global i32 0, align 4
@peak_canfd_set_bittiming = common dso_local global i32 0, align 4
@peak_canfd_set_data_bittiming = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@peak_canfd_netdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_peak_canfd_dev(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.peak_canfd_priv*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @PCANFD_ECHO_SKB_MAX, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.net_device* @alloc_candev(i32 %15, i32 %16)
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %86

21:                                               ; preds = %14
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call %struct.peak_canfd_priv* @netdev_priv(%struct.net_device* %22)
  store %struct.peak_canfd_priv* %23, %struct.peak_canfd_priv** %9, align 8
  %24 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %25 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %26 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 7
  store i32 %24, i32* %27, align 8
  %28 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %29 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  store i32* @peak_canfd_nominal_const, i32** %30, align 8
  %31 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %32 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  store i32* @peak_canfd_data_const, i32** %33, align 8
  %34 = load i32, i32* @peak_canfd_set_mode, align 4
  %35 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %36 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @peak_canfd_get_berr_counter, align 4
  %39 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %40 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @peak_canfd_set_bittiming, align 4
  %43 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %44 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @peak_canfd_set_data_bittiming, align 4
  %47 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %48 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %51 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %62 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.net_device*, %struct.net_device** %8, align 8
  %65 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %66 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %65, i32 0, i32 3
  store %struct.net_device* %64, %struct.net_device** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %69 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %71 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %9, align 8
  %73 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %72, i32 0, i32 1
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load i32, i32* @IFF_ECHO, align 4
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.net_device*, %struct.net_device** %8, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 1
  store i32* @peak_canfd_netdev_ops, i32** %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.net_device*, %struct.net_device** %8, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %85, %struct.net_device** %4, align 8
  br label %86

86:                                               ; preds = %21, %20
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %87
}

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local %struct.peak_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
