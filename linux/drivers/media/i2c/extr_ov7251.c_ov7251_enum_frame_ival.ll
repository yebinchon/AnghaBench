; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_enum_frame_ival.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_enum_frame_ival.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i64, i64, i32 }

@ov7251_mode_info_data = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)* @ov7251_enum_frame_ival to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7251_enum_frame_ival(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_interval_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_interval_enum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_interval_enum* %2, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %10 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %55, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov7251_mode_info_data, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %13
  %19 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov7251_mode_info_data, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %21, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %18
  %30 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov7251_mode_info_data, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %32, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29, %18
  br label %55

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %8, align 4
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov7251_mode_info_data, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %4, align 4
  br label %61

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %13

58:                                               ; preds = %13
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %45
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
