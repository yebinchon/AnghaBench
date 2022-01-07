; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, i32, %struct.mlxsw_sp_acl* }
%struct.mlxsw_sp_acl = type { i32, i32, %struct.TYPE_2__, i32, i32, %struct.mlxsw_sp_fid*, %struct.mlxsw_sp* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlxsw_sp_fid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACL_FLEX_KEYS = common dso_local global i32 0, align 4
@mlxsw_sp_acl_ruleset_ht_params = common dso_local global i32 0, align 4
@mlxsw_sp_acl_rule_activity_update_work = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_RULE_ACTIVITY_UPDATE_PERIOD_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca %struct.mlxsw_sp_acl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = call i32 @mlxsw_sp_acl_tcam_priv_size(%struct.mlxsw_sp* %8)
  %10 = sext i32 %9 to i64
  %11 = add i64 40, %10
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlxsw_sp_acl* @kzalloc(i64 %12, i32 %13)
  store %struct.mlxsw_sp_acl* %14, %struct.mlxsw_sp_acl** %5, align 8
  %15 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %16 = icmp ne %struct.mlxsw_sp_acl* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %105

20:                                               ; preds = %1
  %21 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 2
  store %struct.mlxsw_sp_acl* %21, %struct.mlxsw_sp_acl** %23, align 8
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %25 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %25, i32 0, i32 6
  store %struct.mlxsw_sp* %24, %struct.mlxsw_sp** %26, align 8
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ACL_FLEX_KEYS, align 4
  %31 = call i32 @MLXSW_CORE_RES_GET(i32 %29, i32 %30)
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mlxsw_afk_create(i32 %31, i32 %34)
  %36 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %20
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %101

45:                                               ; preds = %20
  %46 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %46, i32 0, i32 1
  %48 = call i32 @rhashtable_init(i32* %47, i32* @mlxsw_sp_acl_ruleset_ht_params)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %96

52:                                               ; preds = %45
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %54 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_dummy_get(%struct.mlxsw_sp* %53)
  store %struct.mlxsw_sp_fid* %54, %struct.mlxsw_sp_fid** %4, align 8
  %55 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %56 = call i64 @IS_ERR(%struct.mlxsw_sp_fid* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %60 = call i32 @PTR_ERR(%struct.mlxsw_sp_fid* %59)
  store i32 %60, i32* %7, align 4
  br label %92

61:                                               ; preds = %52
  %62 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %63 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %63, i32 0, i32 5
  store %struct.mlxsw_sp_fid* %62, %struct.mlxsw_sp_fid** %64, align 8
  %65 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %65, i32 0, i32 4
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %69 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %69, i32 0, i32 3
  %71 = call i32 @mlxsw_sp_acl_tcam_init(%struct.mlxsw_sp* %68, i32* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %89

75:                                               ; preds = %61
  %76 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* @mlxsw_sp_acl_rule_activity_update_work, align 4
  %80 = call i32 @INIT_DELAYED_WORK(i32* %78, i32 %79)
  %81 = load i32, i32* @MLXSW_SP_ACL_RULE_ACTIVITY_UPDATE_PERIOD_MS, align 4
  %82 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @mlxsw_core_schedule_dw(i32* %87, i32 0)
  store i32 0, i32* %2, align 4
  br label %105

89:                                               ; preds = %74
  %90 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %91 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %90)
  br label %92

92:                                               ; preds = %89, %58
  %93 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %93, i32 0, i32 1
  %95 = call i32 @rhashtable_destroy(i32* %94)
  br label %96

96:                                               ; preds = %92, %51
  %97 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @mlxsw_afk_destroy(i32 %99)
  br label %101

101:                                              ; preds = %96, %42
  %102 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %5, align 8
  %103 = call i32 @kfree(%struct.mlxsw_sp_acl* %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %75, %17
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @mlxsw_sp_acl_tcam_priv_size(%struct.mlxsw_sp*) #1

declare dso_local %struct.mlxsw_sp_acl* @kzalloc(i64, i32) #1

declare dso_local i32 @mlxsw_afk_create(i32, i32) #1

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_dummy_get(%struct.mlxsw_sp*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_init(%struct.mlxsw_sp*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mlxsw_core_schedule_dw(i32*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @mlxsw_afk_destroy(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
