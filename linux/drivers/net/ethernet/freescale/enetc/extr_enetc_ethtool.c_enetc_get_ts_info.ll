; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }

@enetc_phc_index = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @enetc_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %6 = load i32, i32* @enetc_phc_index, align 4
  %7 = call i32* @symbol_get(i32 %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @enetc_phc_index, align 4
  %16 = call i32 @symbol_put(i32 %15)
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %22 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  ret i32 0
}

declare dso_local i32* @symbol_get(i32) #1

declare dso_local i32 @symbol_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
