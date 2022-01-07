; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_enum_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_enum_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i64, i32, i32, i32, i32 }
%struct.et8ek8_reglist = type { i64 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }

@meta_reglist = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ET8EK8_REGLIST_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)* @et8ek8_enum_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_enum_frame_size(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  %8 = alloca %struct.et8ek8_reglist**, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %13 = call %struct.et8ek8_reglist** @et8ek8_reglist_first(i32* @meta_reglist)
  store %struct.et8ek8_reglist** %13, %struct.et8ek8_reglist*** %8, align 8
  %14 = load i32, i32* @INT_MAX, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @INT_MAX, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  br label %19

19:                                               ; preds = %79, %3
  %20 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %21 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %20, align 8
  %22 = icmp ne %struct.et8ek8_reglist* %21, null
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %25 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %24, align 8
  %26 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ET8EK8_REGLIST_MODE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %79

31:                                               ; preds = %23
  %32 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %33 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %32, align 8
  %34 = call i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist* %33, %struct.v4l2_mbus_framefmt* %9)
  %35 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %79

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %79

53:                                               ; preds = %47, %42
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %10, align 4
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %12, align 4
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %85

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78, %52, %41, %30
  %80 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %81 = getelementptr inbounds %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %80, i32 1
  store %struct.et8ek8_reglist** %81, %struct.et8ek8_reglist*** %8, align 8
  br label %19

82:                                               ; preds = %19
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %61
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.et8ek8_reglist** @et8ek8_reglist_first(i32*) #1

declare dso_local i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist*, %struct.v4l2_mbus_framefmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
