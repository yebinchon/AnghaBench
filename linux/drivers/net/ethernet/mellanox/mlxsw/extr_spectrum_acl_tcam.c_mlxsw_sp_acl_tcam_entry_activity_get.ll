; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_entry_activity_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_entry_activity_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl_tcam_ops* }
%struct.mlxsw_sp_acl_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, i32*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_acl_tcam_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_entry*, i32*)* @mlxsw_sp_acl_tcam_entry_activity_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_entry_activity_get(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_tcam_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_tcam_entry* %1, %struct.mlxsw_sp_acl_tcam_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %9, align 8
  store %struct.mlxsw_sp_acl_tcam_ops* %10, %struct.mlxsw_sp_acl_tcam_ops** %7, align 8
  %11 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %7, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %11, i32 0, i32 0
  %13 = load i32 (%struct.mlxsw_sp.0*, i32, i32, i32*)*, i32 (%struct.mlxsw_sp.0*, i32, i32, i32*)** %12, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %15 = bitcast %struct.mlxsw_sp* %14 to %struct.mlxsw_sp.0*
  %16 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, %struct.mlxsw_sp_acl_tcam_entry* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, %struct.mlxsw_sp_acl_tcam_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 %13(%struct.mlxsw_sp.0* %15, i32 %22, i32 %25, i32* %26)
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
