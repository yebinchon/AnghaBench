; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_entry_action_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_entry_action_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl_tcam_ops* }
%struct.mlxsw_sp_acl_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, %struct.mlxsw_sp_acl_rule_info*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_acl_rule_info = type opaque
%struct.mlxsw_sp_acl_tcam_region = type { i32 }
%struct.mlxsw_sp_acl_tcam_entry = type { i32 }
%struct.mlxsw_sp_acl_rule_info.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_rule_info.1*)* @mlxsw_sp_acl_tcam_entry_action_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_entry_action_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_region* %1, %struct.mlxsw_sp_acl_tcam_entry* %2, %struct.mlxsw_sp_acl_rule_info.1* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_entry*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_rule_info.1*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_tcam_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %1, %struct.mlxsw_sp_acl_tcam_region** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_entry* %2, %struct.mlxsw_sp_acl_tcam_entry** %7, align 8
  store %struct.mlxsw_sp_acl_rule_info.1* %3, %struct.mlxsw_sp_acl_rule_info.1** %8, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %11, align 8
  store %struct.mlxsw_sp_acl_tcam_ops* %12, %struct.mlxsw_sp_acl_tcam_ops** %9, align 8
  %13 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %9, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %13, i32 0, i32 0
  %15 = load i32 (%struct.mlxsw_sp.0*, i32, i32, %struct.mlxsw_sp_acl_rule_info*)*, i32 (%struct.mlxsw_sp.0*, i32, i32, %struct.mlxsw_sp_acl_rule_info*)** %14, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %17 = bitcast %struct.mlxsw_sp* %16 to %struct.mlxsw_sp.0*
  %18 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %7, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, %struct.mlxsw_sp_acl_tcam_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlxsw_sp_acl_rule_info.1*, %struct.mlxsw_sp_acl_rule_info.1** %8, align 8
  %25 = bitcast %struct.mlxsw_sp_acl_rule_info.1* %24 to %struct.mlxsw_sp_acl_rule_info*
  %26 = call i32 %15(%struct.mlxsw_sp.0* %17, i32 %20, i32 %23, %struct.mlxsw_sp_acl_rule_info* %25)
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
