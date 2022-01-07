; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_hmc.c_i40e_remove_pd_bp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_hmc.c_i40e_remove_pd_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.i40e_hmc_sd_entry* }
%struct.i40e_hmc_sd_entry = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.i40e_hmc_pd_table }
%struct.i40e_hmc_pd_table = type { i32, i32, %struct.TYPE_7__, %struct.i40e_hmc_pd_entry* }
%struct.TYPE_7__ = type { i64 }
%struct.i40e_hmc_pd_entry = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@I40E_HMC_PD_CNT_IN_SD = common dso_local global i64 0, align 8
@I40E_ERR_INVALID_PAGE_DESC_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"i40e_remove_pd_bp: bad idx\0A\00", align 1
@I40E_SD_TYPE_PAGED = common dso_local global i64 0, align 8
@I40E_ERR_INVALID_SD_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"i40e_remove_pd_bp: wrong sd_entry type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_remove_pd_bp(%struct.i40e_hw* %0, %struct.i40e_hmc_info* %1, i64 %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_hmc_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40e_hmc_pd_entry*, align 8
  %9 = alloca %struct.i40e_hmc_pd_table*, align 8
  %10 = alloca %struct.i40e_hmc_sd_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_hmc_info* %1, %struct.i40e_hmc_info** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %16 = udiv i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %19 = urem i64 %17, %18
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %5, align 8
  %22 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %20, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i64, i64* @I40E_ERR_INVALID_PAGE_DESC_INDEX, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %29 = call i32 @hw_dbg(%struct.i40e_hw* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %113

30:                                               ; preds = %3
  %31 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %34, i64 %35
  store %struct.i40e_hmc_sd_entry* %36, %struct.i40e_hmc_sd_entry** %10, align 8
  %37 = load i64, i64* @I40E_SD_TYPE_PAGED, align 8
  %38 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %10, align 8
  %39 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i64, i64* @I40E_ERR_INVALID_SD_TYPE, align 8
  store i64 %43, i64* %7, align 8
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %45 = call i32 @hw_dbg(%struct.i40e_hw* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %113

46:                                               ; preds = %30
  %47 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %50, i64 %51
  %53 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store %struct.i40e_hmc_pd_table* %54, %struct.i40e_hmc_pd_table** %9, align 8
  %55 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %56 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %55, i32 0, i32 3
  %57 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %57, i64 %58
  store %struct.i40e_hmc_pd_entry* %59, %struct.i40e_hmc_pd_entry** %8, align 8
  %60 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %61 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %60, i32 0, i32 1
  %62 = call i32 @I40E_DEC_BP_REFCNT(%struct.TYPE_8__* %61)
  %63 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %64 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  br label %113

69:                                               ; preds = %46
  %70 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %71 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %73 = call i32 @I40E_DEC_PD_REFCNT(%struct.i40e_hmc_pd_table* %72)
  %74 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %75 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %13, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @memset(i32* %82, i32 0, i32 4)
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @I40E_INVALIDATE_PF_HMC_PD(%struct.i40e_hw* %84, i64 %85, i64 %86)
  %88 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %89 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %69
  %93 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %94 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %95 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i64 @i40e_free_dma_mem(%struct.i40e_hw* %93, i32* %96)
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %92, %69
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %113

102:                                              ; preds = %98
  %103 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %104 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %109 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %110 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %109, i32 0, i32 0
  %111 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %108, i32* %110)
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %101, %68, %42, %26
  %114 = load i64, i64* %7, align 8
  ret i64 %114
}

declare dso_local i32 @hw_dbg(%struct.i40e_hw*, i8*) #1

declare dso_local i32 @I40E_DEC_BP_REFCNT(%struct.TYPE_8__*) #1

declare dso_local i32 @I40E_DEC_PD_REFCNT(%struct.i40e_hmc_pd_table*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @I40E_INVALIDATE_PF_HMC_PD(%struct.i40e_hw*, i64, i64) #1

declare dso_local i64 @i40e_free_dma_mem(%struct.i40e_hw*, i32*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
