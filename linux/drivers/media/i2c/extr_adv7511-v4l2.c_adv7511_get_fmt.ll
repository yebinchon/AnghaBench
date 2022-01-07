; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.adv7511_state = type { i32, i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv7511_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.adv7511_state*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev* %10)
  store %struct.adv7511_state* %11, %struct.adv7511_state** %8, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %101

19:                                               ; preds = %3
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 2
  %22 = call i32 @memset(%struct.TYPE_3__* %21, i32 0, i32 20)
  %23 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %24 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %24, i32 0, i32 2
  %26 = call i32 @adv7511_fill_format(%struct.adv7511_state* %23, %struct.TYPE_3__* %25)
  %27 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %19
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %34 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %35 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %33, %struct.v4l2_subdev_pad_config* %34, i64 %37)
  store %struct.v4l2_mbus_framefmt* %38, %struct.v4l2_mbus_framefmt** %9, align 8
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 8
  %45 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  br label %100

69:                                               ; preds = %19
  %70 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %71 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 8
  %76 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %77 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 4
  %82 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %83 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %89 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %95 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %100

100:                                              ; preds = %69, %32
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %16
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @adv7511_fill_format(%struct.adv7511_state*, %struct.TYPE_3__*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
