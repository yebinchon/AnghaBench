; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7175.c_adv7175_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7175.c_adv7175_set_fmt.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv7175_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7175_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %12, %struct.v4l2_mbus_framefmt** %8, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call i32 @adv7175_read(%struct.v4l2_subdev* %13, i32 7)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %32 [
    i32 128, label %26
    i32 129, label %29
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, -65
  store i32 %28, i32* %9, align 4
  br label %41

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, 64
  store i32 %31, i32* %9, align 4
  br label %41

32:                                               ; preds = %22
  %33 = load i32, i32* @debug, align 4
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %35 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @v4l2_dbg(i32 1, i32 %33, %struct.v4l2_subdev* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %53

41:                                               ; preds = %29, %26
  %42 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @adv7175_write(%struct.v4l2_subdev* %48, i32 7, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %32, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @adv7175_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @adv7175_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
