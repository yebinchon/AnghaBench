; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_attr_br_flags_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_attr_br_flags_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.switchdev_trans = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MLXSW_SP_FLOOD_TYPE_UC = common dso_local global i32 0, align 4
@BR_FLOOD = common dso_local global i64 0, align 8
@BR_LEARNING = common dso_local global i64 0, align 8
@MLXSW_SP_FLOOD_TYPE_MC = common dso_local global i32 0, align 4
@BR_MCAST_FLOOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.switchdev_trans*, %struct.net_device*, i64)* @mlxsw_sp_port_attr_br_flags_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_attr_br_flags_set(%struct.mlxsw_sp_port* %0, %struct.switchdev_trans* %1, %struct.net_device* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %6, align 8
  store %struct.switchdev_trans* %1, %struct.switchdev_trans** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %13 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

16:                                               ; preds = %4
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32 %21, %struct.net_device* %22)
  store %struct.mlxsw_sp_bridge_port* %23, %struct.mlxsw_sp_bridge_port** %10, align 8
  %24 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %10, align 8
  %25 = icmp ne %struct.mlxsw_sp_bridge_port* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %75

27:                                               ; preds = %16
  %28 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %29 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %10, align 8
  %30 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_UC, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @BR_FLOOD, align 8
  %33 = and i64 %31, %32
  %34 = call i32 @mlxsw_sp_bridge_port_flood_table_set(%struct.mlxsw_sp_port* %28, %struct.mlxsw_sp_bridge_port* %29, i32 %30, i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %75

39:                                               ; preds = %27
  %40 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %41 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @BR_LEARNING, align 8
  %44 = and i64 %42, %43
  %45 = call i32 @mlxsw_sp_bridge_port_learning_set(%struct.mlxsw_sp_port* %40, %struct.mlxsw_sp_bridge_port* %41, i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %75

50:                                               ; preds = %39
  %51 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %10, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %71

58:                                               ; preds = %50
  %59 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %60 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %10, align 8
  %61 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_MC, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @BR_MCAST_FLOOD, align 8
  %64 = and i64 %62, %63
  %65 = call i32 @mlxsw_sp_bridge_port_flood_table_set(%struct.mlxsw_sp_port* %59, %struct.mlxsw_sp_bridge_port* %60, i32 %61, i64 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %57
  %72 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %10, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %72, i32 0, i32 0
  %74 = call i32 @memcpy(i32* %73, i64* %9, i32 8)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %68, %48, %37, %26, %15
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_port_flood_table_set(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_port*, i32, i64) #1

declare dso_local i32 @mlxsw_sp_bridge_port_learning_set(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_port*, i64) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
