; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl* }
%struct.mlxsw_sp_acl = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.mlxsw_sp_acl_profile_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_lookup(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %11 = alloca %struct.mlxsw_sp_acl*, align 8
  %12 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %14, align 8
  store %struct.mlxsw_sp_acl* %15, %struct.mlxsw_sp_acl** %11, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.mlxsw_sp_acl_profile_ops* @mlxsw_sp_acl_tcam_profile_ops(%struct.mlxsw_sp* %16, i32 %17)
  store %struct.mlxsw_sp_acl_profile_ops* %18, %struct.mlxsw_sp_acl_profile_ops** %10, align 8
  %19 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %10, align 8
  %20 = icmp ne %struct.mlxsw_sp_acl_profile_ops* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.mlxsw_sp_acl_ruleset* @ERR_PTR(i32 %23)
  store %struct.mlxsw_sp_acl_ruleset* %24, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  br label %39

25:                                               ; preds = %4
  %26 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %11, align 8
  %27 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %10, align 8
  %30 = call %struct.mlxsw_sp_acl_ruleset* @__mlxsw_sp_acl_ruleset_lookup(%struct.mlxsw_sp_acl* %26, %struct.mlxsw_sp_acl_block* %27, i32 %28, %struct.mlxsw_sp_acl_profile_ops* %29)
  store %struct.mlxsw_sp_acl_ruleset* %30, %struct.mlxsw_sp_acl_ruleset** %12, align 8
  %31 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %12, align 8
  %32 = icmp ne %struct.mlxsw_sp_acl_ruleset* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.mlxsw_sp_acl_ruleset* @ERR_PTR(i32 %35)
  store %struct.mlxsw_sp_acl_ruleset* %36, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  br label %39

37:                                               ; preds = %25
  %38 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %12, align 8
  store %struct.mlxsw_sp_acl_ruleset* %38, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  br label %39

39:                                               ; preds = %37, %33, %21
  %40 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  ret %struct.mlxsw_sp_acl_ruleset* %40
}

declare dso_local %struct.mlxsw_sp_acl_profile_ops* @mlxsw_sp_acl_tcam_profile_ops(%struct.mlxsw_sp*, i32) #1

declare dso_local %struct.mlxsw_sp_acl_ruleset* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_acl_ruleset* @__mlxsw_sp_acl_ruleset_lookup(%struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl_block*, i32, %struct.mlxsw_sp_acl_profile_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
