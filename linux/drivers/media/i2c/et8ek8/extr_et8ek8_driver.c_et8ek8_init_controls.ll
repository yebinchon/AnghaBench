; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_sensor = type { %struct.TYPE_10__, %struct.TYPE_9__, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@et8ek8_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@et8ek8_gain_table = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@et8ek8_test_pattern_menu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et8ek8_sensor*)* @et8ek8_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_init_controls(%struct.et8ek8_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et8ek8_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.et8ek8_sensor* %0, %struct.et8ek8_sensor** %3, align 8
  %7 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %7, i32 0, i32 0
  %9 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %8, i32 4)
  %10 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %11 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %10, i32 0, i32 0
  %12 = load i32, i32* @V4L2_CID_GAIN, align 4
  %13 = load i32, i32* @et8ek8_gain_table, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = sub nsw i32 %14, 1
  %16 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %11, i32* @et8ek8_ctrl_ops, i32 %12, i32 0, i32 %15, i32 1, i32 0)
  %17 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %18 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %17, i32 0, i32 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %25 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %24, i32 0, i32 0
  %26 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %25, i32* @et8ek8_ctrl_ops, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %33 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %35 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %34, i32 0, i32 0
  %36 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %37 = load i32, i32* @INT_MAX, align 4
  %38 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %35, i32* @et8ek8_ctrl_ops, i32 %36, i32 1, i32 %37, i32 1, i32 1)
  %39 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %40 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %42 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %41, i32 0, i32 0
  %43 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %44 = load i32, i32* @et8ek8_test_pattern_menu, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* @et8ek8_test_pattern_menu, align 4
  %48 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_10__* %42, i32* @et8ek8_ctrl_ops, i32 %43, i32 %46, i32 0, i32 0, i32 %47)
  %49 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %50 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %1
  %55 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %56 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %1
  %60 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %61 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %60, i32 0, i32 0
  %62 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %63 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
