; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vchunk_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vchunk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_tcam_vchunk = type { i32, i32, i32, i32, %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vgroup*, i32 }
%struct.mlxsw_sp_acl_tcam_vregion = type { i32, i32, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_vgroup = type { i32 }
%struct.mlxsw_afk_element_usage = type { i32 }

@MLXSW_SP_ACL_TCAM_CATCHALL_PRIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_acl_tcam_vchunk_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_tcam_vchunk* (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, i32, %struct.mlxsw_afk_element_usage*)* @mlxsw_sp_acl_tcam_vchunk_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_tcam_vchunk* @mlxsw_sp_acl_tcam_vchunk_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vgroup* %1, i32 %2, %struct.mlxsw_afk_element_usage* %3) #0 {
  %5 = alloca %struct.mlxsw_sp_acl_tcam_vchunk*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_vgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  %11 = alloca %struct.mlxsw_sp_acl_tcam_vchunk*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_vgroup* %1, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlxsw_afk_element_usage* %3, %struct.mlxsw_afk_element_usage** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MLXSW_SP_ACL_TCAM_CATCHALL_PRIO, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.mlxsw_sp_acl_tcam_vchunk* @ERR_PTR(i32 %18)
  store %struct.mlxsw_sp_acl_tcam_vchunk* %19, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  br label %120

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mlxsw_sp_acl_tcam_vchunk* @kzalloc(i32 48, i32 %21)
  store %struct.mlxsw_sp_acl_tcam_vchunk* %22, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %23 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %24 = icmp ne %struct.mlxsw_sp_acl_tcam_vchunk* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.mlxsw_sp_acl_tcam_vchunk* @ERR_PTR(i32 %27)
  store %struct.mlxsw_sp_acl_tcam_vchunk* %28, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  br label %120

29:                                               ; preds = %20
  %30 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %30, i32 0, i32 7
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %37 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %37, i32 0, i32 6
  store %struct.mlxsw_sp_acl_tcam_vgroup* %36, %struct.mlxsw_sp_acl_tcam_vgroup** %38, align 8
  %39 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %42 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %9, align 8
  %45 = call %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_vregion_get(%struct.mlxsw_sp* %41, %struct.mlxsw_sp_acl_tcam_vgroup* %42, i32 %43, %struct.mlxsw_afk_element_usage* %44)
  store %struct.mlxsw_sp_acl_tcam_vregion* %45, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %46 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %47 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_vregion* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %51 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_vregion* %50)
  store i32 %51, i32* %12, align 4
  br label %115

52:                                               ; preds = %29
  %53 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %54 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %54, i32 0, i32 5
  store %struct.mlxsw_sp_acl_tcam_vregion* %53, %struct.mlxsw_sp_acl_tcam_vregion** %55, align 8
  %56 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %56, i32 0, i32 0
  %58 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %58, i32 0, i32 2
  %60 = load i32, i32* @mlxsw_sp_acl_tcam_vchunk_ht_params, align 4
  %61 = call i32 @rhashtable_insert_fast(i32* %57, i32* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %111

65:                                               ; preds = %52
  %66 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %70 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %71 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %71, i32 0, i32 5
  %73 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %72, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_chunk_create(%struct.mlxsw_sp* %69, %struct.mlxsw_sp_acl_tcam_vchunk* %70, i32 %75)
  %77 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %77, i32 0, i32 4
  store %struct.mlxsw_sp_acl_tcam_vregion* %76, %struct.mlxsw_sp_acl_tcam_vregion** %78, align 8
  %79 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %79, i32 0, i32 4
  %81 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %80, align 8
  %82 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_vregion* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %65
  %85 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %89 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %88, i32 0, i32 4
  %90 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_vregion* %90)
  store i32 %91, i32* %12, align 4
  br label %104

92:                                               ; preds = %65
  %93 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %94 = call i32 @mlxsw_sp_acl_tcam_rehash_ctx_vregion_changed(%struct.mlxsw_sp_acl_tcam_vregion* %93)
  %95 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %96 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %95, i32 0, i32 3
  %97 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %97, i32 0, i32 1
  %99 = call i32 @list_add_tail(i32* %96, i32* %98)
  %100 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  store %struct.mlxsw_sp_acl_tcam_vchunk* %103, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  br label %120

104:                                              ; preds = %84
  %105 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %106 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %105, i32 0, i32 0
  %107 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %108 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %107, i32 0, i32 2
  %109 = load i32, i32* @mlxsw_sp_acl_tcam_vchunk_ht_params, align 4
  %110 = call i32 @rhashtable_remove_fast(i32* %106, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %64
  %112 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %113 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %114 = call i32 @mlxsw_sp_acl_tcam_vregion_put(%struct.mlxsw_sp* %112, %struct.mlxsw_sp_acl_tcam_vregion* %113)
  br label %115

115:                                              ; preds = %111, %49
  %116 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %117 = call i32 @kfree(%struct.mlxsw_sp_acl_tcam_vchunk* %116)
  %118 = load i32, i32* %12, align 4
  %119 = call %struct.mlxsw_sp_acl_tcam_vchunk* @ERR_PTR(i32 %118)
  store %struct.mlxsw_sp_acl_tcam_vchunk* %119, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  br label %120

120:                                              ; preds = %115, %92, %25, %16
  %121 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  ret %struct.mlxsw_sp_acl_tcam_vchunk* %121
}

declare dso_local %struct.mlxsw_sp_acl_tcam_vchunk* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vchunk* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_vregion_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, i32, %struct.mlxsw_afk_element_usage*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_vregion*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_vregion*) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_chunk_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vchunk*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_rehash_ctx_vregion_changed(%struct.mlxsw_sp_acl_tcam_vregion*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vregion_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vregion*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_tcam_vchunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
