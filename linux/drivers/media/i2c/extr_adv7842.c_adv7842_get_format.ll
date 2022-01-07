; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.adv7842_state = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@ADV7842_PAD_SOURCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADV7842_MODE_SDP = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv7842_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_get_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.adv7842_state*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.adv7842_state* %11, %struct.adv7842_state** %8, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ADV7842_PAD_SOURCE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %94

20:                                               ; preds = %3
  %21 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %22 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ADV7842_MODE_SDP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %28 = call i32 @sdp_read(%struct.v4l2_subdev* %27, i32 90)
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %94

34:                                               ; preds = %26
  %35 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_2X8, align 4
  %36 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 720, i32* %41, align 8
  %42 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %43 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @V4L2_STD_525_60, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 480, i32* %51, align 4
  br label %56

52:                                               ; preds = %34
  %53 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 576, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %58 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %94

61:                                               ; preds = %20
  %62 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %63 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %63, i32 0, i32 2
  %65 = call i32 @adv7842_fill_format(%struct.adv7842_state* %62, %struct.TYPE_4__* %64)
  %66 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %61
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %73 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %74 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %72, %struct.v4l2_subdev_pad_config* %73, i64 %76)
  store %struct.v4l2_mbus_framefmt* %77, %struct.v4l2_mbus_framefmt** %9, align 8
  %78 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  br label %93

84:                                               ; preds = %61
  %85 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %86 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  br label %93

93:                                               ; preds = %84, %71
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %56, %31, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @sdp_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @adv7842_fill_format(%struct.adv7842_state*, %struct.TYPE_4__*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
