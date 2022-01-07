; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl* }
%struct.mlxsw_sp_acl = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.mlxsw_afk_element_usage = type { i32 }
%struct.mlxsw_sp_acl_profile_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_get(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, i32 %2, i32 %3, %struct.mlxsw_afk_element_usage* %4) #0 {
  %6 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %12 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %13 = alloca %struct.mlxsw_sp_acl*, align 8
  %14 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mlxsw_afk_element_usage* %4, %struct.mlxsw_afk_element_usage** %11, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %16, align 8
  store %struct.mlxsw_sp_acl* %17, %struct.mlxsw_sp_acl** %13, align 8
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.mlxsw_sp_acl_profile_ops* @mlxsw_sp_acl_tcam_profile_ops(%struct.mlxsw_sp* %18, i32 %19)
  store %struct.mlxsw_sp_acl_profile_ops* %20, %struct.mlxsw_sp_acl_profile_ops** %12, align 8
  %21 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %12, align 8
  %22 = icmp ne %struct.mlxsw_sp_acl_profile_ops* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.mlxsw_sp_acl_ruleset* @ERR_PTR(i32 %25)
  store %struct.mlxsw_sp_acl_ruleset* %26, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  br label %46

27:                                               ; preds = %5
  %28 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %13, align 8
  %29 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %12, align 8
  %32 = call %struct.mlxsw_sp_acl_ruleset* @__mlxsw_sp_acl_ruleset_lookup(%struct.mlxsw_sp_acl* %28, %struct.mlxsw_sp_acl_block* %29, i32 %30, %struct.mlxsw_sp_acl_profile_ops* %31)
  store %struct.mlxsw_sp_acl_ruleset* %32, %struct.mlxsw_sp_acl_ruleset** %14, align 8
  %33 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %14, align 8
  %34 = icmp ne %struct.mlxsw_sp_acl_ruleset* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %14, align 8
  %37 = call i32 @mlxsw_sp_acl_ruleset_ref_inc(%struct.mlxsw_sp_acl_ruleset* %36)
  %38 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %14, align 8
  store %struct.mlxsw_sp_acl_ruleset* %38, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %41 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %12, align 8
  %44 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %11, align 8
  %45 = call %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_create(%struct.mlxsw_sp* %40, %struct.mlxsw_sp_acl_block* %41, i32 %42, %struct.mlxsw_sp_acl_profile_ops* %43, %struct.mlxsw_afk_element_usage* %44)
  store %struct.mlxsw_sp_acl_ruleset* %45, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  br label %46

46:                                               ; preds = %39, %35, %23
  %47 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  ret %struct.mlxsw_sp_acl_ruleset* %47
}

declare dso_local %struct.mlxsw_sp_acl_profile_ops* @mlxsw_sp_acl_tcam_profile_ops(%struct.mlxsw_sp*, i32) #1

declare dso_local %struct.mlxsw_sp_acl_ruleset* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_acl_ruleset* @__mlxsw_sp_acl_ruleset_lookup(%struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl_block*, i32, %struct.mlxsw_sp_acl_profile_ops*) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_ref_inc(%struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, i32, %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_afk_element_usage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
