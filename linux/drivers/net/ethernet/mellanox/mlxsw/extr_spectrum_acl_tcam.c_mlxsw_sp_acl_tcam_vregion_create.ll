; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_tcam_vregion = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_acl_tcam = type { i32, i32 }
%struct.mlxsw_sp = type { i32, %struct.mlxsw_sp_acl_tcam_ops* }
%struct.mlxsw_sp_acl_tcam_ops = type { i64 }
%struct.mlxsw_sp_acl_tcam_vgroup = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_acl_tcam* }
%struct.mlxsw_afk_element_usage = type { i32 }
%struct.mlxsw_afk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_acl_tcam_vregion_rehash_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_tcam_vregion* (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, i32, %struct.mlxsw_afk_element_usage*)* @mlxsw_sp_acl_tcam_vregion_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_tcam_vregion* @mlxsw_sp_acl_tcam_vregion_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vgroup* %1, i32 %2, %struct.mlxsw_afk_element_usage* %3) #0 {
  %5 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_vgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam_ops*, align 8
  %11 = alloca %struct.mlxsw_afk*, align 8
  %12 = alloca %struct.mlxsw_sp_acl_tcam*, align 8
  %13 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_vgroup* %1, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlxsw_afk_element_usage* %3, %struct.mlxsw_afk_element_usage** %9, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %16, align 8
  store %struct.mlxsw_sp_acl_tcam_ops* %17, %struct.mlxsw_sp_acl_tcam_ops** %10, align 8
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.mlxsw_afk* @mlxsw_sp_acl_afk(i32 %20)
  store %struct.mlxsw_afk* %21, %struct.mlxsw_afk** %11, align 8
  %22 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %24, align 8
  store %struct.mlxsw_sp_acl_tcam* %25, %struct.mlxsw_sp_acl_tcam** %12, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mlxsw_sp_acl_tcam_vregion* @kzalloc(i32 56, i32 %26)
  store %struct.mlxsw_sp_acl_tcam_vregion* %27, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %28 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %29 = icmp ne %struct.mlxsw_sp_acl_tcam_vregion* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.mlxsw_sp_acl_tcam_vregion* @ERR_PTR(i32 %32)
  store %struct.mlxsw_sp_acl_tcam_vregion* %33, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  br label %140

34:                                               ; preds = %4
  %35 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %35, i32 0, i32 9
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %38, i32 0, i32 8
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %12, align 8
  %42 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %42, i32 0, i32 7
  store %struct.mlxsw_sp_acl_tcam* %41, %struct.mlxsw_sp_acl_tcam** %43, align 8
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %45 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %45, i32 0, i32 6
  store %struct.mlxsw_sp* %44, %struct.mlxsw_sp** %46, align 8
  %47 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %48 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %48, i32 0, i32 5
  store %struct.mlxsw_sp_acl_tcam_vgroup* %47, %struct.mlxsw_sp_acl_tcam_vgroup** %49, align 8
  %50 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %11, align 8
  %53 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %9, align 8
  %54 = call i32 @mlxsw_afk_key_info_get(%struct.mlxsw_afk* %52, %struct.mlxsw_afk_element_usage* %53)
  %55 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %34
  %63 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %14, align 4
  br label %135

67:                                               ; preds = %34
  %68 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %69 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %12, align 8
  %70 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %71 = call i32 @mlxsw_sp_acl_tcam_region_create(%struct.mlxsw_sp* %68, %struct.mlxsw_sp_acl_tcam* %69, %struct.mlxsw_sp_acl_tcam_vregion* %70, i32* null)
  %72 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %14, align 4
  br label %130

84:                                               ; preds = %67
  %85 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %86 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %87 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @mlxsw_sp_acl_tcam_vgroup_vregion_attach(%struct.mlxsw_sp* %85, %struct.mlxsw_sp_acl_tcam_vgroup* %86, %struct.mlxsw_sp_acl_tcam_vregion* %87, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %124

93:                                               ; preds = %84
  %94 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %10, align 8
  %100 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %98
  %104 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %105 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* @mlxsw_sp_acl_tcam_vregion_rehash_work, align 4
  %108 = call i32 @INIT_DELAYED_WORK(i32* %106, i32 %107)
  %109 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %110 = call i32 @mlxsw_sp_acl_tcam_vregion_rehash_work_schedule(%struct.mlxsw_sp_acl_tcam_vregion* %109)
  %111 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %12, align 8
  %112 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %111, i32 0, i32 0
  %113 = call i32 @mutex_lock(i32* %112)
  %114 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %115 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %114, i32 0, i32 3
  %116 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %12, align 8
  %117 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %116, i32 0, i32 1
  %118 = call i32 @list_add_tail(i32* %115, i32* %117)
  %119 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %12, align 8
  %120 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  br label %122

122:                                              ; preds = %103, %98, %93
  %123 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  store %struct.mlxsw_sp_acl_tcam_vregion* %123, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  br label %140

124:                                              ; preds = %92
  %125 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %126 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %127 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @mlxsw_sp_acl_tcam_region_destroy(%struct.mlxsw_sp* %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %79
  %131 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %132 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @mlxsw_afk_key_info_put(i32 %133)
  br label %135

135:                                              ; preds = %130, %62
  %136 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %13, align 8
  %137 = call i32 @kfree(%struct.mlxsw_sp_acl_tcam_vregion* %136)
  %138 = load i32, i32* %14, align 4
  %139 = call %struct.mlxsw_sp_acl_tcam_vregion* @ERR_PTR(i32 %138)
  store %struct.mlxsw_sp_acl_tcam_vregion* %139, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  br label %140

140:                                              ; preds = %135, %122, %30
  %141 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %5, align 8
  ret %struct.mlxsw_sp_acl_tcam_vregion* %141
}

declare dso_local %struct.mlxsw_afk* @mlxsw_sp_acl_afk(i32) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vregion* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vregion* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mlxsw_afk_key_info_get(%struct.mlxsw_afk*, %struct.mlxsw_afk_element_usage*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_region_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam_vregion*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vgroup_vregion_attach(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vregion*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vregion_rehash_work_schedule(%struct.mlxsw_sp_acl_tcam_vregion*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_region_destroy(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_afk_key_info_put(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_tcam_vregion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
