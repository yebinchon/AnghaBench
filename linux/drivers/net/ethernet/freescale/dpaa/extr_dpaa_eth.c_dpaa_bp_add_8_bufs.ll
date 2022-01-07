; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_bp_add_8_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_bp_add_8_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_bp = type { %struct.device*, i32, i32 }
%struct.device = type { i32 }
%struct.bm_buffer = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"netdev_alloc_frag() failed, size %zu\0A\00", align 1
@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"DMA map failed\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"dpaa_eth: failed to add buffers on Rx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa_bp*)* @dpaa_bp_add_8_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_bp_add_8_bufs(%struct.dpaa_bp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpaa_bp*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca [8 x %struct.bm_buffer], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.dpaa_bp* %0, %struct.dpaa_bp** %3, align 8
  %9 = load %struct.dpaa_bp*, %struct.dpaa_bp** %3, align 8
  %10 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %63, %1
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %66

15:                                               ; preds = %12
  %16 = load %struct.dpaa_bp*, %struct.dpaa_bp** %3, align 8
  %17 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @netdev_alloc_frag(i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.dpaa_bp*, %struct.dpaa_bp** %3, align 8
  %29 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %72

32:                                               ; preds = %15
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %35 = call i8* @PTR_ALIGN(i8* %33, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.dpaa_bp*, %struct.dpaa_bp** %3, align 8
  %39 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @dma_map_single(%struct.device* %36, i8* %37, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dma_mapping_error(%struct.device* %43, i32 %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load %struct.dpaa_bp*, %struct.dpaa_bp** %3, align 8
  %50 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %49, i32 0, i32 0
  %51 = load %struct.device*, %struct.device** %50, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %72

53:                                               ; preds = %32
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x %struct.bm_buffer], [8 x %struct.bm_buffer]* %5, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x %struct.bm_buffer], [8 x %struct.bm_buffer]* %5, i64 0, i64 %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @bm_buffer_set64(%struct.bm_buffer* %60, i32 %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %12

66:                                               ; preds = %12
  br label %67

67:                                               ; preds = %81, %66
  %68 = load %struct.dpaa_bp*, %struct.dpaa_bp** %3, align 8
  %69 = getelementptr inbounds [8 x %struct.bm_buffer], [8 x %struct.bm_buffer]* %5, i64 0, i64 0
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dpaa_bman_release(%struct.dpaa_bp* %68, %struct.bm_buffer* %69, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %83

72:                                               ; preds = %48, %26
  %73 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x %struct.bm_buffer], [8 x %struct.bm_buffer]* %5, i64 0, i64 %75
  %77 = call i32 @bm_buffer_set64(%struct.bm_buffer* %76, i32 0)
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @likely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %67

82:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i8* @netdev_alloc_frag(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @bm_buffer_set64(%struct.bm_buffer*, i32) #1

declare dso_local i32 @dpaa_bman_release(%struct.dpaa_bp*, %struct.bm_buffer*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
