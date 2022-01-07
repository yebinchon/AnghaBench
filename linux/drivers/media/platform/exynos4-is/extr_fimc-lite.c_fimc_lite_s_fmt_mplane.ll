; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_s_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_s_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fimc_lite = type { i32*, i32, %struct.flite_frame }
%struct.flite_frame = type { i32, i32, %struct.fimc_fmt* }
%struct.fimc_fmt = type { i32* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @fimc_lite_s_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_s_fmt_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.fimc_lite*, align 8
  %10 = alloca %struct.flite_frame*, align 8
  %11 = alloca %struct.fimc_fmt*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %15, %struct.v4l2_pix_format_mplane** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.fimc_lite* @video_drvdata(%struct.file* %16)
  store %struct.fimc_lite* %17, %struct.fimc_lite** %9, align 8
  %18 = load %struct.fimc_lite*, %struct.fimc_lite** %9, align 8
  %19 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %18, i32 0, i32 2
  store %struct.flite_frame* %19, %struct.flite_frame** %10, align 8
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %11, align 8
  %20 = load %struct.fimc_lite*, %struct.fimc_lite** %9, align 8
  %21 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %20, i32 0, i32 1
  %22 = call i64 @vb2_is_busy(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %76

27:                                               ; preds = %3
  %28 = load %struct.fimc_lite*, %struct.fimc_lite** %9, align 8
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @fimc_lite_try_fmt(%struct.fimc_lite* %28, %struct.v4l2_pix_format_mplane* %31, %struct.fimc_fmt** %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %76

37:                                               ; preds = %27
  %38 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %39 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %40 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %39, i32 0, i32 2
  store %struct.fimc_fmt* %38, %struct.fimc_fmt** %40, align 8
  %41 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %49 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %47, %52
  %54 = sdiv i32 %53, 8
  %55 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max(i32 %54, i32 %60)
  %62 = load %struct.fimc_lite*, %struct.fimc_lite** %9, align 8
  %63 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %70 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %75 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %37, %35, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.fimc_lite* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @fimc_lite_try_fmt(%struct.fimc_lite*, %struct.v4l2_pix_format_mplane*, %struct.fimc_fmt**) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
