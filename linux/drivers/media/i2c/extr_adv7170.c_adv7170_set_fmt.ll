; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7170.c_adv7170_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7170.c_adv7170_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"illegal v4l2_mbus_framefmt code: %d\0A\00", align 1
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv7170_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7170_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %11, %struct.v4l2_mbus_framefmt** %8, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call i32 @adv7170_read(%struct.v4l2_subdev* %12, i32 7)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %31 [
    i32 128, label %25
    i32 129, label %28
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, -65
  store i32 %27, i32* %9, align 4
  br label %40

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, 64
  store i32 %30, i32* %9, align 4
  br label %40

31:                                               ; preds = %21
  %32 = load i32, i32* @debug, align 4
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @v4l2_dbg(i32 1, i32 %32, %struct.v4l2_subdev* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %28, %25
  %41 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @adv7170_write(%struct.v4l2_subdev* %47, i32 7, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %46, %31, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @adv7170_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @adv7170_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
