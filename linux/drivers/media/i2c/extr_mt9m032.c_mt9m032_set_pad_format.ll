; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_set_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_set_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }
%struct.mt9m032 = type { i32, i64 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @mt9m032_set_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m032_set_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.mt9m032*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.mt9m032* @to_mt9m032(%struct.v4l2_subdev* %9)
  store %struct.mt9m032* %10, %struct.mt9m032** %7, align 8
  %11 = load %struct.mt9m032*, %struct.mt9m032** %7, align 8
  %12 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mt9m032*, %struct.mt9m032** %7, align 8
  %15 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %37

27:                                               ; preds = %18, %3
  %28 = load %struct.mt9m032*, %struct.mt9m032** %7, align 8
  %29 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %30 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @__mt9m032_get_pad_format(%struct.mt9m032* %28, %struct.v4l2_subdev_pad_config* %29, i32 %32)
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load %struct.mt9m032*, %struct.mt9m032** %7, align 8
  %39 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local %struct.mt9m032* @to_mt9m032(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @__mt9m032_get_pad_format(%struct.mt9m032*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
