; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_s_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_s_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32 }
%struct.fimc_isp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane, %struct.fimc_fmt* }
%struct.fimc_fmt = type { i32*, i32 }
%struct.fimc_is = type { i32 }
%struct.param_dma_output = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_OUTPUT_FORMAT_BAYER = common dso_local global i32 0, align 4
@DMA_OUTPUT_ORDER_GB_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @isp_video_s_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_s_fmt_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.fimc_isp*, align 8
  %9 = alloca %struct.fimc_is*, align 8
  %10 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %11 = alloca %struct.fimc_fmt*, align 8
  %12 = alloca %struct.param_dma_output*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.fimc_isp* @video_drvdata(%struct.file* %13)
  store %struct.fimc_isp* %14, %struct.fimc_isp** %8, align 8
  %15 = load %struct.fimc_isp*, %struct.fimc_isp** %8, align 8
  %16 = call %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp* %15)
  store %struct.fimc_is* %16, %struct.fimc_is** %9, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %19, %struct.v4l2_pix_format_mplane** %10, align 8
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %11, align 8
  %20 = load %struct.fimc_is*, %struct.fimc_is** %9, align 8
  %21 = call %struct.param_dma_output* @__get_isp_dma2(%struct.fimc_is* %20)
  store %struct.param_dma_output* %21, %struct.param_dma_output** %12, align 8
  %22 = load %struct.fimc_isp*, %struct.fimc_isp** %8, align 8
  %23 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %24 = call i32 @__isp_video_try_fmt(%struct.fimc_isp* %22, %struct.v4l2_pix_format_mplane* %23, %struct.fimc_fmt** %11)
  %25 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %26 = icmp eq %struct.fimc_fmt* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %73

33:                                               ; preds = %3
  %34 = load i32, i32* @DMA_OUTPUT_FORMAT_BAYER, align 4
  %35 = load %struct.param_dma_output*, %struct.param_dma_output** %12, align 8
  %36 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @DMA_OUTPUT_ORDER_GB_BG, align 4
  %38 = load %struct.param_dma_output*, %struct.param_dma_output** %12, align 8
  %39 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %41 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.param_dma_output*, %struct.param_dma_output** %12, align 8
  %44 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %46 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.param_dma_output*, %struct.param_dma_output** %12, align 8
  %51 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.param_dma_output*, %struct.param_dma_output** %12, align 8
  %56 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.param_dma_output*, %struct.param_dma_output** %12, align 8
  %61 = getelementptr inbounds %struct.param_dma_output, %struct.param_dma_output* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = call i32 (...) @fimc_is_mem_barrier()
  %63 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %64 = load %struct.fimc_isp*, %struct.fimc_isp** %8, align 8
  %65 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store %struct.fimc_fmt* %63, %struct.fimc_fmt** %66, align 8
  %67 = load %struct.fimc_isp*, %struct.fimc_isp** %8, align 8
  %68 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %71 = bitcast %struct.v4l2_pix_format_mplane* %69 to i8*
  %72 = bitcast %struct.v4l2_pix_format_mplane* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 4 %72, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %33, %30
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.fimc_isp* @video_drvdata(%struct.file*) #1

declare dso_local %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp*) #1

declare dso_local %struct.param_dma_output* @__get_isp_dma2(%struct.fimc_is*) #1

declare dso_local i32 @__isp_video_try_fmt(%struct.fimc_isp*, %struct.v4l2_pix_format_mplane*, %struct.fimc_fmt**) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fimc_is_mem_barrier(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
