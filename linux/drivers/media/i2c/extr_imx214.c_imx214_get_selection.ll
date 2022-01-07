; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, i32, i32 }
%struct.imx214 = type { i32 }

@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @imx214_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx214_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.imx214*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.imx214* @to_imx214(%struct.v4l2_subdev* %9)
  store %struct.imx214* %10, %struct.imx214** %8, align 8
  %11 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.imx214*, %struct.imx214** %8, align 8
  %21 = getelementptr inbounds %struct.imx214, %struct.imx214* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.imx214*, %struct.imx214** %8, align 8
  %24 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %25 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @__imx214_get_pad_crop(%struct.imx214* %23, %struct.v4l2_subdev_pad_config* %24, i32 %27, i32 %30)
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.imx214*, %struct.imx214** %8, align 8
  %36 = getelementptr inbounds %struct.imx214, %struct.imx214* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %19, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.imx214* @to_imx214(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @__imx214_get_pad_crop(%struct.imx214*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
