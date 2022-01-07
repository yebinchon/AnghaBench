; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c___mlxsw_sp_port_mdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c___mlxsw_sp_port_mdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mlxsw_sp_mid = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unable to remove port from SMID\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to remove MC SFD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_mid*)* @__mlxsw_sp_port_mdb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_port_mdb_del(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_mid* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %6 = alloca %struct.mlxsw_sp_mid*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %5, align 8
  store %struct.mlxsw_sp_mid* %2, %struct.mlxsw_sp_mid** %6, align 8
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %5, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %25 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %6, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mlxsw_sp_port_smid_set(%struct.mlxsw_sp_port* %24, i32 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call i32 @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %23
  br label %35

35:                                               ; preds = %34, %18, %3
  %36 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %37 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %6, align 8
  %38 = call i32 @mlxsw_sp_port_remove_from_mid(%struct.mlxsw_sp_port* %36, %struct.mlxsw_sp_mid* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = call i32 @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @mlxsw_sp_port_smid_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mlxsw_sp_port_remove_from_mid(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_mid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
