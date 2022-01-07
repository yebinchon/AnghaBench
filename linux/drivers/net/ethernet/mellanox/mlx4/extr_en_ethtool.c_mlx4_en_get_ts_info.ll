; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @mlx4_en_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %6, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 0
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %16 = call i32 @ethtool_op_get_ts_info(%struct.net_device* %14, %struct.ethtool_ts_info* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %21
  %32 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %33 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %31
  %60 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ptp_clock_index(i64 %62)
  %64 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %31
  br label %67

67:                                               ; preds = %66, %21
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_op_get_ts_info(%struct.net_device*, %struct.ethtool_ts_info*) #1

declare dso_local i32 @ptp_clock_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
