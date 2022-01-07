; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c___mlxsw_sp_acl_ruleset_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c___mlxsw_sp_acl_ruleset_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp_acl = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.mlxsw_sp_acl_profile_ops = type { i32 }
%struct.mlxsw_sp_acl_ruleset_ht_key = type { %struct.mlxsw_sp_acl_profile_ops*, i32, %struct.mlxsw_sp_acl_block* }

@mlxsw_sp_acl_ruleset_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_ruleset* (%struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl_block*, i32, %struct.mlxsw_sp_acl_profile_ops*)* @__mlxsw_sp_acl_ruleset_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_ruleset* @__mlxsw_sp_acl_ruleset_lookup(%struct.mlxsw_sp_acl* %0, %struct.mlxsw_sp_acl_block* %1, i32 %2, %struct.mlxsw_sp_acl_profile_ops* %3) #0 {
  %5 = alloca %struct.mlxsw_sp_acl*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_ruleset_ht_key, align 8
  store %struct.mlxsw_sp_acl* %0, %struct.mlxsw_sp_acl** %5, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mlxsw_sp_acl_profile_ops* %3, %struct.mlxsw_sp_acl_profile_ops** %8, align 8
  %10 = call i32 @memset(%struct.mlxsw_sp_acl_ruleset_ht_key* %9, i32 0, i32 24)
  %11 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset_ht_key, %struct.mlxsw_sp_acl_ruleset_ht_key* %9, i32 0, i32 2
  store %struct.mlxsw_sp_acl_block* %11, %struct.mlxsw_sp_acl_block** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset_ht_key, %struct.mlxsw_sp_acl_ruleset_ht_key* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %8, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset_ht_key, %struct.mlxsw_sp_acl_ruleset_ht_key* %9, i32 0, i32 0
  store %struct.mlxsw_sp_acl_profile_ops* %15, %struct.mlxsw_sp_acl_profile_ops** %16, align 8
  %17 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %17, i32 0, i32 0
  %19 = load i32, i32* @mlxsw_sp_acl_ruleset_ht_params, align 4
  %20 = call %struct.mlxsw_sp_acl_ruleset* @rhashtable_lookup_fast(i32* %18, %struct.mlxsw_sp_acl_ruleset_ht_key* %9, i32 %19)
  ret %struct.mlxsw_sp_acl_ruleset* %20
}

declare dso_local i32 @memset(%struct.mlxsw_sp_acl_ruleset_ht_key*, i32, i32) #1

declare dso_local %struct.mlxsw_sp_acl_ruleset* @rhashtable_lookup_fast(i32*, %struct.mlxsw_sp_acl_ruleset_ht_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
