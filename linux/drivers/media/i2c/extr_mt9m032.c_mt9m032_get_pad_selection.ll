; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_get_pad_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_get_pad_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, i32 }
%struct.mt9m032 = type { i32 }

@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @mt9m032_get_pad_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m032_get_pad_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.mt9m032*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.mt9m032* @to_mt9m032(%struct.v4l2_subdev* %9)
  store %struct.mt9m032* %10, %struct.mt9m032** %8, align 8
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
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %21 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %24 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %25 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @__mt9m032_get_pad_crop(%struct.mt9m032* %23, %struct.v4l2_subdev_pad_config* %24, i32 %27)
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %33 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %19, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.mt9m032* @to_mt9m032(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @__mt9m032_get_pad_crop(%struct.mt9m032*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
