; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_paging.c_iwl_free_fw_paging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_paging.c_iwl_free_fw_paging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.iwl_fw_paging*, %struct.TYPE_2__* }
%struct.iwl_fw_paging = type { i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NUM_OF_FW_PAGING_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Paging: block %d already freed, continue to next page\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_free_fw_paging(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_fw_paging*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %5 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %5, i32 0, i32 0
  %7 = load %struct.iwl_fw_paging*, %struct.iwl_fw_paging** %6, align 8
  %8 = getelementptr inbounds %struct.iwl_fw_paging, %struct.iwl_fw_paging* %7, i64 0
  %9 = getelementptr inbounds %struct.iwl_fw_paging, %struct.iwl_fw_paging* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %57, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @NUM_OF_FW_PAGING_BLOCKS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %19, i32 0, i32 0
  %21 = load %struct.iwl_fw_paging*, %struct.iwl_fw_paging** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iwl_fw_paging, %struct.iwl_fw_paging* %21, i64 %23
  store %struct.iwl_fw_paging* %24, %struct.iwl_fw_paging** %4, align 8
  %25 = load %struct.iwl_fw_paging*, %struct.iwl_fw_paging** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_fw_paging, %struct.iwl_fw_paging* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @IWL_DEBUG_FW(%struct.iwl_fw_runtime* %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %57

33:                                               ; preds = %18
  %34 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %35 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iwl_fw_paging*, %struct.iwl_fw_paging** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_fw_paging, %struct.iwl_fw_paging* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iwl_fw_paging*, %struct.iwl_fw_paging** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_fw_paging, %struct.iwl_fw_paging* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %46 = call i32 @dma_unmap_page(i32 %38, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.iwl_fw_paging*, %struct.iwl_fw_paging** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_fw_paging, %struct.iwl_fw_paging* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.iwl_fw_paging*, %struct.iwl_fw_paging** %4, align 8
  %51 = getelementptr inbounds %struct.iwl_fw_paging, %struct.iwl_fw_paging* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @get_order(i32 %52)
  %54 = call i32 @__free_pages(i32* %49, i32 %53)
  %55 = load %struct.iwl_fw_paging*, %struct.iwl_fw_paging** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_fw_paging, %struct.iwl_fw_paging* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %33, %29
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %14

60:                                               ; preds = %14
  %61 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %62 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %61, i32 0, i32 0
  %63 = load %struct.iwl_fw_paging*, %struct.iwl_fw_paging** %62, align 8
  %64 = call i32 @memset(%struct.iwl_fw_paging* %63, i32 0, i32 8)
  br label %65

65:                                               ; preds = %60, %12
  ret void
}

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_fw_runtime*, i8*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @memset(%struct.iwl_fw_paging*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
