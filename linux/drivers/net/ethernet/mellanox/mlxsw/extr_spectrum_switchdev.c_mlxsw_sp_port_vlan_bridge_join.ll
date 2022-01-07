; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlan_bridge_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlan_bridge_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port_vlan = type { %struct.mlxsw_sp_bridge_port*, i32, i32, %struct.mlxsw_sp_port* }
%struct.mlxsw_sp_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_bridge_vlan = type { i32 }

@BR_LEARNING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_bridge_port*, %struct.netlink_ext_ack*)* @mlxsw_sp_port_vlan_bridge_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_vlan_bridge_join(%struct.mlxsw_sp_port_vlan* %0, %struct.mlxsw_sp_bridge_port* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %6 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca %struct.mlxsw_sp_bridge_vlan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp_port_vlan* %0, %struct.mlxsw_sp_port_vlan** %5, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %12, i32 0, i32 3
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %13, align 8
  store %struct.mlxsw_sp_port* %14, %struct.mlxsw_sp_port** %8, align 8
  %15 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %18, i32 0, i32 0
  %20 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %19, align 8
  %21 = icmp ne %struct.mlxsw_sp_bridge_port* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %25 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %27 = call i32 @mlxsw_sp_port_vlan_fid_join(%struct.mlxsw_sp_port_vlan* %24, %struct.mlxsw_sp_bridge_port* %25, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %94

32:                                               ; preds = %23
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BR_LEARNING, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port* %33, i32 %34, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %90

44:                                               ; preds = %32
  %45 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port* %45, i32 %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %86

54:                                               ; preds = %44
  %55 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.mlxsw_sp_bridge_vlan* @mlxsw_sp_bridge_vlan_get(%struct.mlxsw_sp_bridge_port* %55, i32 %56)
  store %struct.mlxsw_sp_bridge_vlan* %57, %struct.mlxsw_sp_bridge_vlan** %9, align 8
  %58 = load %struct.mlxsw_sp_bridge_vlan*, %struct.mlxsw_sp_bridge_vlan** %9, align 8
  %59 = icmp ne %struct.mlxsw_sp_bridge_vlan* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %81

63:                                               ; preds = %54
  %64 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %64, i32 0, i32 1
  %66 = load %struct.mlxsw_sp_bridge_vlan*, %struct.mlxsw_sp_bridge_vlan** %9, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, %struct.mlxsw_sp_bridge_vlan* %66, i32 0, i32 0
  %68 = call i32 @list_add(i32* %65, i32* %67)
  %69 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mlxsw_sp_bridge_port_get(i32 %73, i32 %76)
  %78 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %79 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %79, i32 0, i32 0
  store %struct.mlxsw_sp_bridge_port* %78, %struct.mlxsw_sp_bridge_port** %80, align 8
  store i32 0, i32* %4, align 4
  br label %94

81:                                               ; preds = %60
  %82 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @BR_STATE_DISABLED, align 4
  %85 = call i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %53
  %87 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port* %87, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %86, %43
  %91 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %92 = call i32 @mlxsw_sp_port_vlan_fid_leave(%struct.mlxsw_sp_port_vlan* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %63, %30, %22
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @mlxsw_sp_port_vlan_fid_join(%struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_bridge_port*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local %struct.mlxsw_sp_bridge_vlan* @mlxsw_sp_bridge_vlan_get(%struct.mlxsw_sp_bridge_port*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_bridge_port_get(i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_fid_leave(%struct.mlxsw_sp_port_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
