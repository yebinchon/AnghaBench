; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.adv76xx_state = type { i64, %struct.adv76xx_format_info* }
%struct.adv76xx_format_info = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv76xx_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv76xx_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.adv76xx_state*, align 8
  %9 = alloca %struct.adv76xx_format_info*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.adv76xx_state* %12, %struct.adv76xx_state** %8, align 8
  %13 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.adv76xx_state*, %struct.adv76xx_state** %8, align 8
  %17 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %72

23:                                               ; preds = %3
  %24 = load %struct.adv76xx_state*, %struct.adv76xx_state** %8, align 8
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.adv76xx_format_info* @adv76xx_format_info(%struct.adv76xx_state* %24, i32 %28)
  store %struct.adv76xx_format_info* %29, %struct.adv76xx_format_info** %9, align 8
  %30 = load %struct.adv76xx_format_info*, %struct.adv76xx_format_info** %9, align 8
  %31 = icmp ne %struct.adv76xx_format_info* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load %struct.adv76xx_state*, %struct.adv76xx_state** %8, align 8
  %34 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_2X8, align 4
  %35 = call %struct.adv76xx_format_info* @adv76xx_format_info(%struct.adv76xx_state* %33, i32 %34)
  store %struct.adv76xx_format_info* %35, %struct.adv76xx_format_info** %9, align 8
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.adv76xx_state*, %struct.adv76xx_state** %8, align 8
  %38 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %38, i32 0, i32 2
  %40 = call i32 @adv76xx_fill_format(%struct.adv76xx_state* %37, %struct.TYPE_2__* %39)
  %41 = load %struct.adv76xx_format_info*, %struct.adv76xx_format_info** %9, align 8
  %42 = getelementptr inbounds %struct.adv76xx_format_info, %struct.adv76xx_format_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %36
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %54 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %55 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %53, %struct.v4l2_subdev_pad_config* %54, i64 %57)
  store %struct.v4l2_mbus_framefmt* %58, %struct.v4l2_mbus_framefmt** %10, align 8
  %59 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %71

65:                                               ; preds = %36
  %66 = load %struct.adv76xx_format_info*, %struct.adv76xx_format_info** %9, align 8
  %67 = load %struct.adv76xx_state*, %struct.adv76xx_state** %8, align 8
  %68 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %67, i32 0, i32 1
  store %struct.adv76xx_format_info* %66, %struct.adv76xx_format_info** %68, align 8
  %69 = load %struct.adv76xx_state*, %struct.adv76xx_state** %8, align 8
  %70 = call i32 @adv76xx_setup_format(%struct.adv76xx_state* %69)
  br label %71

71:                                               ; preds = %65, %52
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv76xx_format_info* @adv76xx_format_info(%struct.adv76xx_state*, i32) #1

declare dso_local i32 @adv76xx_fill_format(%struct.adv76xx_state*, %struct.TYPE_2__*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local i32 @adv76xx_setup_format(%struct.adv76xx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
