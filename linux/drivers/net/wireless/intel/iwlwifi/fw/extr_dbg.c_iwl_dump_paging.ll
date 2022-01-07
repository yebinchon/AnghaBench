; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_paging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_paging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.iwl_fw_error_dump_data = type { i64, i8*, i8* }
%struct.iwl_fw_error_dump_paging = type { i32, i8* }

@.str = private unnamed_addr constant [17 x i8] c"WRT paging dump\0A\00", align 1
@IWL_FW_ERROR_DUMP_PAGING = common dso_local global i32 0, align 4
@PAGING_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**)* @iwl_dump_paging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_dump_paging(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_error_dump_data** %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_fw_error_dump_paging*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %4, align 8
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %10 = call i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %87, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %90

18:                                               ; preds = %11
  %19 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.page*, %struct.page** %25, align 8
  store %struct.page* %26, %struct.page** %7, align 8
  %27 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @IWL_FW_ERROR_DUMP_PAGING, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %38 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %37, align 8
  %39 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* @PAGING_BLOCK_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 16, %41
  %43 = trunc i64 %42 to i32
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %46 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %45, align 8
  %47 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %49 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %48, align 8
  %50 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = bitcast i8* %52 to %struct.iwl_fw_error_dump_paging*
  store %struct.iwl_fw_error_dump_paging* %53, %struct.iwl_fw_error_dump_paging** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.iwl_fw_error_dump_paging*, %struct.iwl_fw_error_dump_paging** %6, align 8
  %57 = getelementptr inbounds %struct.iwl_fw_error_dump_paging, %struct.iwl_fw_error_dump_paging* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PAGING_BLOCK_SIZE, align 4
  %65 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %66 = call i32 @dma_sync_single_for_cpu(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.iwl_fw_error_dump_paging*, %struct.iwl_fw_error_dump_paging** %6, align 8
  %68 = getelementptr inbounds %struct.iwl_fw_error_dump_paging, %struct.iwl_fw_error_dump_paging* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.page*, %struct.page** %7, align 8
  %71 = call i32 @page_address(%struct.page* %70)
  %72 = load i32, i32* @PAGING_BLOCK_SIZE, align 4
  %73 = call i32 @memcpy(i32 %69, i32 %71, i32 %72)
  %74 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @PAGING_BLOCK_SIZE, align 4
  %81 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %82 = call i32 @dma_sync_single_for_device(i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %84 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %83, align 8
  %85 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %84)
  %86 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  store %struct.iwl_fw_error_dump_data* %85, %struct.iwl_fw_error_dump_data** %86, align 8
  br label %87

87:                                               ; preds = %18
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %11

90:                                               ; preds = %11
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime*, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
