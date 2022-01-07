; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx319.c_imx319_update_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx319.c_imx319_update_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx319 = type { i32 }
%struct.imx319_mode = type { i32, i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx319*, %struct.imx319_mode*, %struct.v4l2_subdev_format*)* @imx319_update_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx319_update_pad_format(%struct.imx319* %0, %struct.imx319_mode* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.imx319*, align 8
  %5 = alloca %struct.imx319_mode*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  store %struct.imx319* %0, %struct.imx319** %4, align 8
  store %struct.imx319_mode* %1, %struct.imx319_mode** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %7 = load %struct.imx319_mode*, %struct.imx319_mode** %5, align 8
  %8 = getelementptr inbounds %struct.imx319_mode, %struct.imx319_mode* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 4
  %13 = load %struct.imx319_mode*, %struct.imx319_mode** %5, align 8
  %14 = getelementptr inbounds %struct.imx319_mode, %struct.imx319_mode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.imx319*, %struct.imx319** %4, align 8
  %20 = call i32 @imx319_get_format_code(%struct.imx319* %19)
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  ret void
}

declare dso_local i32 @imx319_get_format_code(%struct.imx319*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
