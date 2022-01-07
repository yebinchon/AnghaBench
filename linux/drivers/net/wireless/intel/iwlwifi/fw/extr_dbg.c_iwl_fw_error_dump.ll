; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_error_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_error_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.iwl_fw_dump_ptrs = type { %struct.TYPE_11__*, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__* }
%struct.iwl_fw_error_dump_file = type { i32 }
%struct.scatterlist = type { i32 }

@IWL_FW_ERROR_DUMP_FW_MONITOR = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*)* @iwl_fw_error_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_error_dump(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  %3 = alloca %struct.iwl_fw_dump_ptrs, align 8
  %4 = alloca %struct.iwl_fw_error_dump_file*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %8 = bitcast %struct.iwl_fw_dump_ptrs* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %9, i32 0, i32 2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %16 = call %struct.iwl_fw_error_dump_file* @iwl_fw_error_dump_file(%struct.iwl_fw_runtime* %15, %struct.iwl_fw_dump_ptrs* %3)
  store %struct.iwl_fw_error_dump_file* %16, %struct.iwl_fw_error_dump_file** %4, align 8
  %17 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %4, align 8
  %18 = icmp ne %struct.iwl_fw_error_dump_file* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %106

20:                                               ; preds = %1
  %21 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %22 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @IWL_FW_ERROR_DUMP_FW_MONITOR, align 8
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %32 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call %struct.TYPE_11__* @iwl_trans_dump_data(%struct.TYPE_12__* %33, i64 %34)
  %36 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 0
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %36, align 8
  %37 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_fw_error_dump_file, %struct.iwl_fw_error_dump_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 2
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @cpu_to_le32(i64 %53)
  %55 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_fw_error_dump_file, %struct.iwl_fw_error_dump_file* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %46, %30
  %58 = load i64, i64* %6, align 8
  %59 = call %struct.scatterlist* @alloc_sgtable(i64 %58)
  store %struct.scatterlist* %59, %struct.scatterlist** %5, align 8
  %60 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %61 = icmp ne %struct.scatterlist* %60, null
  br i1 %61, label %62, label %99

62:                                               ; preds = %57
  %63 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %64 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %65 = call i32 @sg_nents(%struct.scatterlist* %64)
  %66 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @sg_pcopy_from_buffer(%struct.scatterlist* %63, i32 %65, %struct.TYPE_11__* %67, i64 %69, i64 0)
  %71 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = icmp ne %struct.TYPE_11__* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %62
  %75 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %76 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %77 = call i32 @sg_nents(%struct.scatterlist* %76)
  %78 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @sg_pcopy_from_buffer(%struct.scatterlist* %75, i32 %77, %struct.TYPE_11__* %81, i64 %85, i64 %87)
  br label %89

89:                                               ; preds = %74, %62
  %90 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %91 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32 @dev_coredumpsg(i32 %94, %struct.scatterlist* %95, i64 %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %57
  %100 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = call i32 @vfree(%struct.TYPE_11__* %101)
  %103 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %3, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = call i32 @vfree(%struct.TYPE_11__* %104)
  br label %106

106:                                              ; preds = %99, %19
  %107 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %108 = call i32 @iwl_fw_free_dump_desc(%struct.iwl_fw_runtime* %107)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iwl_fw_error_dump_file* @iwl_fw_error_dump_file(%struct.iwl_fw_runtime*, %struct.iwl_fw_dump_ptrs*) #2

declare dso_local %struct.TYPE_11__* @iwl_trans_dump_data(%struct.TYPE_12__*, i64) #2

declare dso_local i64 @le32_to_cpu(i32) #2

declare dso_local i32 @cpu_to_le32(i64) #2

declare dso_local %struct.scatterlist* @alloc_sgtable(i64) #2

declare dso_local i32 @sg_pcopy_from_buffer(%struct.scatterlist*, i32, %struct.TYPE_11__*, i64, i64) #2

declare dso_local i32 @sg_nents(%struct.scatterlist*) #2

declare dso_local i32 @dev_coredumpsg(i32, %struct.scatterlist*, i64, i32) #2

declare dso_local i32 @vfree(%struct.TYPE_11__*) #2

declare dso_local i32 @iwl_fw_free_dump_desc(%struct.iwl_fw_runtime*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
