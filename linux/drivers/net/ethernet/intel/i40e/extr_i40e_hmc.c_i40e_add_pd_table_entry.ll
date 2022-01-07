; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_hmc.c_i40e_add_pd_table_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_hmc.c_i40e_add_pd_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.i40e_hmc_pd_table }
%struct.i40e_hmc_pd_table = type { %struct.TYPE_9__, %struct.i40e_hmc_pd_entry* }
%struct.TYPE_9__ = type { i64 }
%struct.i40e_hmc_pd_entry = type { i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, %struct.i40e_dma_mem }
%struct.i40e_dma_mem = type { i32 }

@I40E_HMC_PD_CNT_IN_SD = common dso_local global i64 0, align 8
@I40E_ERR_INVALID_PAGE_DESC_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"i40e_add_pd_table_entry: bad pd_index\0A\00", align 1
@I40E_SD_TYPE_PAGED = common dso_local global i64 0, align 8
@i40e_mem_bp = common dso_local global i32 0, align 4
@I40E_HMC_PAGED_BP_SIZE = common dso_local global i32 0, align 4
@I40E_HMC_PD_BP_BUF_ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_add_pd_table_entry(%struct.i40e_hw* %0, %struct.i40e_hmc_info* %1, i64 %2, %struct.i40e_dma_mem* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_hmc_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40e_dma_mem*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40e_hmc_pd_table*, align 8
  %11 = alloca %struct.i40e_hmc_pd_entry*, align 8
  %12 = alloca %struct.i40e_dma_mem, align 4
  %13 = alloca %struct.i40e_dma_mem*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_hmc_info* %1, %struct.i40e_hmc_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.i40e_dma_mem* %3, %struct.i40e_dma_mem** %8, align 8
  store i64 0, i64* %9, align 8
  store %struct.i40e_dma_mem* %12, %struct.i40e_dma_mem** %13, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %20 = udiv i64 %18, %19
  %21 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %6, align 8
  %22 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %20, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i64, i64* @I40E_ERR_INVALID_PAGE_DESC_INDEX, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %29 = call i32 @hw_dbg(%struct.i40e_hw* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %126

30:                                               ; preds = %4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %33 = udiv i64 %31, %32
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* @I40E_SD_TYPE_PAGED, align 8
  %35 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %6, align 8
  %36 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %34, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %126

45:                                               ; preds = %30
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %48 = urem i64 %46, %47
  store i64 %48, i64* %15, align 8
  %49 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %6, align 8
  %50 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store %struct.i40e_hmc_pd_table* %56, %struct.i40e_hmc_pd_table** %10, align 8
  %57 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %10, align 8
  %58 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %57, i32 0, i32 1
  %59 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %58, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %59, i64 %60
  store %struct.i40e_hmc_pd_entry* %61, %struct.i40e_hmc_pd_entry** %11, align 8
  %62 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %11, align 8
  %63 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %122, label %66

66:                                               ; preds = %45
  %67 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %8, align 8
  %68 = icmp ne %struct.i40e_dma_mem* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %11, align 8
  %71 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %8, align 8
  store %struct.i40e_dma_mem* %72, %struct.i40e_dma_mem** %13, align 8
  br label %86

73:                                               ; preds = %66
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %75 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %13, align 8
  %76 = load i32, i32* @i40e_mem_bp, align 4
  %77 = load i32, i32* @I40E_HMC_PAGED_BP_SIZE, align 4
  %78 = load i32, i32* @I40E_HMC_PD_BP_BUF_ALIGNMENT, align 4
  %79 = call i64 @i40e_allocate_dma_mem(%struct.i40e_hw* %74, %struct.i40e_dma_mem* %75, i32 %76, i32 %77, i32 %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %126

83:                                               ; preds = %73
  %84 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %11, align 8
  %85 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %69
  %87 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %11, align 8
  %88 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %13, align 8
  %91 = bitcast %struct.i40e_dma_mem* %89 to i8*
  %92 = bitcast %struct.i40e_dma_mem* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 4 %92, i64 4, i1 false)
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %11, align 8
  %95 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load i64, i64* @I40E_SD_TYPE_PAGED, align 8
  %98 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %11, align 8
  %99 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  store i64 %97, i64* %100, align 8
  %101 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %13, align 8
  %102 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, 1
  store i32 %104, i32* %17, align 4
  %105 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %10, align 8
  %106 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %16, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 %110
  store i32* %112, i32** %16, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = call i32 @memcpy(i32* %113, i32* %17, i32 4)
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %11, align 8
  %117 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  %118 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %11, align 8
  %119 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %10, align 8
  %121 = call i32 @I40E_INC_PD_REFCNT(%struct.i40e_hmc_pd_table* %120)
  br label %122

122:                                              ; preds = %86, %45
  %123 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %11, align 8
  %124 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %123, i32 0, i32 3
  %125 = call i32 @I40E_INC_BP_REFCNT(%struct.TYPE_10__* %124)
  br label %126

126:                                              ; preds = %122, %82, %44, %26
  %127 = load i64, i64* %9, align 8
  ret i64 %127
}

declare dso_local i32 @hw_dbg(%struct.i40e_hw*, i8*) #1

declare dso_local i64 @i40e_allocate_dma_mem(%struct.i40e_hw*, %struct.i40e_dma_mem*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @I40E_INC_PD_REFCNT(%struct.i40e_hmc_pd_table*) #1

declare dso_local i32 @I40E_INC_BP_REFCNT(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
