; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_capture_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_capture_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.fimc_isp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fimc_fmt*, %struct.v4l2_pix_format_mplane }
%struct.fimc_fmt = type { i32, i32* }
%struct.v4l2_pix_format_mplane = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@FIMC_ISP_REQ_BUFS_MIN = common dso_local global i32 0, align 4
@FIMC_ISP_REQ_BUFS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @isp_video_capture_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_capture_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.fimc_isp*, align 8
  %13 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %14 = alloca %struct.fimc_fmt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %18 = call %struct.fimc_isp* @vb2_get_drv_priv(%struct.vb2_queue* %17)
  store %struct.fimc_isp* %18, %struct.fimc_isp** %12, align 8
  %19 = load %struct.fimc_isp*, %struct.fimc_isp** %12, align 8
  %20 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %21, %struct.v4l2_pix_format_mplane** %13, align 8
  %22 = load %struct.fimc_isp*, %struct.fimc_isp** %12, align 8
  %23 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.fimc_fmt*, %struct.fimc_fmt** %24, align 8
  store %struct.fimc_fmt* %25, %struct.fimc_fmt** %14, align 8
  %26 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul i32 %28, %31
  store i32 %32, i32* %15, align 4
  %33 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %34 = icmp eq %struct.fimc_fmt* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %120

38:                                               ; preds = %5
  %39 = load i32, i32* @u32, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FIMC_ISP_REQ_BUFS_MIN, align 4
  %43 = load i32, i32* @FIMC_ISP_REQ_BUFS_MAX, align 4
  %44 = call i32 @clamp_t(i32 %39, i32 %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %38
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %53 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %120

59:                                               ; preds = %49
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %86, %59
  %61 = load i32, i32* %16, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %16, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %73 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = mul i32 %71, %78
  %80 = udiv i32 %79, 8
  %81 = icmp ult i32 %70, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %120

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %16, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %60

89:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %120

90:                                               ; preds = %38
  %91 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %92 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %116, %90
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %98 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.fimc_fmt*, %struct.fimc_fmt** %14, align 8
  %104 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %16, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = mul i32 %102, %109
  %111 = udiv i32 %110, 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %16, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %101
  %117 = load i32, i32* %16, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %95

119:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %89, %82, %56, %35
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.fimc_isp* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
