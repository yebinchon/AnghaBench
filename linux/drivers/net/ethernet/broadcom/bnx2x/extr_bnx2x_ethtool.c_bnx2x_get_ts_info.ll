; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.bnx2x = type { i32, i64 }

@PTP_SUPPORTED = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L4_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @bnx2x_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2x* %8, %struct.bnx2x** %6, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PTP_SUPPORTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %2
  %16 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %17 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %15
  %34 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ptp_clock_index(i64 %36)
  %38 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %43

40:                                               ; preds = %15
  %41 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_EVENT, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L4_EVENT, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_EVENT, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %51, %53
  %55 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %68

64:                                               ; preds = %2
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %67 = call i32 @ethtool_op_get_ts_info(%struct.net_device* %65, %struct.ethtool_ts_info* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %43
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ptp_clock_index(i64) #1

declare dso_local i32 @ethtool_op_get_ts_info(%struct.net_device*, %struct.ethtool_ts_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
