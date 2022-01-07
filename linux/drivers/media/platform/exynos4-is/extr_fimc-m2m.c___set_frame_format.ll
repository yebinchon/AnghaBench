; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c___set_frame_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c___set_frame_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_frame = type { %struct.fimc_fmt*, i64, i64, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.fimc_fmt = type { i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_frame*, %struct.fimc_fmt*, %struct.v4l2_pix_format_mplane*)* @__set_frame_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_frame_format(%struct.fimc_frame* %0, %struct.fimc_fmt* %1, %struct.v4l2_pix_format_mplane* %2) #0 {
  %4 = alloca %struct.fimc_frame*, align 8
  %5 = alloca %struct.fimc_fmt*, align 8
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca i32, align 4
  store %struct.fimc_frame* %0, %struct.fimc_frame** %4, align 8
  store %struct.fimc_fmt* %1, %struct.fimc_fmt** %5, align 8
  store %struct.v4l2_pix_format_mplane* %2, %struct.v4l2_pix_format_mplane** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %43, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %11 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %24 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %23, i32 0, i32 10
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %38 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %37, i32 0, i32 9
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %14
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %8

46:                                               ; preds = %8
  %47 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %51 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %56 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %61 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  %62 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %66 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %71 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %76 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %78 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %80 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %82 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %83 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %82, i32 0, i32 0
  store %struct.fimc_fmt* %81, %struct.fimc_fmt** %83, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
