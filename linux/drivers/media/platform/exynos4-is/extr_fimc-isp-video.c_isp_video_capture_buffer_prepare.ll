; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_capture_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_capture_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.fimc_isp = type { i32, %struct.fimc_is_video }
%struct.fimc_is_video = type { i32, %struct.TYPE_10__**, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"User buffer too small (%ld < %ld)\0A\00", align 1
@ST_ISP_VID_CAP_BUF_PREP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @isp_video_capture_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_capture_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.fimc_isp*, align 8
  %5 = alloca %struct.fimc_is_video*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.fimc_isp* @vb2_get_drv_priv(i32 %12)
  store %struct.fimc_isp* %13, %struct.fimc_isp** %4, align 8
  %14 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %15 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %14, i32 0, i32 1
  store %struct.fimc_is_video* %15, %struct.fimc_is_video** %5, align 8
  %16 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %17 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %16, i32 0, i32 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %104

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %63, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %27 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %24
  %33 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %34 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @vb2_plane_size(%struct.vb2_buffer* %42, i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %32
  %48 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %49 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @vb2_plane_size(%struct.vb2_buffer* %51, i32 %52)
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @v4l2_err(i32* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %104

58:                                               ; preds = %32
  %59 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %59, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %24

66:                                               ; preds = %24
  %67 = load i32, i32* @ST_ISP_VID_CAP_BUF_PREP, align 4
  %68 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %69 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %66
  %73 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %74 = call i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %73, i32 0)
  store i64 %74, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %97, %72
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %78 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %83 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %84, i64 %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %104

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %75

100:                                              ; preds = %75
  %101 = load i32, i32* @ENXIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %104

103:                                              ; preds = %66
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %100, %95, %47, %20
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.fimc_isp* @vb2_get_drv_priv(i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
