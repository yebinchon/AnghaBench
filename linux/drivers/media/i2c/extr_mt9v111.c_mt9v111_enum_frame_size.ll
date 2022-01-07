; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_enum_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_enum_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i32, i32, i32, i32, i64 }

@mt9v111_frame_sizes = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)* @mt9v111_enum_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_enum_frame_size(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %8 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v111_frame_sizes, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %12
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v111_frame_sizes, align 8
  %24 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v111_frame_sizes, align 8
  %33 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v111_frame_sizes, align 8
  %42 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v111_frame_sizes, align 8
  %51 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %22, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
