; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_enum_frame_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_enum_frame_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i64, i32, i32, i32, i32 }

@supported_modes = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR10_1X10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)* @ov5695_enum_frame_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5695_enum_frame_sizes(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %8 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @supported_modes, align 8
  %12 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  %13 = icmp uge i64 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %63

17:                                               ; preds = %3
  %18 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MEDIA_BUS_FMT_SBGGR10_1X10, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %17
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @supported_modes, align 8
  %28 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @supported_modes, align 8
  %37 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @supported_modes, align 8
  %46 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @supported_modes, align 8
  %55 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %26, %23, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
