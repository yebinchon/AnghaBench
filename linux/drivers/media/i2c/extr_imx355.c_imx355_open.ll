; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_fh = type { i32 }
%struct.imx355 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* @imx355_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx355_open(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_fh* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_fh*, align 8
  %5 = alloca %struct.imx355*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_fh* %1, %struct.v4l2_subdev_fh** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.imx355* @to_imx355(%struct.v4l2_subdev* %7)
  store %struct.imx355* %8, %struct.imx355** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %9, i32 %12, i32 0)
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %6, align 8
  %14 = load %struct.imx355*, %struct.imx355** %5, align 8
  %15 = getelementptr inbounds %struct.imx355, %struct.imx355* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.imx355*, %struct.imx355** %5, align 8
  %18 = getelementptr inbounds %struct.imx355, %struct.imx355* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.imx355*, %struct.imx355** %5, align 8
  %25 = getelementptr inbounds %struct.imx355, %struct.imx355* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.imx355*, %struct.imx355** %5, align 8
  %32 = call i32 @imx355_get_format_code(%struct.imx355* %31)
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.imx355*, %struct.imx355** %5, align 8
  %39 = getelementptr inbounds %struct.imx355, %struct.imx355* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  ret i32 0
}

declare dso_local %struct.imx355* @to_imx355(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @imx355_get_format_code(%struct.imx355*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
