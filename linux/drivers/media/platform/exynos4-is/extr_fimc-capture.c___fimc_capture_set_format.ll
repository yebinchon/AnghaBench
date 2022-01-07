; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c___fimc_capture_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c___fimc_capture_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { %struct.fimc_vid_cap }
%struct.fimc_vid_cap = type { i32, i32, %struct.fimc_ctx* }
%struct.fimc_ctx = type { i32, %struct.fimc_frame, %struct.fimc_frame }
%struct.fimc_frame = type { %struct.fimc_fmt*, i32*, i32* }
%struct.fimc_fmt = type { i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@FIMC_COMPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_dev*, %struct.v4l2_format*)* @__fimc_capture_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fimc_capture_set_format(%struct.fimc_dev* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.fimc_vid_cap*, align 8
  %7 = alloca %struct.fimc_ctx*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.fimc_frame*, align 8
  %10 = alloca %struct.fimc_fmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %13 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %14 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %13, i32 0, i32 0
  store %struct.fimc_vid_cap* %14, %struct.fimc_vid_cap** %6, align 8
  %15 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %16 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %15, i32 0, i32 2
  %17 = load %struct.fimc_ctx*, %struct.fimc_ctx** %16, align 8
  store %struct.fimc_ctx* %17, %struct.fimc_ctx** %7, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %20, %struct.v4l2_pix_format_mplane** %8, align 8
  %21 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %21, i32 0, i32 2
  store %struct.fimc_frame* %22, %struct.fimc_frame** %9, align 8
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %10, align 8
  %23 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %24 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %24, i32 0, i32 1
  %26 = call i64 @vb2_is_busy(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %145

31:                                               ; preds = %2
  %32 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %34 = load %struct.fimc_frame*, %struct.fimc_frame** %9, align 8
  %35 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %34, i32 0, i32 0
  %36 = call i32 @__video_try_or_set_format(%struct.fimc_dev* %32, %struct.v4l2_format* %33, i32 0, %struct.fimc_fmt** %10, %struct.fimc_fmt** %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %3, align 4
  br label %145

41:                                               ; preds = %31
  %42 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %43 = call i32 @fimc_alpha_ctrl_update(%struct.fimc_ctx* %42)
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %81, %41
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.fimc_frame*, %struct.fimc_frame** %9, align 8
  %47 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %46, i32 0, i32 0
  %48 = load %struct.fimc_fmt*, %struct.fimc_fmt** %47, align 8
  %49 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %44
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fimc_frame*, %struct.fimc_frame** %9, align 8
  %62 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fimc_frame*, %struct.fimc_frame** %9, align 8
  %76 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %52
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %44

84:                                               ; preds = %44
  %85 = load %struct.fimc_frame*, %struct.fimc_frame** %9, align 8
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @set_frame_bounds(%struct.fimc_frame* %85, i32 %88, i32 %91)
  %93 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %94 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FIMC_COMPOSE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %84
  %100 = load %struct.fimc_frame*, %struct.fimc_frame** %9, align 8
  %101 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %102 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @set_frame_crop(%struct.fimc_frame* %100, i32 0, i32 0, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %99, %84
  %109 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %110 = load %struct.fimc_frame*, %struct.fimc_frame** %9, align 8
  %111 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %110, i32 0, i32 0
  %112 = load %struct.fimc_fmt*, %struct.fimc_fmt** %111, align 8
  %113 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fimc_capture_mark_jpeg_xfer(%struct.fimc_ctx* %109, i32 %114)
  %116 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %117 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %143, label %120

120:                                              ; preds = %108
  %121 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %122 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %123 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %123, i32 0, i32 0
  store %struct.fimc_fmt* %121, %struct.fimc_fmt** %124, align 8
  %125 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %126 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %125, i32 0, i32 1
  %127 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %128 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %131 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @set_frame_bounds(%struct.fimc_frame* %126, i32 %129, i32 %132)
  %134 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %135 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %134, i32 0, i32 1
  %136 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %137 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %140 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @set_frame_crop(%struct.fimc_frame* %135, i32 0, i32 0, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %120, %108
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %39, %28
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @__video_try_or_set_format(%struct.fimc_dev*, %struct.v4l2_format*, i32, %struct.fimc_fmt**, %struct.fimc_fmt**) #1

declare dso_local i32 @fimc_alpha_ctrl_update(%struct.fimc_ctx*) #1

declare dso_local i32 @set_frame_bounds(%struct.fimc_frame*, i32, i32) #1

declare dso_local i32 @set_frame_crop(%struct.fimc_frame*, i32, i32, i32, i32) #1

declare dso_local i32 @fimc_capture_mark_jpeg_xfer(%struct.fimc_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
