; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (...)*, i32 (%struct.mlxsw_sp_port*, i32*, i32)* }

@MLXSW_REG_PPCNT_IEEE_8023_CNT = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_HW_STATS_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_RFC_2863_CNT = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN = common dso_local global i64 0, align 8
@MLXSW_REG_PPCNT_RFC_2819_CNT = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN = common dso_local global i64 0, align 8
@MLXSW_REG_PPCNT_RFC_3635_CNT = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN = common dso_local global i64 0, align 8
@MLXSW_REG_PPCNT_DISCARD_CNT = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_HW_DISCARD_STATS_LEN = common dso_local global i64 0, align 8
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_PRIO_CNT = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_HW_PRIO_STATS_LEN = common dso_local global i64 0, align 8
@TC_MAX_QUEUE = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_TC_CNT = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_HW_TC_STATS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @mlxsw_sp_port_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_get_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlxsw_sp_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %10)
  store %struct.mlxsw_sp_port* %11, %struct.mlxsw_sp_port** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = load i32, i32* @MLXSW_REG_PPCNT_IEEE_8023_CNT, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @__mlxsw_sp_port_get_stats(%struct.net_device* %12, i32 %13, i32 0, i32* %14, i32 %15)
  %17 = load i32, i32* @MLXSW_SP_PORT_HW_STATS_LEN, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i32, i32* @MLXSW_REG_PPCNT_RFC_2863_CNT, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @__mlxsw_sp_port_get_stats(%struct.net_device* %18, i32 %19, i32 0, i32* %20, i32 %21)
  %23 = load i64, i64* @MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load i32, i32* @MLXSW_REG_PPCNT_RFC_2819_CNT, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @__mlxsw_sp_port_get_stats(%struct.net_device* %28, i32 %29, i32 0, i32* %30, i32 %31)
  %33 = load i64, i64* @MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load i32, i32* @MLXSW_REG_PPCNT_RFC_3635_CNT, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @__mlxsw_sp_port_get_stats(%struct.net_device* %38, i32 %39, i32 0, i32* %40, i32 %41)
  %43 = load i64, i64* @MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load i32, i32* @MLXSW_REG_PPCNT_DISCARD_CNT, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @__mlxsw_sp_port_get_stats(%struct.net_device* %48, i32 %49, i32 0, i32* %50, i32 %51)
  %53 = load i64, i64* @MLXSW_SP_PORT_HW_DISCARD_STATS_LEN, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %74, %3
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = load i32, i32* @MLXSW_REG_PPCNT_PRIO_CNT, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @__mlxsw_sp_port_get_stats(%struct.net_device* %63, i32 %64, i32 %65, i32* %66, i32 %67)
  %69 = load i64, i64* @MLXSW_SP_PORT_HW_PRIO_STATS_LEN, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %58

77:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %94, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @TC_MAX_QUEUE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = load i32, i32* @MLXSW_REG_PPCNT_TC_CNT, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @__mlxsw_sp_port_get_stats(%struct.net_device* %83, i32 %84, i32 %85, i32* %86, i32 %87)
  %89 = load i64, i64* @MLXSW_SP_PORT_HW_TC_STATS_LEN, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %78

97:                                               ; preds = %78
  %98 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32 (%struct.mlxsw_sp_port*, i32*, i32)*, i32 (%struct.mlxsw_sp_port*, i32*, i32)** %103, align 8
  %105 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 %104(%struct.mlxsw_sp_port* %105, i32* %106, i32 %107)
  %109 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %110 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64 (...)*, i64 (...)** %114, align 8
  %116 = call i64 (...) %115()
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %9, align 4
  ret void
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__mlxsw_sp_port_get_stats(%struct.net_device*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
