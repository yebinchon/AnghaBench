; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.dp83640_private* }
%struct.dp83640_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }

@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ONESTEP_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L2_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.ethtool_ts_info*)* @dp83640_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83640_ts_info(%struct.phy_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.dp83640_private*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load %struct.dp83640_private*, %struct.dp83640_private** %7, align 8
  store %struct.dp83640_private* %8, %struct.dp83640_private** %5, align 8
  %9 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %10 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %17 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ptp_clock_index(i32 %20)
  %22 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @HWTSTAMP_TX_ONESTEP_SYNC, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_EVENT, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_EVENT, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  %42 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L2_EVENT, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_EVENT, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  ret i32 0
}

declare dso_local i32 @ptp_clock_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
