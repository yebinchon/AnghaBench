; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_swap.c_ath10k_swap_code_seg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_swap.c_ath10k_swap_code_seg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_swap_code_seg_info = type { i64*, i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8** }
%struct.ath10k = type { i32 }

@ATH10K_SWAP_CODE_SEG_BIN_LEN_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"refusing code swap bin because it is too big %zu > %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ATH10K_SWAP_CODE_SEG_NUM_SUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath10k_swap_code_seg_info* (%struct.ath10k*, i64)* @ath10k_swap_code_seg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath10k_swap_code_seg_info* @ath10k_swap_code_seg_alloc(%struct.ath10k* %0, i64 %1) #0 {
  %3 = alloca %struct.ath10k_swap_code_seg_info*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath10k_swap_code_seg_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @roundup(i64 %9, i32 2)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @ATH10K_SWAP_CODE_SEG_BIN_LEN_MAX, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ATH10K_SWAP_CODE_SEG_BIN_LEN_MAX, align 8
  %18 = call i32 @ath10k_err(%struct.ath10k* %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  store %struct.ath10k_swap_code_seg_info* null, %struct.ath10k_swap_code_seg_info** %3, align 8
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ath10k_swap_code_seg_info* @devm_kzalloc(i32 %22, i32 56, i32 %23)
  store %struct.ath10k_swap_code_seg_info* %24, %struct.ath10k_swap_code_seg_info** %6, align 8
  %25 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %6, align 8
  %26 = icmp ne %struct.ath10k_swap_code_seg_info* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store %struct.ath10k_swap_code_seg_info* null, %struct.ath10k_swap_code_seg_info** %3, align 8
  br label %78

28:                                               ; preds = %19
  %29 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @dma_alloc_coherent(i32 %31, i64 %32, i64* %8, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store %struct.ath10k_swap_code_seg_info* null, %struct.ath10k_swap_code_seg_info** %3, align 8
  br label %78

38:                                               ; preds = %28
  %39 = load i64, i64* %8, align 8
  %40 = call i8* @__cpu_to_le32(i64 %39)
  %41 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %6, align 8
  %42 = getelementptr inbounds %struct.ath10k_swap_code_seg_info, %struct.ath10k_swap_code_seg_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  store i8* %40, i8** %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i8* @__cpu_to_le32(i64 %46)
  %48 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %6, align 8
  %49 = getelementptr inbounds %struct.ath10k_swap_code_seg_info, %struct.ath10k_swap_code_seg_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i8* @__cpu_to_le32(i64 %51)
  %53 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %6, align 8
  %54 = getelementptr inbounds %struct.ath10k_swap_code_seg_info, %struct.ath10k_swap_code_seg_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = load i64, i64* @ATH10K_SWAP_CODE_SEG_NUM_SUPPORTED, align 8
  %57 = call i8* @__cpu_to_le32(i64 %56)
  %58 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %6, align 8
  %59 = getelementptr inbounds %struct.ath10k_swap_code_seg_info, %struct.ath10k_swap_code_seg_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @ilog2(i64 %61)
  %63 = call i8* @__cpu_to_le32(i64 %62)
  %64 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %6, align 8
  %65 = getelementptr inbounds %struct.ath10k_swap_code_seg_info, %struct.ath10k_swap_code_seg_info* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %6, align 8
  %69 = getelementptr inbounds %struct.ath10k_swap_code_seg_info, %struct.ath10k_swap_code_seg_info* %68, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  store i8* %67, i8** %71, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %6, align 8
  %74 = getelementptr inbounds %struct.ath10k_swap_code_seg_info, %struct.ath10k_swap_code_seg_info* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 %72, i64* %76, align 8
  %77 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %6, align 8
  store %struct.ath10k_swap_code_seg_info* %77, %struct.ath10k_swap_code_seg_info** %3, align 8
  br label %78

78:                                               ; preds = %38, %37, %27, %14
  %79 = load %struct.ath10k_swap_code_seg_info*, %struct.ath10k_swap_code_seg_info** %3, align 8
  ret %struct.ath10k_swap_code_seg_info* %79
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i64, i64) #1

declare dso_local %struct.ath10k_swap_code_seg_info* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i64*, i32) #1

declare dso_local i8* @__cpu_to_le32(i64) #1

declare dso_local i64 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
