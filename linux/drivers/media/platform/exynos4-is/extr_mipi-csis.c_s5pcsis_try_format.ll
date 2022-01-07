; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csis_pix_format = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }

@s5pcsis_formats = common dso_local global %struct.csis_pix_format* null, align 8
@CSIS_MAX_PIX_WIDTH = common dso_local global i32 0, align 4
@CSIS_MAX_PIX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csis_pix_format* (%struct.v4l2_mbus_framefmt*)* @s5pcsis_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csis_pix_format* @s5pcsis_try_format(%struct.v4l2_mbus_framefmt* %0) #0 {
  %2 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %3 = alloca %struct.csis_pix_format*, align 8
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %2, align 8
  %4 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %5 = call %struct.csis_pix_format* @find_csis_format(%struct.v4l2_mbus_framefmt* %4)
  store %struct.csis_pix_format* %5, %struct.csis_pix_format** %3, align 8
  %6 = load %struct.csis_pix_format*, %struct.csis_pix_format** %3, align 8
  %7 = icmp eq %struct.csis_pix_format* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.csis_pix_format*, %struct.csis_pix_format** @s5pcsis_formats, align 8
  %10 = getelementptr inbounds %struct.csis_pix_format, %struct.csis_pix_format* %9, i64 0
  store %struct.csis_pix_format* %10, %struct.csis_pix_format** %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.csis_pix_format*, %struct.csis_pix_format** %3, align 8
  %13 = getelementptr inbounds %struct.csis_pix_format, %struct.csis_pix_format* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %17, i32 0, i32 1
  %19 = load i32, i32* @CSIS_MAX_PIX_WIDTH, align 4
  %20 = load %struct.csis_pix_format*, %struct.csis_pix_format** %3, align 8
  %21 = getelementptr inbounds %struct.csis_pix_format, %struct.csis_pix_format* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %23, i32 0, i32 0
  %25 = load i32, i32* @CSIS_MAX_PIX_HEIGHT, align 4
  %26 = call i32 @v4l_bound_align_image(i32* %18, i32 1, i32 %19, i32 %22, i32* %24, i32 1, i32 %25, i32 1, i32 0)
  %27 = load %struct.csis_pix_format*, %struct.csis_pix_format** %3, align 8
  ret %struct.csis_pix_format* %27
}

declare dso_local %struct.csis_pix_format* @find_csis_format(%struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
