; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_ruleset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_ruleset = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_acl_profile_ops*, i32, %struct.mlxsw_sp_acl_block* }
%struct.mlxsw_sp.1 = type { %struct.mlxsw_sp_acl* }
%struct.mlxsw_sp_acl = type { i32, i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.mlxsw_sp_acl_profile_ops = type { i32, i32 (%struct.mlxsw_sp*, i32*, i32, %struct.mlxsw_afk_element_usage*)*, i32 (%struct.mlxsw_sp.0*, i32)* }
%struct.mlxsw_sp = type opaque
%struct.mlxsw_afk_element_usage = type opaque
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_afk_element_usage.2 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_acl_rule_ht_params = common dso_local global i32 0, align 4
@mlxsw_sp_acl_ruleset_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_ruleset* (%struct.mlxsw_sp.1*, %struct.mlxsw_sp_acl_block*, i32, %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_afk_element_usage.2*)* @mlxsw_sp_acl_ruleset_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_create(%struct.mlxsw_sp.1* %0, %struct.mlxsw_sp_acl_block* %1, i32 %2, %struct.mlxsw_sp_acl_profile_ops* %3, %struct.mlxsw_afk_element_usage.2* %4) #0 {
  %6 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %7 = alloca %struct.mlxsw_sp.1*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %11 = alloca %struct.mlxsw_afk_element_usage.2*, align 8
  %12 = alloca %struct.mlxsw_sp_acl*, align 8
  %13 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.mlxsw_sp.1* %0, %struct.mlxsw_sp.1** %7, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.mlxsw_sp_acl_profile_ops* %3, %struct.mlxsw_sp_acl_profile_ops** %10, align 8
  store %struct.mlxsw_afk_element_usage.2* %4, %struct.mlxsw_afk_element_usage.2** %11, align 8
  %16 = load %struct.mlxsw_sp.1*, %struct.mlxsw_sp.1** %7, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp.1, %struct.mlxsw_sp.1* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %17, align 8
  store %struct.mlxsw_sp_acl* %18, %struct.mlxsw_sp_acl** %12, align 8
  %19 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %10, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add i64 40, %22
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlxsw_sp_acl_ruleset* @kzalloc(i64 %24, i32 %25)
  store %struct.mlxsw_sp_acl_ruleset* %26, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %27 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %28 = icmp ne %struct.mlxsw_sp_acl_ruleset* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.mlxsw_sp_acl_ruleset* @ERR_PTR(i32 %31)
  store %struct.mlxsw_sp_acl_ruleset* %32, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  br label %102

33:                                               ; preds = %5
  %34 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %37 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store %struct.mlxsw_sp_acl_block* %36, %struct.mlxsw_sp_acl_block** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %10, align 8
  %45 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.mlxsw_sp_acl_profile_ops* %44, %struct.mlxsw_sp_acl_profile_ops** %47, align 8
  %48 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %48, i32 0, i32 1
  %50 = call i32 @rhashtable_init(i32* %49, i32* @mlxsw_sp_acl_rule_ht_params)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  br label %97

54:                                               ; preds = %33
  %55 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %10, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %55, i32 0, i32 1
  %57 = load i32 (%struct.mlxsw_sp*, i32*, i32, %struct.mlxsw_afk_element_usage*)*, i32 (%struct.mlxsw_sp*, i32*, i32, %struct.mlxsw_afk_element_usage*)** %56, align 8
  %58 = load %struct.mlxsw_sp.1*, %struct.mlxsw_sp.1** %7, align 8
  %59 = bitcast %struct.mlxsw_sp.1* %58 to %struct.mlxsw_sp*
  %60 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %12, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %60, i32 0, i32 1
  %62 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mlxsw_afk_element_usage.2*, %struct.mlxsw_afk_element_usage.2** %11, align 8
  %66 = bitcast %struct.mlxsw_afk_element_usage.2* %65 to %struct.mlxsw_afk_element_usage*
  %67 = call i32 %57(%struct.mlxsw_sp* %59, i32* %61, i32 %64, %struct.mlxsw_afk_element_usage* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %93

71:                                               ; preds = %54
  %72 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %12, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %72, i32 0, i32 0
  %74 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %74, i32 0, i32 3
  %76 = load i32, i32* @mlxsw_sp_acl_ruleset_ht_params, align 4
  %77 = call i32 @rhashtable_insert_fast(i32* %73, i32* %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %83

81:                                               ; preds = %71
  %82 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  store %struct.mlxsw_sp_acl_ruleset* %82, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  br label %102

83:                                               ; preds = %80
  %84 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %10, align 8
  %85 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %84, i32 0, i32 2
  %86 = load i32 (%struct.mlxsw_sp.0*, i32)*, i32 (%struct.mlxsw_sp.0*, i32)** %85, align 8
  %87 = load %struct.mlxsw_sp.1*, %struct.mlxsw_sp.1** %7, align 8
  %88 = bitcast %struct.mlxsw_sp.1* %87 to %struct.mlxsw_sp.0*
  %89 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %86(%struct.mlxsw_sp.0* %88, i32 %91)
  br label %93

93:                                               ; preds = %83, %70
  %94 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %94, i32 0, i32 1
  %96 = call i32 @rhashtable_destroy(i32* %95)
  br label %97

97:                                               ; preds = %93, %53
  %98 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %13, align 8
  %99 = call i32 @kfree(%struct.mlxsw_sp_acl_ruleset* %98)
  %100 = load i32, i32* %15, align 4
  %101 = call %struct.mlxsw_sp_acl_ruleset* @ERR_PTR(i32 %100)
  store %struct.mlxsw_sp_acl_ruleset* %101, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  br label %102

102:                                              ; preds = %97, %81, %29
  %103 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  ret %struct.mlxsw_sp_acl_ruleset* %103
}

declare dso_local %struct.mlxsw_sp_acl_ruleset* @kzalloc(i64, i32) #1

declare dso_local %struct.mlxsw_sp_acl_ruleset* @ERR_PTR(i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_ruleset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
