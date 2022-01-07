; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_subdev_notifier_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_subdev_notifier_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.fimc_md = type { i32, i32, %struct.fimc_sensor_info* }
%struct.fimc_sensor_info = type { %struct.v4l2_subdev*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FIMC_BUS_TYPE_ISP_WRITEBACK = common dso_local global i64 0, align 8
@GRP_ID_FIMC_IS_SENSOR = common dso_local global i32 0, align 4
@GRP_ID_SENSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Registered sensor subdevice: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @subdev_notifier_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_notifier_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.fimc_md*, align 8
  %9 = alloca %struct.fimc_sensor_info*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %11 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %12 = call %struct.fimc_md* @notifier_to_fimc_md(%struct.v4l2_async_notifier* %11)
  store %struct.fimc_md* %12, %struct.fimc_md** %8, align 8
  store %struct.fimc_sensor_info* null, %struct.fimc_sensor_info** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %46, %3
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.fimc_md*, %struct.fimc_md** %8, align 8
  %16 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %15, i32 0, i32 2
  %17 = load %struct.fimc_sensor_info*, %struct.fimc_sensor_info** %16, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.fimc_sensor_info* %17)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %13
  %21 = load %struct.fimc_md*, %struct.fimc_md** %8, align 8
  %22 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %21, i32 0, i32 2
  %23 = load %struct.fimc_sensor_info*, %struct.fimc_sensor_info** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fimc_sensor_info, %struct.fimc_sensor_info* %23, i64 %25
  %27 = getelementptr inbounds %struct.fimc_sensor_info, %struct.fimc_sensor_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @of_fwnode_handle(i32 %35)
  %37 = icmp eq i64 %30, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load %struct.fimc_md*, %struct.fimc_md** %8, align 8
  %40 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %39, i32 0, i32 2
  %41 = load %struct.fimc_sensor_info*, %struct.fimc_sensor_info** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.fimc_sensor_info, %struct.fimc_sensor_info* %41, i64 %43
  store %struct.fimc_sensor_info* %44, %struct.fimc_sensor_info** %9, align 8
  br label %45

45:                                               ; preds = %38, %20
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %13

49:                                               ; preds = %13
  %50 = load %struct.fimc_sensor_info*, %struct.fimc_sensor_info** %9, align 8
  %51 = icmp eq %struct.fimc_sensor_info* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %91

55:                                               ; preds = %49
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %57 = load %struct.fimc_sensor_info*, %struct.fimc_sensor_info** %9, align 8
  %58 = getelementptr inbounds %struct.fimc_sensor_info, %struct.fimc_sensor_info* %57, i32 0, i32 1
  %59 = call i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev* %56, %struct.TYPE_8__* %58)
  %60 = load %struct.fimc_sensor_info*, %struct.fimc_sensor_info** %9, align 8
  %61 = getelementptr inbounds %struct.fimc_sensor_info, %struct.fimc_sensor_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @FIMC_BUS_TYPE_ISP_WRITEBACK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i32, i32* @GRP_ID_FIMC_IS_SENSOR, align 4
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %74

70:                                               ; preds = %55
  %71 = load i32, i32* @GRP_ID_SENSOR, align 4
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %76 = load %struct.fimc_sensor_info*, %struct.fimc_sensor_info** %9, align 8
  %77 = getelementptr inbounds %struct.fimc_sensor_info, %struct.fimc_sensor_info* %76, i32 0, i32 0
  store %struct.v4l2_subdev* %75, %struct.v4l2_subdev** %77, align 8
  %78 = load %struct.fimc_md*, %struct.fimc_md** %8, align 8
  %79 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %78, i32 0, i32 1
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fimc_md*, %struct.fimc_md** %8, align 8
  %84 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @v4l2_info(i32* %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load %struct.fimc_md*, %struct.fimc_md** %8, align 8
  %88 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %74, %52
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.fimc_md* @notifier_to_fimc_md(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fimc_sensor_info*) #1

declare dso_local i64 @of_fwnode_handle(i32) #1

declare dso_local i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev*, %struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
