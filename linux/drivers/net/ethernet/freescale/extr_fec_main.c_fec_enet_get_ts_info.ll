; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.fec_enet_private = type { i64, i64 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @fec_enet_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %6, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %15 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %28 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %13
  %32 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %33 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ptp_clock_index(i64 %34)
  %36 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %41

38:                                               ; preds = %13
  %39 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %43, %45
  %47 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %52 = shl i32 1, %51
  %53 = or i32 %50, %52
  %54 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %60

56:                                               ; preds = %2
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %59 = call i32 @ethtool_op_get_ts_info(%struct.net_device* %57, %struct.ethtool_ts_info* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %41
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ptp_clock_index(i64) #1

declare dso_local i32 @ethtool_op_get_ts_info(%struct.net_device*, %struct.ethtool_ts_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
