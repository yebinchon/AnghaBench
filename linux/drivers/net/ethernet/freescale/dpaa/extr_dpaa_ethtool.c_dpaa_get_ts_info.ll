; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.ptp_qoriq = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ptimer-handle\00", align 1
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @dpaa_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.ptp_qoriq*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  store %struct.device_node* null, %struct.device_node** %7, align 8
  store %struct.device_node* null, %struct.device_node** %8, align 8
  store %struct.platform_device* null, %struct.platform_device** %9, align 8
  store %struct.ptp_qoriq* null, %struct.ptp_qoriq** %10, align 8
  %18 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call %struct.device_node* @of_get_parent(%struct.device_node* %20)
  store %struct.device_node* %21, %struct.device_node** %7, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %26, %struct.device_node** %8, align 8
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.device_node*, %struct.device_node** %8, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.device_node*, %struct.device_node** %8, align 8
  %32 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %31)
  store %struct.platform_device* %32, %struct.platform_device** %9, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %35 = icmp ne %struct.platform_device* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %38 = call %struct.ptp_qoriq* @platform_get_drvdata(%struct.platform_device* %37)
  store %struct.ptp_qoriq* %38, %struct.ptp_qoriq** %10, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %10, align 8
  %41 = icmp ne %struct.ptp_qoriq* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %10, align 8
  %44 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %50 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %57, %59
  %61 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  ret i32 0
}

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local %struct.ptp_qoriq* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
