; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_try_compose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_try_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i32, %struct.flite_frame, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.flite_frame = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i64, i8*, i8* }

@u32 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"(%d,%d)/%dx%d, source fmt: %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_lite*, %struct.v4l2_rect*)* @fimc_lite_try_compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_lite_try_compose(%struct.fimc_lite* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.flite_frame*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  store %struct.fimc_lite* %0, %struct.fimc_lite** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %7 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %8 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %7, i32 0, i32 1
  store %struct.flite_frame* %8, %struct.flite_frame** %5, align 8
  %9 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.v4l2_rect* %11, %struct.v4l2_rect** %6, align 8
  %12 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @u32, align 4
  %23 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %27 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = call i8* @clamp_t(i32 %22, i8* %25, i32 0, i64 %32)
  %34 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %40 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @round_down(i8* %38, i32 %43)
  %45 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @u32, align 4
  %48 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %52 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %56 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = call i8* @clamp_t(i32 %47, i8* %50, i32 0, i64 %58)
  %60 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @debug, align 4
  %63 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %64 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %63, i32 0, i32 0
  %65 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %66 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %75 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %78 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.flite_frame*, %struct.flite_frame** %5, align 8
  %81 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @v4l2_dbg(i32 1, i32 %62, i32* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %70, i64 %73, i64 %76, i64 %79, i64 %82)
  ret void
}

declare dso_local i8* @clamp_t(i32, i8*, i32, i64) #1

declare dso_local i8* @round_down(i8*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i8*, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
