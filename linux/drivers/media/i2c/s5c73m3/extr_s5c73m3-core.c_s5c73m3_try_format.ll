; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32 }
%struct.s5c73m3_frame_size = type { i32 }

@S5C73M3_ISP_PAD = common dso_local global i64 0, align 8
@RES_ISP = common dso_local global i32 0, align 4
@S5C73M3_ISP_FMT = common dso_local global i32 0, align 4
@RES_JPEG = common dso_local global i32 0, align 4
@S5C73M3_JPEG_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5c73m3*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.s5c73m3_frame_size**)* @s5c73m3_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5c73m3_try_format(%struct.s5c73m3* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2, %struct.s5c73m3_frame_size** %3) #0 {
  %5 = alloca %struct.s5c73m3*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.s5c73m3_frame_size**, align 8
  %9 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  store %struct.s5c73m3_frame_size** %3, %struct.s5c73m3_frame_size*** %8, align 8
  %10 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S5C73M3_ISP_PAD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 1
  %18 = load i32, i32* @RES_ISP, align 4
  %19 = call %struct.s5c73m3_frame_size* @s5c73m3_find_frame_size(i32* %17, i32 %18)
  %20 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %8, align 8
  store %struct.s5c73m3_frame_size* %19, %struct.s5c73m3_frame_size** %20, align 8
  %21 = load i32, i32* @S5C73M3_ISP_FMT, align 4
  store i32 %21, i32* %9, align 4
  br label %29

22:                                               ; preds = %4
  %23 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %23, i32 0, i32 1
  %25 = load i32, i32* @RES_JPEG, align 4
  %26 = call %struct.s5c73m3_frame_size* @s5c73m3_find_frame_size(i32* %24, i32 %25)
  %27 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %8, align 8
  store %struct.s5c73m3_frame_size* %26, %struct.s5c73m3_frame_size** %27, align 8
  %28 = load i32, i32* @S5C73M3_JPEG_FMT, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %30, i32 0, i32 1
  %32 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %8, align 8
  %33 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @s5c73m3_fill_mbus_fmt(i32* %31, %struct.s5c73m3_frame_size* %33, i32 %34)
  ret void
}

declare dso_local %struct.s5c73m3_frame_size* @s5c73m3_find_frame_size(i32*, i32) #1

declare dso_local i32 @s5c73m3_fill_mbus_fmt(i32*, %struct.s5c73m3_frame_size*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
