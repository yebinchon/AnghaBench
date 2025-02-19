; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_port_vlan_router_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_port_vlan_router_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port_vlan = type { %struct.mlxsw_sp_fid*, i32, %struct.mlxsw_sp_port* }
%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

@MLXSW_SP_FID_TYPE_RFID = common dso_local global i64 0, align 8
@BR_STATE_BLOCKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_port_vlan_router_leave(%struct.mlxsw_sp_port_vlan* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca %struct.mlxsw_sp_rif*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_port_vlan* %0, %struct.mlxsw_sp_port_vlan** %2, align 8
  %7 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %7, i32 0, i32 2
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  store %struct.mlxsw_sp_port* %9, %struct.mlxsw_sp_port** %3, align 8
  %10 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %11, align 8
  store %struct.mlxsw_sp_fid* %12, %struct.mlxsw_sp_fid** %4, align 8
  %13 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %14 = call %struct.mlxsw_sp_rif* @mlxsw_sp_fid_rif(%struct.mlxsw_sp_fid* %13)
  store %struct.mlxsw_sp_rif* %14, %struct.mlxsw_sp_rif** %5, align 8
  %15 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %19 = call i64 @mlxsw_sp_fid_type(%struct.mlxsw_sp_fid* %18)
  %20 = load i64, i64* @MLXSW_SP_FID_TYPE_RFID, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %2, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %27, i32 0, i32 0
  store %struct.mlxsw_sp_fid* null, %struct.mlxsw_sp_fid** %28, align 8
  %29 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BR_STATE_BLOCKING, align 4
  %32 = call i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port* %29, i32 %30, i32 %31)
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port* %33, i32 %34, i32 1)
  %36 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %37 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mlxsw_sp_fid_port_vid_unmap(%struct.mlxsw_sp_fid* %36, %struct.mlxsw_sp_port* %37, i32 %38)
  %40 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %41 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %40)
  %42 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %43 = call i32 @mlxsw_sp_rif_subport_put(%struct.mlxsw_sp_rif* %42)
  br label %44

44:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_fid_rif(%struct.mlxsw_sp_fid*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @mlxsw_sp_fid_type(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_port_vid_unmap(%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_rif_subport_put(%struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
