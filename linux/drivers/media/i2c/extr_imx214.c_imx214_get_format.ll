; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, i32 }
%struct.imx214 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @imx214_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx214_get_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.imx214*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.imx214* @to_imx214(%struct.v4l2_subdev* %8)
  store %struct.imx214* %9, %struct.imx214** %7, align 8
  %10 = load %struct.imx214*, %struct.imx214** %7, align 8
  %11 = getelementptr inbounds %struct.imx214, %struct.imx214* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.imx214*, %struct.imx214** %7, align 8
  %14 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %15 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @__imx214_get_pad_format(%struct.imx214* %13, %struct.v4l2_subdev_pad_config* %14, i32 %17, i32 %20)
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.imx214*, %struct.imx214** %7, align 8
  %26 = getelementptr inbounds %struct.imx214, %struct.imx214* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret i32 0
}

declare dso_local %struct.imx214* @to_imx214(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @__imx214_get_pad_format(%struct.imx214*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
