; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_capture_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_capture_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.fimc_isp = type { i32, %struct.fimc_is_video }
%struct.fimc_is_video = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fimc_is = type { i64 }
%struct.param_dma_output = type { i64, i32, i32, i32, i32 }

@ST_ISP_VID_CAP_BUF_PREP = common dso_local global i32 0, align 4
@ST_ISP_VID_CAP_STREAMING = common dso_local global i32 0, align 4
@DMA_OUTPUT_COMMAND_ENABLE = common dso_local global i32 0, align 4
@DMA_OUTPUT_NOTIFY_DMA_DONE_ENABLE = common dso_local global i32 0, align 4
@DMA2_OUTPUT_ADDR_ARRAY_OFFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"buf_count: %d, planes: %d, dma addr table: %#x\0A\00", align 1
@PARAM_ISP_DMA2_OUTPUT = common dso_local global i32 0, align 4
@set_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @isp_video_capture_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_capture_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_isp*, align 8
  %7 = alloca %struct.fimc_is*, align 8
  %8 = alloca %struct.param_dma_output*, align 8
  %9 = alloca %struct.fimc_is_video*, align 8
  %10 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = call %struct.fimc_isp* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.fimc_isp* %12, %struct.fimc_isp** %6, align 8
  %13 = load %struct.fimc_isp*, %struct.fimc_isp** %6, align 8
  %14 = call %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp* %13)
  store %struct.fimc_is* %14, %struct.fimc_is** %7, align 8
  %15 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %16 = call %struct.param_dma_output* @__get_isp_dma2(%struct.fimc_is* %15)
  store %struct.param_dma_output* %16, %struct.param_dma_output** %8, align 8
  %17 = load %struct.fimc_isp*, %struct.fimc_isp** %6, align 8
  %18 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %17, i32 0, i32 1
  store %struct.fimc_is_video* %18, %struct.fimc_is_video** %9, align 8
  %19 = load i32, i32* @ST_ISP_VID_CAP_BUF_PREP, align 4
  %20 = load %struct.fimc_isp*, %struct.fimc_isp** %6, align 8
  %21 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @ST_ISP_VID_CAP_STREAMING, align 4
  %26 = load %struct.fimc_isp*, %struct.fimc_isp** %6, align 8
  %27 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %98

31:                                               ; preds = %24
  %32 = load i32, i32* @DMA_OUTPUT_COMMAND_ENABLE, align 4
  %33 = load %struct.param_dma_output*, %struct.param_dma_output** %8, align 8
  %34 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DMA_OUTPUT_NOTIFY_DMA_DONE_ENABLE, align 4
  %36 = load %struct.param_dma_output*, %struct.param_dma_output** %8, align 8
  %37 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %39 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DMA2_OUTPUT_ADDR_ARRAY_OFFS, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.param_dma_output*, %struct.param_dma_output** %8, align 8
  %44 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %46 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.param_dma_output*, %struct.param_dma_output** %8, align 8
  %49 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %51 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.param_dma_output*, %struct.param_dma_output** %8, align 8
  %54 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %56 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %59 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %62 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.param_dma_output*, %struct.param_dma_output** %8, align 8
  %67 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @isp_dbg(i32 2, i32* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %65, i64 %68)
  %70 = call i32 (...) @fimc_is_mem_barrier()
  %71 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %72 = load i32, i32* @PARAM_ISP_DMA2_OUTPUT, align 4
  %73 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %71, i32 %72)
  %74 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %75 = load i32, i32* @PARAM_ISP_DMA2_OUTPUT, align 4
  %76 = call i32 @__fimc_is_hw_update_param(%struct.fimc_is* %74, i32 %75)
  %77 = load %struct.fimc_is*, %struct.fimc_is** %7, align 8
  %78 = call i32 @fimc_is_itf_s_param(%struct.fimc_is* %77, i32 0)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %31
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %31
  %84 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %85 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %84, i32 0, i32 0
  %86 = load i32, i32* @set_stream, align 4
  %87 = call i32 @fimc_pipeline_call(%struct.TYPE_4__* %85, i32 %86, i32 1)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %98

92:                                               ; preds = %83
  %93 = load i32, i32* @ST_ISP_VID_CAP_STREAMING, align 4
  %94 = load %struct.fimc_isp*, %struct.fimc_isp** %6, align 8
  %95 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %94, i32 0, i32 0
  %96 = call i32 @set_bit(i32 %93, i32* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %90, %81, %30
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.fimc_isp* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp*) #1

declare dso_local %struct.param_dma_output* @__get_isp_dma2(%struct.fimc_is*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @isp_dbg(i32, i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @fimc_is_mem_barrier(...) #1

declare dso_local i32 @fimc_is_set_param_bit(%struct.fimc_is*, i32) #1

declare dso_local i32 @__fimc_is_hw_update_param(%struct.fimc_is*, i32) #1

declare dso_local i32 @fimc_is_itf_s_param(%struct.fimc_is*, i32) #1

declare dso_local i32 @fimc_pipeline_call(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
