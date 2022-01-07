; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_action_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_action_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_rule = type { i32, i32, %struct.mlxsw_sp_acl_ruleset* }
%struct.mlxsw_sp_acl_ruleset = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_acl_profile_ops* }
%struct.mlxsw_sp_acl_profile_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_afa_block = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { %struct.mlxsw_afa_block* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_rule_action_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_rule* %1, %struct.mlxsw_afa_block* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %6 = alloca %struct.mlxsw_afa_block*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_rule* %1, %struct.mlxsw_sp_acl_rule** %5, align 8
  store %struct.mlxsw_afa_block* %2, %struct.mlxsw_afa_block** %6, align 8
  %10 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %10, i32 0, i32 2
  %12 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %11, align 8
  store %struct.mlxsw_sp_acl_ruleset* %12, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  %13 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %15, align 8
  store %struct.mlxsw_sp_acl_profile_ops* %16, %struct.mlxsw_sp_acl_profile_ops** %8, align 8
  %17 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %18 = call %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rule_rulei(%struct.mlxsw_sp_acl_rule* %17)
  store %struct.mlxsw_sp_acl_rule_info* %18, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %19 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %6, align 8
  %20 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %20, i32 0, i32 0
  store %struct.mlxsw_afa_block* %19, %struct.mlxsw_afa_block** %21, align 8
  %22 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %22, i32 0, i32 0
  %24 = load i32 (%struct.mlxsw_sp.0*, i32, i32)*, i32 (%struct.mlxsw_sp.0*, i32, i32)** %23, align 8
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %26 = bitcast %struct.mlxsw_sp* %25 to %struct.mlxsw_sp.0*
  %27 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %24(%struct.mlxsw_sp.0* %26, i32 %29, i32 %32)
  ret i32 %33
}

declare dso_local %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rule_rulei(%struct.mlxsw_sp_acl_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
