; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_hmc_get_object_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_hmc_get_object_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.i40e_hmc_info }
%struct.i40e_hmc_info = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { %struct.i40e_hmc_sd_entry* }
%struct.i40e_hmc_sd_entry = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { %struct.i40e_hmc_pd_entry* }
%struct.i40e_hmc_pd_entry = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@I40E_ERR_BAD_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"i40e_hmc_get_object_va: bad hmc_info ptr\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"i40e_hmc_get_object_va: bad hmc_info->hmc_obj ptr\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"i40e_hmc_get_object_va: bad object_base ptr\0A\00", align 1
@I40E_HMC_INFO_SIGNATURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"i40e_hmc_get_object_va: bad hmc_info->signature\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"i40e_hmc_get_object_va: returns error %d\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_INDEX = common dso_local global i32 0, align 4
@I40E_SD_TYPE_PAGED = common dso_local global i64 0, align 8
@I40E_HMC_PD_CNT_IN_SD = common dso_local global i64 0, align 8
@I40E_HMC_PAGED_BP_SIZE = common dso_local global i32 0, align 4
@I40E_HMC_DIRECT_BP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, i32**, i32, i64)* @i40e_hmc_get_object_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_hmc_get_object_va(%struct.i40e_hw* %0, i32** %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.i40e_hmc_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.i40e_hmc_sd_entry*, align 8
  %13 = alloca %struct.i40e_hmc_pd_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 0
  store %struct.i40e_hmc_info* %22, %struct.i40e_hmc_info** %9, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %9, align 8
  %24 = icmp eq %struct.i40e_hmc_info* null, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %26, i32* %17, align 4
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %28 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %152

29:                                               ; preds = %4
  %30 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %9, align 8
  %31 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = icmp eq %struct.TYPE_10__* null, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %35, i32* %17, align 4
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %37 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %152

38:                                               ; preds = %29
  %39 = load i32**, i32*** %6, align 8
  %40 = icmp eq i32** null, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %42, i32* %17, align 4
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %44 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %152

45:                                               ; preds = %38
  %46 = load i64, i64* @I40E_HMC_INFO_SIGNATURE, align 8
  %47 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %9, align 8
  %48 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %52, i32* %17, align 4
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %54 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %152

55:                                               ; preds = %45
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %9, align 8
  %58 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp uge i64 %56, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %68 = load i32, i32* %17, align 4
  %69 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_INDEX, align 4
  store i32 %70, i32* %17, align 4
  br label %152

71:                                               ; preds = %55
  %72 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %9, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.i40e_hmc_info* %72, i32 %73, i64 %74, i32 1, i64* %19, i64* %20)
  %76 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %9, align 8
  %77 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %78, align 8
  %80 = load i64, i64* %19, align 8
  %81 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %79, i64 %80
  store %struct.i40e_hmc_sd_entry* %81, %struct.i40e_hmc_sd_entry** %12, align 8
  %82 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %9, align 8
  %83 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %9, align 8
  %92 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = mul i64 %98, %99
  %101 = add i64 %90, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %18, align 4
  %103 = load i64, i64* @I40E_SD_TYPE_PAGED, align 8
  %104 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %105 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %71
  %109 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %9, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.i40e_hmc_info* %109, i32 %110, i64 %111, i32 1, i64* %14, i64* %15)
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %115 = urem i64 %113, %114
  store i64 %115, i64* %16, align 8
  %116 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %117 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %119, align 8
  %121 = load i64, i64* %16, align 8
  %122 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %120, i64 %121
  store %struct.i40e_hmc_pd_entry* %122, %struct.i40e_hmc_pd_entry** %13, align 8
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* @I40E_HMC_PAGED_BP_SIZE, align 4
  %125 = srem i32 %123, %124
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %11, align 8
  %127 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %13, align 8
  %128 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32**, i32*** %6, align 8
  store i32* %134, i32** %135, align 8
  br label %151

136:                                              ; preds = %71
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* @I40E_HMC_DIRECT_BP_SIZE, align 4
  %139 = srem i32 %137, %138
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %10, align 8
  %141 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %142 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i32*
  %148 = load i64, i64* %10, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32**, i32*** %6, align 8
  store i32* %149, i32** %150, align 8
  br label %151

151:                                              ; preds = %136, %108
  br label %152

152:                                              ; preds = %151, %66, %51, %41, %34, %25
  %153 = load i32, i32* %17, align 4
  ret i32 %153
}

declare dso_local i32 @hw_dbg(%struct.i40e_hw*, i8*, ...) #1

declare dso_local i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.i40e_hmc_info*, i32, i64, i32, i64*, i64*) #1

declare dso_local i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.i40e_hmc_info*, i32, i64, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
