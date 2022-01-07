; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.c_xvip_enum_mbus_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.c_xvip_enum_mbus_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i64, i32, i32, i64 }
%struct.v4l2_mbus_framefmt = type { i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xvip_enum_mbus_code(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_mbus_code_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_mbus_code_enum*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_mbus_code_enum* %2, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %9 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %17
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %27 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %28 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %26, %struct.v4l2_subdev_pad_config* %27, i32 %30)
  store %struct.v4l2_mbus_framefmt* %31, %struct.v4l2_mbus_framefmt** %8, align 8
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %25, %22, %14
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
