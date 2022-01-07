; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.ov5695 = type { i32, i32, i32, %struct.ov5695_mode* }
%struct.ov5695_mode = type { i64, i64, i64, i64 }

@MEDIA_BUS_FMT_SBGGR10_1X10 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@OV5695_VTS_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov5695_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5695_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.ov5695*, align 8
  %8 = alloca %struct.ov5695_mode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.ov5695* @to_ov5695(%struct.v4l2_subdev* %11)
  store %struct.ov5695* %12, %struct.ov5695** %7, align 8
  %13 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %14 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %17 = call %struct.ov5695_mode* @ov5695_find_best_fit(%struct.v4l2_subdev_format* %16)
  store %struct.ov5695_mode* %17, %struct.ov5695_mode** %8, align 8
  %18 = load i32, i32* @MEDIA_BUS_FMT_SBGGR10_1X10, align 4
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 8
  %22 = load %struct.ov5695_mode*, %struct.ov5695_mode** %8, align 8
  %23 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i64 %24, i64* %27, align 8
  %28 = load %struct.ov5695_mode*, %struct.ov5695_mode** %8, align 8
  %29 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 %30, i64* %33, align 8
  %34 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %35 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %80

44:                                               ; preds = %3
  %45 = load %struct.ov5695_mode*, %struct.ov5695_mode** %8, align 8
  %46 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %47 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %46, i32 0, i32 3
  store %struct.ov5695_mode* %45, %struct.ov5695_mode** %47, align 8
  %48 = load %struct.ov5695_mode*, %struct.ov5695_mode** %8, align 8
  %49 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ov5695_mode*, %struct.ov5695_mode** %8, align 8
  %52 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  store i64 %54, i64* %9, align 8
  %55 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %56 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @__v4l2_ctrl_modify_range(i32 %57, i64 %58, i64 %59, i32 1, i64 %60)
  %62 = load %struct.ov5695_mode*, %struct.ov5695_mode** %8, align 8
  %63 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ov5695_mode*, %struct.ov5695_mode** %8, align 8
  %66 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  store i64 %68, i64* %10, align 8
  %69 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %70 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @OV5695_VTS_MAX, align 8
  %74 = load %struct.ov5695_mode*, %struct.ov5695_mode** %8, align 8
  %75 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @__v4l2_ctrl_modify_range(i32 %71, i64 %72, i64 %77, i32 1, i64 %78)
  br label %80

80:                                               ; preds = %44, %43
  %81 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %82 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  ret i32 0
}

declare dso_local %struct.ov5695* @to_ov5695(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ov5695_mode* @ov5695_find_best_fit(%struct.v4l2_subdev_format*) #1

declare dso_local i32 @__v4l2_ctrl_modify_range(i32, i64, i64, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
