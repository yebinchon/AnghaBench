; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.nicvf = type { i32 }

@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @nicvf_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  %6 = alloca %struct.nicvf*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.nicvf* @netdev_priv(%struct.net_device* %7)
  store %struct.nicvf* %8, %struct.nicvf** %6, align 8
  %9 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %16 = call i32 @ethtool_op_get_ts_info(%struct.net_device* %14, %struct.ethtool_ts_info* %15)
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %19 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %32 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cavium_ptp_clock_index(i32 %33)
  %35 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  %42 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %17, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_op_get_ts_info(%struct.net_device*, %struct.ethtool_ts_info*) #1

declare dso_local i32 @cavium_ptp_clock_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
