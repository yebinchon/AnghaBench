; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { %struct.s5c73m3_frame_size**, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.s5c73m3_frame_size = type { i32 }

@RES_ISP = common dso_local global i64 0, align 8
@S5C73M3_ISP_FMT = common dso_local global i32 0, align 4
@RES_JPEG = common dso_local global i64 0, align 8
@S5C73M3_JPEG_FMT = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5c73m3*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.s5c73m3_frame_size**)* @s5c73m3_oif_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5c73m3_oif_try_format(%struct.s5c73m3* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2, %struct.s5c73m3_frame_size** %3) #0 {
  %5 = alloca %struct.s5c73m3*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.s5c73m3_frame_size**, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  store %struct.s5c73m3_frame_size** %3, %struct.s5c73m3_frame_size*** %8, align 8
  %11 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %12 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %11, i32 0, i32 1
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %9, align 8
  %13 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %31 [
    i32 130, label %16
    i32 129, label %23
    i32 128, label %30
  ]

16:                                               ; preds = %4
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 1
  %19 = load i64, i64* @RES_ISP, align 8
  %20 = call %struct.s5c73m3_frame_size* @s5c73m3_find_frame_size(%struct.TYPE_4__* %18, i64 %19)
  %21 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %8, align 8
  store %struct.s5c73m3_frame_size* %20, %struct.s5c73m3_frame_size** %21, align 8
  %22 = load i32, i32* @S5C73M3_ISP_FMT, align 4
  store i32 %22, i32* %10, align 4
  br label %64

23:                                               ; preds = %4
  %24 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %24, i32 0, i32 1
  %26 = load i64, i64* @RES_JPEG, align 8
  %27 = call %struct.s5c73m3_frame_size* @s5c73m3_find_frame_size(%struct.TYPE_4__* %25, i64 %26)
  %28 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %8, align 8
  store %struct.s5c73m3_frame_size* %27, %struct.s5c73m3_frame_size** %28, align 8
  %29 = load i32, i32* @S5C73M3_JPEG_FMT, align 4
  store i32 %29, i32* %10, align 4
  br label %64

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %4, %30
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @S5C73M3_JPEG_FMT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @S5C73M3_JPEG_FMT, align 4
  store i32 %39, i32* %10, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @S5C73M3_ISP_FMT, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %50 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %49, i32 0, i32 0
  %51 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %50, align 8
  %52 = load i64, i64* @RES_ISP, align 8
  %53 = getelementptr inbounds %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %51, i64 %52
  %54 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %53, align 8
  %55 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %8, align 8
  store %struct.s5c73m3_frame_size* %54, %struct.s5c73m3_frame_size** %55, align 8
  br label %63

56:                                               ; preds = %42
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %58 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %59 = call %struct.TYPE_4__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %57, %struct.v4l2_subdev_pad_config* %58, i32 130)
  %60 = load i64, i64* @RES_ISP, align 8
  %61 = call %struct.s5c73m3_frame_size* @s5c73m3_find_frame_size(%struct.TYPE_4__* %59, i64 %60)
  %62 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %8, align 8
  store %struct.s5c73m3_frame_size* %61, %struct.s5c73m3_frame_size** %62, align 8
  br label %63

63:                                               ; preds = %56, %48
  br label %64

64:                                               ; preds = %63, %23, %16
  %65 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %65, i32 0, i32 1
  %67 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %8, align 8
  %68 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @s5c73m3_fill_mbus_fmt(%struct.TYPE_4__* %66, %struct.s5c73m3_frame_size* %68, i32 %69)
  ret void
}

declare dso_local %struct.s5c73m3_frame_size* @s5c73m3_find_frame_size(%struct.TYPE_4__*, i64) #1

declare dso_local %struct.TYPE_4__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @s5c73m3_fill_mbus_fmt(%struct.TYPE_4__*, %struct.s5c73m3_frame_size*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
