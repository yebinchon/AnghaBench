; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c___fimc_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c___fimc_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_frame = type { i32*, i32*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fimc_get_format(%struct.fimc_frame* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.fimc_frame*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca i32, align 4
  store %struct.fimc_frame* %0, %struct.fimc_frame** %3, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %4, align 8
  %7 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %9, %struct.v4l2_pix_format_mplane** %5, align 8
  %10 = load %struct.fimc_frame*, %struct.fimc_frame** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fimc_frame*, %struct.fimc_frame** %3, align 8
  %16 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %21 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.fimc_frame*, %struct.fimc_frame** %3, align 8
  %24 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %31 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.fimc_frame*, %struct.fimc_frame** %3, align 8
  %34 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %75, %2
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %40
  %47 = load %struct.fimc_frame*, %struct.fimc_frame** %3, align 8
  %48 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %53, i32* %60, align 4
  %61 = load %struct.fimc_frame*, %struct.fimc_frame** %3, align 8
  %62 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %46
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %40

78:                                               ; preds = %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
