; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.ravb_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L2_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @ravb_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.ravb_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ravb_private* %7, %struct.ravb_private** %5, align 8
  %8 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %9 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L2_EVENT, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %39 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ptp_clock_index(i32 %41)
  %43 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  ret i32 0
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ptp_clock_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
