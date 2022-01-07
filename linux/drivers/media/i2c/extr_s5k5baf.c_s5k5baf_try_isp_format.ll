; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_try_isp_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_try_isp_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }

@S5K5BAF_WIN_WIDTH_MIN = common dso_local global i32 0, align 4
@S5K5BAF_CIS_WIDTH = common dso_local global i32 0, align 4
@S5K5BAF_WIN_HEIGHT_MIN = common dso_local global i32 0, align 4
@S5K5BAF_CIS_HEIGHT = common dso_local global i32 0, align 4
@s5k5baf_formats = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_mbus_framefmt*)* @s5k5baf_try_isp_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_try_isp_format(%struct.v4l2_mbus_framefmt* %0) #0 {
  %2 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %3 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %2, align 8
  %4 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %4, i32 0, i32 4
  %6 = load i32, i32* @S5K5BAF_WIN_WIDTH_MIN, align 4
  %7 = load i32, i32* @S5K5BAF_CIS_WIDTH, align 4
  %8 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %8, i32 0, i32 3
  %10 = load i32, i32* @S5K5BAF_WIN_HEIGHT_MIN, align 4
  %11 = load i32, i32* @S5K5BAF_CIS_HEIGHT, align 4
  %12 = call i32 @v4l_bound_align_image(i32* %5, i32 %6, i32 %7, i32 1, i32* %9, i32 %10, i32 %11, i32 1, i32 0)
  %13 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %14 = call i32 @s5k5baf_find_pixfmt(%struct.v4l2_mbus_framefmt* %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s5k5baf_formats, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s5k5baf_formats, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @s5k5baf_find_pixfmt(%struct.v4l2_mbus_framefmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
