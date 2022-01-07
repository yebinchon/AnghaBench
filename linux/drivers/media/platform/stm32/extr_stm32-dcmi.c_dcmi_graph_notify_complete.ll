; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_graph_notify_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_graph_notify_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.stm32_dcmi = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Source subdevice not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No supported mediabus format found\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not initialize framesizes\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not get sensor bounds\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not set default format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*)* @dcmi_graph_notify_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_graph_notify_complete(%struct.v4l2_async_notifier* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_async_notifier*, align 8
  %4 = alloca %struct.stm32_dcmi*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %3, align 8
  %6 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %7 = call %struct.stm32_dcmi* @notifier_to_dcmi(%struct.v4l2_async_notifier* %6)
  store %struct.stm32_dcmi* %7, %struct.stm32_dcmi** %4, align 8
  %8 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %9 = call i32 @dcmi_find_source(%struct.stm32_dcmi* %8)
  %10 = call %struct.TYPE_6__* @media_entity_to_v4l2_subdev(i32 %9)
  %11 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %15 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %83

26:                                               ; preds = %1
  %27 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %28 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %34 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %38 = call i32 @dcmi_formats_init(%struct.stm32_dcmi* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %26
  %42 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %43 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %83

47:                                               ; preds = %26
  %48 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %49 = call i32 @dcmi_framesizes_init(%struct.stm32_dcmi* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %54 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %83

58:                                               ; preds = %47
  %59 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %60 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %61 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %60, i32 0, i32 1
  %62 = call i32 @dcmi_get_sensor_bounds(%struct.stm32_dcmi* %59, i32* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %67 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %83

71:                                               ; preds = %58
  %72 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %73 = call i32 @dcmi_set_default_fmt(%struct.stm32_dcmi* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %78 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %76, %65, %52, %41, %19
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.stm32_dcmi* @notifier_to_dcmi(%struct.v4l2_async_notifier*) #1

declare dso_local %struct.TYPE_6__* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @dcmi_find_source(%struct.stm32_dcmi*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dcmi_formats_init(%struct.stm32_dcmi*) #1

declare dso_local i32 @dcmi_framesizes_init(%struct.stm32_dcmi*) #1

declare dso_local i32 @dcmi_get_sensor_bounds(%struct.stm32_dcmi*, i32*) #1

declare dso_local i32 @dcmi_set_default_fmt(%struct.stm32_dcmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
