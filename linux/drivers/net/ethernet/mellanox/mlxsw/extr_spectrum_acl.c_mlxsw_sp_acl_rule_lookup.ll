; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_rule = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { i32 }

@mlxsw_sp_acl_rule_ht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_lookup(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_ruleset* %1, i64 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %6 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_ruleset* %1, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %7, i32 0, i32 0
  %9 = load i32, i32* @mlxsw_sp_acl_rule_ht_params, align 4
  %10 = call %struct.mlxsw_sp_acl_rule* @rhashtable_lookup_fast(i32* %8, i64* %6, i32 %9)
  ret %struct.mlxsw_sp_acl_rule* %10
}

declare dso_local %struct.mlxsw_sp_acl_rule* @rhashtable_lookup_fast(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
