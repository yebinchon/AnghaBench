; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_port_vlan = type { %struct.mlxsw_sp_bridge_port* }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_port*, i32, i32, i32, %struct.netlink_ext_ack*)* @mlxsw_sp_bridge_port_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_bridge_port_vlan_add(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_bridge_port* %1, i32 %2, i32 %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %8, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @mlxsw_sp_port_pvid_determine(%struct.mlxsw_sp_port* %18, i32 %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port* %25, i32 %26)
  store %struct.mlxsw_sp_port_vlan* %27, %struct.mlxsw_sp_port_vlan** %15, align 8
  %28 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %15, align 8
  %29 = icmp ne %struct.mlxsw_sp_port_vlan* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %6
  %31 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %15, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %31, i32 0, i32 0
  %33 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %32, align 8
  %34 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %9, align 8
  %35 = icmp ne %struct.mlxsw_sp_bridge_port* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EEXIST, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %91

39:                                               ; preds = %30, %6
  %40 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %15, align 8
  %41 = icmp ne %struct.mlxsw_sp_port_vlan* %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_create(%struct.mlxsw_sp_port* %43, i32 %44)
  store %struct.mlxsw_sp_port_vlan* %45, %struct.mlxsw_sp_port_vlan** %15, align 8
  %46 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %15, align 8
  %47 = call i64 @IS_ERR(%struct.mlxsw_sp_port_vlan* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %15, align 8
  %51 = call i32 @PTR_ERR(%struct.mlxsw_sp_port_vlan* %50)
  store i32 %51, i32* %7, align 4
  br label %91

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port* %54, i32 %55, i32 %56, i32 1, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %87

62:                                               ; preds = %53
  %63 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @mlxsw_sp_port_pvid_set(%struct.mlxsw_sp_port* %63, i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %82

69:                                               ; preds = %62
  %70 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %15, align 8
  %71 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %9, align 8
  %72 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %73 = call i32 @mlxsw_sp_port_vlan_bridge_join(%struct.mlxsw_sp_port_vlan* %70, %struct.mlxsw_sp_bridge_port* %71, %struct.netlink_ext_ack* %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %78

77:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %91

78:                                               ; preds = %76
  %79 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @mlxsw_sp_port_pvid_set(%struct.mlxsw_sp_port* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %68
  %83 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port* %83, i32 %84, i32 %85, i32 0, i32 0)
  br label %87

87:                                               ; preds = %82, %61
  %88 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %15, align 8
  %89 = call i32 @mlxsw_sp_port_vlan_destroy(%struct.mlxsw_sp_port_vlan* %88)
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %87, %77, %49, %36
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @mlxsw_sp_port_pvid_determine(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_vid(%struct.mlxsw_sp_port*, i32) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_create(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_port_vlan*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_port_vlan*) #1

declare dso_local i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_pvid_set(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_bridge_join(%struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_bridge_port*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_port_vlan_destroy(%struct.mlxsw_sp_port_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
