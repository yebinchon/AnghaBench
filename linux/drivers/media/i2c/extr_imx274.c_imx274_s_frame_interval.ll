; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.stimx274 = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { i32 }

@IMX274_MIN_EXPOSURE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Exposure ctrl range update failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"set frame interval to %uus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @imx274_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx274_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.stimx274*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.stimx274* @to_imx274(%struct.v4l2_subdev* %11)
  store %struct.stimx274* %12, %struct.stimx274** %5, align 8
  %13 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %14 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %15, align 8
  store %struct.v4l2_ctrl* %16, %struct.v4l2_ctrl** %6, align 8
  %17 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %18 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %21 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_6__* %22 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = call i32 @imx274_set_frame_interval(%struct.stimx274* %20, i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @IMX274_MIN_EXPOSURE_TIME, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 1000000
  %35 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %34, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl* %41, i32 %42, i32 %43, i32 1, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %28
  %48 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %49 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %75

53:                                               ; preds = %28
  %54 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @imx274_set_exposure(%struct.stimx274* %54, i32 %57)
  %59 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %60 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 1000000
  %68 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %67, %71
  %73 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %53, %2
  br label %75

75:                                               ; preds = %74, %47
  %76 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %77 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local %struct.stimx274* @to_imx274(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @imx274_set_frame_interval(%struct.stimx274*, i64) #1

declare dso_local i64 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @imx274_set_exposure(%struct.stimx274*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
