; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.lio = type { i64 }

@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L2_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @lio_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.lio*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.lio* @GET_LIO(%struct.net_device* %6)
  store %struct.lio* %7, %struct.lio** %5, align 8
  %8 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %9 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.lio*, %struct.lio** %5, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.lio*, %struct.lio** %5, align 8
  %19 = getelementptr inbounds %struct.lio, %struct.lio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ptp_clock_index(i64 %20)
  %22 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %17
  ret i32 0
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @ptp_clock_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
