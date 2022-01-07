; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_ventry_action_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_ventry_action_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_ventry = type { i32, %struct.mlxsw_sp_acl_tcam_vchunk* }
%struct.mlxsw_sp_acl_tcam_vchunk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_rule_info*)* @mlxsw_sp_acl_tcam_ventry_action_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_ventry_action_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_ventry* %1, %struct.mlxsw_sp_acl_rule_info* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_tcam_ventry*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_vchunk*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_tcam_ventry* %1, %struct.mlxsw_sp_acl_tcam_ventry** %5, align 8
  store %struct.mlxsw_sp_acl_rule_info* %2, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %8 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %5, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %8, i32 0, i32 1
  %10 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %9, align 8
  store %struct.mlxsw_sp_acl_tcam_vchunk* %10, %struct.mlxsw_sp_acl_tcam_vchunk** %7, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %12 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %7, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %21 = call i32 @mlxsw_sp_acl_tcam_entry_action_replace(%struct.mlxsw_sp* %11, i32 %16, i32 %19, %struct.mlxsw_sp_acl_rule_info* %20)
  ret i32 %21
}

declare dso_local i32 @mlxsw_sp_acl_tcam_entry_action_replace(%struct.mlxsw_sp*, i32, i32, %struct.mlxsw_sp_acl_rule_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
