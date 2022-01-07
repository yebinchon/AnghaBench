; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.gfar_private = type { i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.ptp_qoriq = type { i32 }

@FSL_GIANFAR_DEV_HAS_TIMER = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fsl,etsec-ptp\00", align 1
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @gfar_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.ptp_qoriq*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %10)
  store %struct.gfar_private* %11, %struct.gfar_private** %6, align 8
  store %struct.ptp_qoriq* null, %struct.ptp_qoriq** %9, align 8
  %12 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %15 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FSL_GIANFAR_DEV_HAS_TIMER, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %22 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %70

26:                                               ; preds = %2
  %27 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %27, %struct.device_node** %8, align 8
  %28 = load %struct.device_node*, %struct.device_node** %8, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.device_node*, %struct.device_node** %8, align 8
  %32 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %31)
  store %struct.platform_device* %32, %struct.platform_device** %7, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %34 = icmp ne %struct.platform_device* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %37 = call %struct.ptp_qoriq* @platform_get_drvdata(%struct.platform_device* %36)
  store %struct.ptp_qoriq* %37, %struct.ptp_qoriq** %9, align 8
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %9, align 8
  %41 = icmp ne %struct.ptp_qoriq* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %9, align 8
  %44 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %50 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %57, %59
  %61 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %48, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local %struct.ptp_qoriq* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
