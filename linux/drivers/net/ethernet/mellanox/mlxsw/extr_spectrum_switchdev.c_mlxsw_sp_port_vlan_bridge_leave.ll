; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlan_bridge_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlan_bridge_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port_vlan = type { %struct.mlxsw_sp_bridge_port*, i32, i32, %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port* }
%struct.mlxsw_sp_bridge_port = type { i32 }
%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_bridge_vlan = type { i32 }

@MLXSW_SP_FID_TYPE_8021Q = common dso_local global i64 0, align 8
@MLXSW_SP_FID_TYPE_8021D = common dso_local global i64 0, align 8
@BR_STATE_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_port_vlan_bridge_leave(%struct.mlxsw_sp_port_vlan* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca %struct.mlxsw_sp_bridge_vlan*, align 8
  %6 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp_port_vlan* %0, %struct.mlxsw_sp_port_vlan** %2, align 8
  %10 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %10, i32 0, i32 4
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  store %struct.mlxsw_sp_port* %12, %struct.mlxsw_sp_port** %3, align 8
  %13 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %13, i32 0, i32 3
  %15 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %14, align 8
  store %struct.mlxsw_sp_fid* %15, %struct.mlxsw_sp_fid** %4, align 8
  %16 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %20 = call i64 @mlxsw_sp_fid_type(%struct.mlxsw_sp_fid* %19)
  %21 = load i64, i64* @MLXSW_SP_FID_TYPE_8021Q, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %25 = call i64 @mlxsw_sp_fid_type(%struct.mlxsw_sp_fid* %24)
  %26 = load i64, i64* @MLXSW_SP_FID_TYPE_8021D, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %23, %1
  %29 = phi i1 [ false, %1 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %88

34:                                               ; preds = %28
  %35 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %35, i32 0, i32 0
  %37 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %36, align 8
  store %struct.mlxsw_sp_bridge_port* %37, %struct.mlxsw_sp_bridge_port** %6, align 8
  %38 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %38, i32 0, i32 0
  %40 = call i32 @list_is_singular(i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.mlxsw_sp_bridge_vlan* @mlxsw_sp_bridge_vlan_find(%struct.mlxsw_sp_bridge_port* %41, i32 %42)
  store %struct.mlxsw_sp_bridge_vlan* %43, %struct.mlxsw_sp_bridge_vlan** %5, align 8
  %44 = load %struct.mlxsw_sp_bridge_vlan*, %struct.mlxsw_sp_bridge_vlan** %5, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, %struct.mlxsw_sp_bridge_vlan* %44, i32 0, i32 0
  %46 = call i32 @list_is_singular(i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %47, i32 0, i32 1
  %49 = call i32 @list_del(i32* %48)
  %50 = load %struct.mlxsw_sp_bridge_vlan*, %struct.mlxsw_sp_bridge_vlan** %5, align 8
  %51 = call i32 @mlxsw_sp_bridge_vlan_put(%struct.mlxsw_sp_bridge_vlan* %50)
  %52 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @BR_STATE_DISABLED, align 4
  %55 = call i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port* %52, i32 %53, i32 %54)
  %56 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port* %56, i32 %57, i32 0)
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %34
  %62 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %66 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %67 = call i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid* %66)
  %68 = call i32 @mlxsw_sp_bridge_port_fdb_flush(%struct.TYPE_2__* %64, %struct.mlxsw_sp_bridge_port* %65, i32 %67)
  br label %69

69:                                               ; preds = %61, %34
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %74 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %75 = call i32 @mlxsw_sp_bridge_port_mdb_flush(%struct.mlxsw_sp_port* %73, %struct.mlxsw_sp_bridge_port* %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %78 = call i32 @mlxsw_sp_port_vlan_fid_leave(%struct.mlxsw_sp_port_vlan* %77)
  %79 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %85 = call i32 @mlxsw_sp_bridge_port_put(i32 %83, %struct.mlxsw_sp_bridge_port* %84)
  %86 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %86, i32 0, i32 0
  store %struct.mlxsw_sp_bridge_port* null, %struct.mlxsw_sp_bridge_port** %87, align 8
  br label %88

88:                                               ; preds = %76, %33
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @mlxsw_sp_fid_type(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @list_is_singular(i32*) #1

declare dso_local %struct.mlxsw_sp_bridge_vlan* @mlxsw_sp_bridge_vlan_find(%struct.mlxsw_sp_bridge_port*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlxsw_sp_bridge_vlan_put(%struct.mlxsw_sp_bridge_vlan*) #1

declare dso_local i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_bridge_port_fdb_flush(%struct.TYPE_2__*, %struct.mlxsw_sp_bridge_port*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_bridge_port_mdb_flush(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_port*) #1

declare dso_local i32 @mlxsw_sp_port_vlan_fid_leave(%struct.mlxsw_sp_port_vlan*) #1

declare dso_local i32 @mlxsw_sp_bridge_port_put(i32, %struct.mlxsw_sp_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
