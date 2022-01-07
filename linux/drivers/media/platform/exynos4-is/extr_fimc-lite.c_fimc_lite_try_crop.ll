; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_try_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_try_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i32, %struct.TYPE_2__*, %struct.flite_frame }
%struct.TYPE_2__ = type { i32 }
%struct.flite_frame = type { i64, i64 }
%struct.v4l2_rect = type { i64, i64, i8*, i8* }

@u32 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"(%d,%d)/%dx%d, sink fmt: %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_lite*, %struct.v4l2_rect*)* @fimc_lite_try_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_lite_try_crop(%struct.fimc_lite* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.flite_frame*, align 8
  store %struct.fimc_lite* %0, %struct.fimc_lite** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %6 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %6, i32 0, i32 2
  store %struct.flite_frame* %7, %struct.flite_frame** %5, align 8
  %8 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 1
  %10 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %11 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 0
  %15 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %16 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @v4l_bound_align_image(i64* %9, i32 0, i64 %12, i32 0, i64* %14, i32 0, i64 %17, i32 0, i32 0)
  %19 = load i32, i32* @u32, align 4
  %20 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %24 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = call i8* @clamp_t(i32 %19, i8* %22, i32 0, i64 %29)
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %37 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @round_down(i8* %35, i32 %40)
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @u32, align 4
  %45 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %49 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = call i8* @clamp_t(i32 %44, i8* %47, i32 0, i64 %54)
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @debug, align 4
  %59 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %60 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %59, i32 0, i32 0
  %61 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %68 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %74 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %77 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @v4l2_dbg(i32 1, i32 %58, i32* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %63, i8* %66, i64 %69, i64 %72, i64 %75, i64 %78)
  ret void
}

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i64, i32, i64*, i32, i64, i32, i32) #1

declare dso_local i8* @clamp_t(i32, i8*, i32, i64) #1

declare dso_local i8* @round_down(i8*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i8*, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
