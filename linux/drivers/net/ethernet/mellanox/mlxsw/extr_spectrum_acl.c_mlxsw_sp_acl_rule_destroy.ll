; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_rule = type { i32, %struct.mlxsw_sp_acl_ruleset* }
%struct.mlxsw_sp_acl_ruleset = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_acl_rule_destroy(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_rule* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_acl_rule* %1, %struct.mlxsw_sp_acl_rule** %4, align 8
  %6 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %4, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %6, i32 0, i32 1
  %8 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  store %struct.mlxsw_sp_acl_ruleset* %8, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %9 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mlxsw_sp_acl_rulei_destroy(i32 %11)
  %13 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %4, align 8
  %14 = call i32 @kfree(%struct.mlxsw_sp_acl_rule* %13)
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %16 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %17 = call i32 @mlxsw_sp_acl_ruleset_ref_dec(%struct.mlxsw_sp* %15, %struct.mlxsw_sp_acl_ruleset* %16)
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_rulei_destroy(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_ref_dec(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
