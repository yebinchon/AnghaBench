; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c__iwl_dump_ini_paging_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c__iwl_dump_ini_paging_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.iwl_fw_ini_region_cfg = type { i32 }
%struct.iwl_fw_ini_error_dump_range = type { i8*, i32, i8* }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i8*, i32)* @_iwl_dump_ini_paging_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_iwl_dump_ini_paging_iter(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.iwl_fw_ini_error_dump_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_region_cfg** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %21, %struct.page** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.iwl_fw_ini_error_dump_range*
  store %struct.iwl_fw_ini_error_dump_range* %23, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %24 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %43 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %47 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %56 = call i32 @dma_sync_single_for_cpu(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %58 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.page*, %struct.page** %9, align 8
  %61 = call i32 @page_address(%struct.page* %60)
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @memcpy(i32 %59, i32 %61, i32 %62)
  %64 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %65 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %72 = call i32 @dma_sync_single_for_device(i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %74 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @le32_to_cpu(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = add i64 24, %77
  %79 = trunc i64 %78 to i32
  ret i32 %79
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
