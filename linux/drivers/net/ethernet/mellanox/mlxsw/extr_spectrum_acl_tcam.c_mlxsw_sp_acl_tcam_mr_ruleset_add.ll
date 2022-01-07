; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_mr_ruleset_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_mr_ruleset_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam = type { i32 }
%struct.mlxsw_afk_element_usage = type { i32 }
%struct.mlxsw_sp_acl_tcam_mr_ruleset = type { i32, i32 }

@mlxsw_sp_acl_tcam_patterns = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_TCAM_PATTERNS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam*, i8*, %struct.mlxsw_afk_element_usage*)* @mlxsw_sp_acl_tcam_mr_ruleset_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_mr_ruleset_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam* %1, i8* %2, %struct.mlxsw_afk_element_usage* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam_mr_ruleset*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_tcam* %1, %struct.mlxsw_sp_acl_tcam** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.mlxsw_afk_element_usage* %3, %struct.mlxsw_afk_element_usage** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.mlxsw_sp_acl_tcam_mr_ruleset*
  store %struct.mlxsw_sp_acl_tcam_mr_ruleset* %13, %struct.mlxsw_sp_acl_tcam_mr_ruleset** %10, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %15 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %7, align 8
  %16 = load %struct.mlxsw_sp_acl_tcam_mr_ruleset*, %struct.mlxsw_sp_acl_tcam_mr_ruleset** %10, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, %struct.mlxsw_sp_acl_tcam_mr_ruleset* %16, i32 0, i32 0
  %18 = load i32, i32* @mlxsw_sp_acl_tcam_patterns, align 4
  %19 = load i32, i32* @MLXSW_SP_ACL_TCAM_PATTERNS_COUNT, align 4
  %20 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %9, align 8
  %21 = call i32 @mlxsw_sp_acl_tcam_vgroup_add(%struct.mlxsw_sp* %14, %struct.mlxsw_sp_acl_tcam* %15, i32* %17, i32 %18, i32 %19, %struct.mlxsw_afk_element_usage* %20, i32 0)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %4
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %28 = load %struct.mlxsw_sp_acl_tcam_mr_ruleset*, %struct.mlxsw_sp_acl_tcam_mr_ruleset** %10, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, %struct.mlxsw_sp_acl_tcam_mr_ruleset* %28, i32 0, i32 0
  %30 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %9, align 8
  %31 = call i32 @mlxsw_sp_acl_tcam_vchunk_get(%struct.mlxsw_sp* %27, i32* %29, i32 1, %struct.mlxsw_afk_element_usage* %30)
  %32 = load %struct.mlxsw_sp_acl_tcam_mr_ruleset*, %struct.mlxsw_sp_acl_tcam_mr_ruleset** %10, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, %struct.mlxsw_sp_acl_tcam_mr_ruleset* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mlxsw_sp_acl_tcam_mr_ruleset*, %struct.mlxsw_sp_acl_tcam_mr_ruleset** %10, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, %struct.mlxsw_sp_acl_tcam_mr_ruleset* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.mlxsw_sp_acl_tcam_mr_ruleset*, %struct.mlxsw_sp_acl_tcam_mr_ruleset** %10, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, %struct.mlxsw_sp_acl_tcam_mr_ruleset* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %11, align 4
  br label %45

44:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %50

45:                                               ; preds = %39
  %46 = load %struct.mlxsw_sp_acl_tcam_mr_ruleset*, %struct.mlxsw_sp_acl_tcam_mr_ruleset** %10, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, %struct.mlxsw_sp_acl_tcam_mr_ruleset* %46, i32 0, i32 0
  %48 = call i32 @mlxsw_sp_acl_tcam_vgroup_del(i32* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %44, %24
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @mlxsw_sp_acl_tcam_vgroup_add(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam*, i32*, i32, i32, %struct.mlxsw_afk_element_usage*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vchunk_get(%struct.mlxsw_sp*, i32*, i32, %struct.mlxsw_afk_element_usage*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vgroup_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
