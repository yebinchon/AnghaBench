; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.stmmac_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @stmmac_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  %6 = alloca %struct.stmmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.stmmac_priv* %8, %struct.stmmac_priv** %6, align 8
  %9 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %10 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %16 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %87

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %22 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %35 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ptp_clock_index(i64 %41)
  %43 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %20
  %46 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_EVENT, align 4
  %56 = shl i32 1, %55
  %57 = or i32 %54, %56
  %58 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_SYNC, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %57, %59
  %61 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ, align 4
  %62 = shl i32 1, %61
  %63 = or i32 %60, %62
  %64 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_EVENT, align 4
  %65 = shl i32 1, %64
  %66 = or i32 %63, %65
  %67 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_SYNC, align 4
  %68 = shl i32 1, %67
  %69 = or i32 %66, %68
  %70 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ, align 4
  %71 = shl i32 1, %70
  %72 = or i32 %69, %71
  %73 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_EVENT, align 4
  %74 = shl i32 1, %73
  %75 = or i32 %72, %74
  %76 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_SYNC, align 4
  %77 = shl i32 1, %76
  %78 = or i32 %75, %77
  %79 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_DELAY_REQ, align 4
  %80 = shl i32 1, %79
  %81 = or i32 %78, %80
  %82 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %83 = shl i32 1, %82
  %84 = or i32 %81, %83
  %85 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %3, align 4
  br label %91

87:                                               ; preds = %14
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %90 = call i32 @ethtool_op_get_ts_info(%struct.net_device* %88, %struct.ethtool_ts_info* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %45
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ptp_clock_index(i64) #1

declare dso_local i32 @ethtool_op_get_ts_info(%struct.net_device*, %struct.ethtool_ts_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
