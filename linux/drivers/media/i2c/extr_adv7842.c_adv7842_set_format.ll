; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.adv7842_state = type { i64, %struct.adv7842_format_info* }
%struct.adv7842_format_info = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@ADV7842_PAD_SOURCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADV7842_MODE_SDP = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv7842_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.adv7842_state*, align 8
  %9 = alloca %struct.adv7842_format_info*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.adv7842_state* %12, %struct.adv7842_state** %8, align 8
  %13 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ADV7842_PAD_SOURCE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %81

21:                                               ; preds = %3
  %22 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %23 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ADV7842_MODE_SDP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %29 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %30 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %31 = call i32 @adv7842_get_format(%struct.v4l2_subdev* %28, %struct.v4l2_subdev_pad_config* %29, %struct.v4l2_subdev_format* %30)
  store i32 %31, i32* %4, align 4
  br label %81

32:                                               ; preds = %21
  %33 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %34 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.adv7842_format_info* @adv7842_format_info(%struct.adv7842_state* %33, i32 %37)
  store %struct.adv7842_format_info* %38, %struct.adv7842_format_info** %9, align 8
  %39 = load %struct.adv7842_format_info*, %struct.adv7842_format_info** %9, align 8
  %40 = icmp eq %struct.adv7842_format_info* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %43 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_2X8, align 4
  %44 = call %struct.adv7842_format_info* @adv7842_format_info(%struct.adv7842_state* %42, i32 %43)
  store %struct.adv7842_format_info* %44, %struct.adv7842_format_info** %9, align 8
  br label %45

45:                                               ; preds = %41, %32
  %46 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %47 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %47, i32 0, i32 2
  %49 = call i32 @adv7842_fill_format(%struct.adv7842_state* %46, %struct.TYPE_2__* %48)
  %50 = load %struct.adv7842_format_info*, %struct.adv7842_format_info** %9, align 8
  %51 = getelementptr inbounds %struct.adv7842_format_info, %struct.adv7842_format_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %45
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %63 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %64 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %62, %struct.v4l2_subdev_pad_config* %63, i64 %66)
  store %struct.v4l2_mbus_framefmt* %67, %struct.v4l2_mbus_framefmt** %10, align 8
  %68 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %80

74:                                               ; preds = %45
  %75 = load %struct.adv7842_format_info*, %struct.adv7842_format_info** %9, align 8
  %76 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %77 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %76, i32 0, i32 1
  store %struct.adv7842_format_info* %75, %struct.adv7842_format_info** %77, align 8
  %78 = load %struct.adv7842_state*, %struct.adv7842_state** %8, align 8
  %79 = call i32 @adv7842_setup_format(%struct.adv7842_state* %78)
  br label %80

80:                                               ; preds = %74, %61
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %27, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7842_get_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.adv7842_format_info* @adv7842_format_info(%struct.adv7842_state*, i32) #1

declare dso_local i32 @adv7842_fill_format(%struct.adv7842_state*, %struct.TYPE_2__*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local i32 @adv7842_setup_format(%struct.adv7842_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
