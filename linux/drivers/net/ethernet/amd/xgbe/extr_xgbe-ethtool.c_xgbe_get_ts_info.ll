; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.xgbe_prv_data = type { i64 }

@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_DELAY_REQ = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @xgbe_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %6)
  store %struct.xgbe_prv_data* %7, %struct.xgbe_prv_data** %5, align 8
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
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ptp_clock_index(i64 %28)
  %30 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_EVENT, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_SYNC, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ, align 4
  %52 = shl i32 1, %51
  %53 = or i32 %50, %52
  %54 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_EVENT, align 4
  %55 = shl i32 1, %54
  %56 = or i32 %53, %55
  %57 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_SYNC, align 4
  %58 = shl i32 1, %57
  %59 = or i32 %56, %58
  %60 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ, align 4
  %61 = shl i32 1, %60
  %62 = or i32 %59, %61
  %63 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_EVENT, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  %66 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_SYNC, align 4
  %67 = shl i32 1, %66
  %68 = or i32 %65, %67
  %69 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_DELAY_REQ, align 4
  %70 = shl i32 1, %69
  %71 = or i32 %68, %70
  %72 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %73 = shl i32 1, %72
  %74 = or i32 %71, %73
  %75 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  ret i32 0
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ptp_clock_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
