; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_s_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_s_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_frame, i32 }
%struct.gsc_frame = type { i32, i32, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vb2_queue = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"queue (%d) busy\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@GSC_PARAMS = common dso_local global i32 0, align 4
@GSC_DST_FMT = common dso_local global i32 0, align 4
@GSC_SRC_FMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"f_w: %d, f_h: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @gsc_m2m_s_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_s_fmt_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.gsc_ctx*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  %10 = alloca %struct.gsc_frame*, align 8
  %11 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.gsc_ctx* @fh_to_ctx(i8* %14)
  store %struct.gsc_ctx* %15, %struct.gsc_ctx** %8, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = call i32 @gsc_m2m_try_fmt_mplane(%struct.file* %16, i8* %17, %struct.v4l2_format* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %4, align 4
  br label %136

24:                                               ; preds = %3
  %25 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %27, i32 %30)
  store %struct.vb2_queue* %31, %struct.vb2_queue** %9, align 8
  %32 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %33 = call i64 @vb2_is_streaming(%struct.vb2_queue* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %136

42:                                               ; preds = %24
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %49, i32 0, i32 1
  store %struct.gsc_frame* %50, %struct.gsc_frame** %10, align 8
  br label %54

51:                                               ; preds = %42
  %52 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %52, i32 0, i32 0
  store %struct.gsc_frame* %53, %struct.gsc_frame** %10, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %57, %struct.v4l2_pix_format_mplane** %11, align 8
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %11, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 4
  %60 = call %struct.TYPE_6__* @find_fmt(i32* %59, i32* null, i32 0)
  %61 = load %struct.gsc_frame*, %struct.gsc_frame** %10, align 8
  %62 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %61, i32 0, i32 3
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %11, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.gsc_frame*, %struct.gsc_frame** %10, align 8
  %67 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.gsc_frame*, %struct.gsc_frame** %10, align 8
  %69 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %54
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %136

75:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %99, %75
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.gsc_frame*, %struct.gsc_frame** %10, align 8
  %79 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %77, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %76
  %85 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %11, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.gsc_frame*, %struct.gsc_frame** %10, align 8
  %94 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  br label %99

99:                                               ; preds = %84
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %76

102:                                              ; preds = %76
  %103 = load %struct.gsc_frame*, %struct.gsc_frame** %10, align 8
  %104 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %11, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %11, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @gsc_set_frame_size(%struct.gsc_frame* %103, i32 %106, i32 %109)
  %111 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %102
  %117 = load i32, i32* @GSC_PARAMS, align 4
  %118 = load i32, i32* @GSC_DST_FMT, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %121 = call i32 @gsc_ctx_state_lock_set(i32 %119, %struct.gsc_ctx* %120)
  br label %128

122:                                              ; preds = %102
  %123 = load i32, i32* @GSC_PARAMS, align 4
  %124 = load i32, i32* @GSC_SRC_FMT, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %127 = call i32 @gsc_ctx_state_lock_set(i32 %125, %struct.gsc_ctx* %126)
  br label %128

128:                                              ; preds = %122, %116
  %129 = load %struct.gsc_frame*, %struct.gsc_frame** %10, align 8
  %130 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.gsc_frame*, %struct.gsc_frame** %10, align 8
  %133 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %134)
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %128, %72, %35, %22
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.gsc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @gsc_m2m_try_fmt_mplane(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_streaming(%struct.vb2_queue*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local %struct.TYPE_6__* @find_fmt(i32*, i32*, i32) #1

declare dso_local i32 @gsc_set_frame_size(%struct.gsc_frame*, i32, i32) #1

declare dso_local i32 @gsc_ctx_state_lock_set(i32, %struct.gsc_ctx*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
