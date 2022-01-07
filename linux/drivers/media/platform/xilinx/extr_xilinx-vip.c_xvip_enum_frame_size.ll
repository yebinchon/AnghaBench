; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.c_xvip_enum_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.c_xvip_enum_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XVIP_PAD_SINK = common dso_local global i64 0, align 8
@XVIP_MIN_WIDTH = common dso_local global i32 0, align 4
@XVIP_MAX_WIDTH = common dso_local global i32 0, align 4
@XVIP_MIN_HEIGHT = common dso_local global i32 0, align 4
@XVIP_MAX_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xvip_enum_frame_size(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %9 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %80

17:                                               ; preds = %3
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %19 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %20 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %18, %struct.v4l2_subdev_pad_config* %19, i64 %22)
  store %struct.v4l2_mbus_framefmt* %23, %struct.v4l2_mbus_framefmt** %8, align 8
  %24 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %17
  %29 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %17
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %80

39:                                               ; preds = %28
  %40 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XVIP_PAD_SINK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i32, i32* @XVIP_MIN_WIDTH, align 4
  %47 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @XVIP_MAX_WIDTH, align 4
  %50 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @XVIP_MIN_HEIGHT, align 4
  %53 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @XVIP_MAX_HEIGHT, align 4
  %56 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  br label %79

58:                                               ; preds = %39
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %75 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %58, %45
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %36, %14
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
