; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_fdb_clear_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_fdb_clear_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { %struct.mlxsw_sp_fid_ops* }
%struct.mlxsw_sp_fid_ops = type { i32 (%struct.mlxsw_sp_fid.0*, %struct.net_device*)* }
%struct.mlxsw_sp_fid.0 = type opaque
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_fid_fdb_clear_offload(%struct.mlxsw_sp_fid* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_fid*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %6 = alloca %struct.mlxsw_sp_fid_ops*, align 8
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %7, i32 0, i32 0
  %9 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  store %struct.mlxsw_sp_fid_family* %9, %struct.mlxsw_sp_fid_family** %5, align 8
  %10 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %11, align 8
  store %struct.mlxsw_sp_fid_ops* %12, %struct.mlxsw_sp_fid_ops** %6, align 8
  %13 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %13, i32 0, i32 0
  %15 = load i32 (%struct.mlxsw_sp_fid.0*, %struct.net_device*)*, i32 (%struct.mlxsw_sp_fid.0*, %struct.net_device*)** %14, align 8
  %16 = icmp ne i32 (%struct.mlxsw_sp_fid.0*, %struct.net_device*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.mlxsw_sp_fid.0*, %struct.net_device*)*, i32 (%struct.mlxsw_sp_fid.0*, %struct.net_device*)** %19, align 8
  %21 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %22 = bitcast %struct.mlxsw_sp_fid* %21 to %struct.mlxsw_sp_fid.0*
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 %20(%struct.mlxsw_sp_fid.0* %22, %struct.net_device* %23)
  br label %25

25:                                               ; preds = %17, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
