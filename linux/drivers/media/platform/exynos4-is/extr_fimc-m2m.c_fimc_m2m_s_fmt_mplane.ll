; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_s_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_s_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame, %struct.TYPE_5__, %struct.fimc_dev* }
%struct.fimc_frame = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fimc_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.fimc_fmt = type { i32 }
%struct.vb2_queue = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"queue (%d) busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @fimc_m2m_s_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_m2m_s_fmt_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.fimc_ctx*, align 8
  %9 = alloca %struct.fimc_dev*, align 8
  %10 = alloca %struct.fimc_fmt*, align 8
  %11 = alloca %struct.vb2_queue*, align 8
  %12 = alloca %struct.fimc_frame*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.fimc_ctx* @fh_to_ctx(i8* %14)
  store %struct.fimc_ctx* %15, %struct.fimc_ctx** %8, align 8
  %16 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %16, i32 0, i32 3
  %18 = load %struct.fimc_dev*, %struct.fimc_dev** %17, align 8
  store %struct.fimc_dev* %18, %struct.fimc_dev** %9, align 8
  %19 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = call i32 @fimc_try_fmt_mplane(%struct.fimc_ctx* %19, %struct.v4l2_format* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %84

26:                                               ; preds = %3
  %27 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %30, i32 %33)
  store %struct.vb2_queue* %34, %struct.vb2_queue** %11, align 8
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %11, align 8
  %36 = call i64 @vb2_is_busy(%struct.vb2_queue* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load %struct.fimc_dev*, %struct.fimc_dev** %9, align 8
  %40 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @v4l2_err(i32* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %84

48:                                               ; preds = %26
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %55, i32 0, i32 1
  store %struct.fimc_frame* %56, %struct.fimc_frame** %12, align 8
  br label %60

57:                                               ; preds = %48
  %58 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %58, i32 0, i32 0
  store %struct.fimc_frame* %59, %struct.fimc_frame** %12, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @get_m2m_fmt_flags(i32 %67)
  %69 = call %struct.fimc_fmt* @fimc_find_format(i32* %64, i32* null, i32 %68, i32 0)
  store %struct.fimc_fmt* %69, %struct.fimc_fmt** %10, align 8
  %70 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %71 = icmp ne %struct.fimc_fmt* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %84

75:                                               ; preds = %60
  %76 = load %struct.fimc_frame*, %struct.fimc_frame** %12, align 8
  %77 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = call i32 @__set_frame_format(%struct.fimc_frame* %76, %struct.fimc_fmt* %77, %struct.TYPE_8__* %80)
  %82 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %83 = call i32 @fimc_alpha_ctrl_update(%struct.fimc_ctx* %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %75, %72, %38, %24
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.fimc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @fimc_try_fmt_mplane(%struct.fimc_ctx*, %struct.v4l2_format*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local %struct.fimc_fmt* @fimc_find_format(i32*, i32*, i32, i32) #1

declare dso_local i32 @get_m2m_fmt_flags(i32) #1

declare dso_local i32 @__set_frame_format(%struct.fimc_frame*, %struct.fimc_fmt*, %struct.TYPE_8__*) #1

declare dso_local i32 @fimc_alpha_ctrl_update(%struct.fimc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
