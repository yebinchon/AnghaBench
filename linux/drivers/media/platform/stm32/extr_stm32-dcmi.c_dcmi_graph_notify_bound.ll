; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_graph_notify_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_graph_notify_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32, i32, i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.stm32_dcmi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Subdev \22%s\22 bound\0A\00", align 1
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to create media pad link with subdev \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"DCMI is now linked to \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @dcmi_graph_notify_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_graph_notify_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_async_subdev*, align 8
  %7 = alloca %struct.stm32_dcmi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %6, align 8
  %10 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %11 = call %struct.stm32_dcmi* @notifier_to_dcmi(%struct.v4l2_async_notifier* %10)
  store %struct.stm32_dcmi* %11, %struct.stm32_dcmi** %7, align 8
  %12 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %13 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %19, i32 0, i32 1
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %25 = call i32 @media_entity_get_fwnode_pad(i32* %20, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %26, i32 0, i32 1
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %30 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %34 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @media_create_pad_link(i32* %27, i32 %28, i32* %32, i32 0, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %3
  %40 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %41 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %55

47:                                               ; preds = %3
  %48 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %49 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.stm32_dcmi* @notifier_to_dcmi(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @media_entity_get_fwnode_pad(i32*, i32, i32) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
