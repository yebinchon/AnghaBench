; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xscale/extr_ixp4xx_eth.c_ixp4xx_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xscale/extr_ixp4xx_eth.c_ixp4xx_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }

@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@ixp46x_phc_index = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @ixp4xx_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %6 = call i32 (...) @cpu_is_ixp46x()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %10 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %20 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ixp46x_phc_index, align 4
  %27 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %30, %32
  %34 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_SYNC, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ, align 4
  %42 = shl i32 1, %41
  %43 = or i32 %40, %42
  %44 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %18, %8
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @cpu_is_ixp46x(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
