; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i64 }

@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.port_info* @netdev_priv(%struct.net_device* %7)
  store %struct.port_info* %8, %struct.port_info** %5, align 8
  %9 = load %struct.port_info*, %struct.port_info** %5, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 0
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %6, align 8
  %12 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %13 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %20 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_EVENT, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %36, %38
  %40 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_SYNC, align 4
  %41 = shl i32 1, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_SYNC, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  %52 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.adapter*, %struct.adapter** %6, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %2
  %59 = load %struct.adapter*, %struct.adapter** %6, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ptp_clock_index(i64 %61)
  %63 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  br label %68

65:                                               ; preds = %2
  %66 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %66, i32 0, i32 3
  store i32 -1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %58
  ret i32 0
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ptp_clock_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
