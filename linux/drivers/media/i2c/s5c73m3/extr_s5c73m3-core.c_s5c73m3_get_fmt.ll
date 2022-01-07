; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32, i32 }
%struct.s5c73m3 = type { i32, %struct.s5c73m3_frame_size** }
%struct.s5c73m3_frame_size = type { i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@S5C73M3_ISP_FMT = common dso_local global i32 0, align 4
@RES_ISP = common dso_local global i64 0, align 8
@S5C73M3_JPEG_FMT = common dso_local global i32 0, align 4
@RES_JPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @s5c73m3_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.s5c73m3*, align 8
  %9 = alloca %struct.s5c73m3_frame_size*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.s5c73m3* @sensor_sd_to_s5c73m3(%struct.v4l2_subdev* %11)
  store %struct.s5c73m3* %12, %struct.s5c73m3** %8, align 8
  %13 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %19, %struct.v4l2_subdev_pad_config* %20, i32 %23)
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %66

28:                                               ; preds = %3
  %29 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %30 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %51 [
    i32 129, label %35
    i32 128, label %43
  ]

35:                                               ; preds = %28
  %36 = load i32, i32* @S5C73M3_ISP_FMT, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %38 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %37, i32 0, i32 1
  %39 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %38, align 8
  %40 = load i64, i64* @RES_ISP, align 8
  %41 = getelementptr inbounds %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %39, i64 %40
  %42 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %41, align 8
  store %struct.s5c73m3_frame_size* %42, %struct.s5c73m3_frame_size** %9, align 8
  br label %57

43:                                               ; preds = %28
  %44 = load i32, i32* @S5C73M3_JPEG_FMT, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %46 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %45, i32 0, i32 1
  %47 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %46, align 8
  %48 = load i64, i64* @RES_JPEG, align 8
  %49 = getelementptr inbounds %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %47, i64 %48
  %50 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %49, align 8
  store %struct.s5c73m3_frame_size* %50, %struct.s5c73m3_frame_size** %9, align 8
  br label %57

51:                                               ; preds = %28
  %52 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %53 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %66

57:                                               ; preds = %43, %35
  %58 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %58, i32 0, i32 2
  %60 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @s5c73m3_fill_mbus_fmt(i32* %59, %struct.s5c73m3_frame_size* %60, i32 %61)
  %63 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %64 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %57, %51, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.s5c73m3* @sensor_sd_to_s5c73m3(%struct.v4l2_subdev*) #1

declare dso_local i32* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @s5c73m3_fill_mbus_fmt(i32*, %struct.s5c73m3_frame_size*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
