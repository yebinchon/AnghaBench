; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i64 }
%struct.mlxsw_sp_bridge_port = type { i32 }
%struct.mlxsw_sp_port_vlan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_port*, i64)* @mlxsw_sp_bridge_port_vlan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_bridge_port_vlan_del(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_bridge_port* %1, i64 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i64 [ 0, %14 ], [ %18, %15 ]
  store i64 %20, i64* %7, align 8
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port* %21, i64 %22)
  store %struct.mlxsw_sp_port_vlan* %23, %struct.mlxsw_sp_port_vlan** %8, align 8
  %24 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %8, align 8
  %25 = icmp ne %struct.mlxsw_sp_port_vlan* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %43

31:                                               ; preds = %19
  %32 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %8, align 8
  %33 = call i32 @mlxsw_sp_port_vlan_bridge_leave(%struct.mlxsw_sp_port_vlan* %32)
  %34 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @mlxsw_sp_port_pvid_set(%struct.mlxsw_sp_port* %34, i64 %35)
  %37 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port* %37, i64 %38, i64 %39, i32 0, i32 0)
  %41 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %8, align 8
  %42 = call i32 @mlxsw_sp_port_vlan_destroy(%struct.mlxsw_sp_port_vlan* %41)
  br label %43

43:                                               ; preds = %31, %30
  ret void
}

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_bridge_leave(%struct.mlxsw_sp_port_vlan*) #1

declare dso_local i32 @mlxsw_sp_port_pvid_set(%struct.mlxsw_sp_port*, i64) #1

declare dso_local i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port*, i64, i64, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_destroy(%struct.mlxsw_sp_port_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
