; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_enum_frame_ival.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_enum_frame_ival.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i64, i64, i64, i32 }
%struct.et8ek8_reglist = type { i64, %struct.et8ek8_mode }
%struct.et8ek8_mode = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i64, i64 }

@meta_reglist = common dso_local global i32 0, align 4
@ET8EK8_REGLIST_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)* @et8ek8_enum_frame_ival to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_enum_frame_ival(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_interval_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_interval_enum*, align 8
  %8 = alloca %struct.et8ek8_reglist**, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.et8ek8_mode*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_interval_enum* %2, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %12 = call %struct.et8ek8_reglist** @et8ek8_reglist_first(i32* @meta_reglist)
  store %struct.et8ek8_reglist** %12, %struct.et8ek8_reglist*** %8, align 8
  %13 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %68, %3
  %17 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %18 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %17, align 8
  %19 = icmp ne %struct.et8ek8_reglist* %18, null
  br i1 %19, label %20, label %71

20:                                               ; preds = %16
  %21 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %22 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %21, align 8
  %23 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %22, i32 0, i32 1
  store %struct.et8ek8_mode* %23, %struct.et8ek8_mode** %11, align 8
  %24 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %25 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %24, align 8
  %26 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ET8EK8_REGLIST_MODE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %68

31:                                               ; preds = %20
  %32 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %33 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %32, align 8
  %34 = call i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist* %33, %struct.v4l2_mbus_framefmt* %9)
  %35 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %68

42:                                               ; preds = %31
  %43 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %42
  br label %68

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %10, align 4
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %11, align 8
  %63 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %4, align 4
  br label %74

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %56, %41, %30
  %69 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %70 = getelementptr inbounds %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %69, i32 1
  store %struct.et8ek8_reglist** %70, %struct.et8ek8_reglist*** %8, align 8
  br label %16

71:                                               ; preds = %16
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %61
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.et8ek8_reglist** @et8ek8_reglist_first(i32*) #1

declare dso_local i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist*, %struct.v4l2_mbus_framefmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
