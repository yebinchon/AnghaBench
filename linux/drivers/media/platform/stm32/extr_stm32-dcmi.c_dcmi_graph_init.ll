; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_graph_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { %struct.TYPE_8__, %struct.TYPE_9__*, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to parse graph\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to add subdev notifier\0A\00", align 1
@dcmi_graph_notify_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to register notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dcmi*)* @dcmi_graph_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_graph_init(%struct.stm32_dcmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_dcmi*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %3, align 8
  %5 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %6 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dcmi_graph_parse(%struct.stm32_dcmi* %5, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call i32 @dev_err(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %64

20:                                               ; preds = %1
  %21 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %21, i32 0, i32 0
  %23 = call i32 @v4l2_async_notifier_init(%struct.TYPE_8__* %22)
  %24 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %25 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %24, i32 0, i32 0
  %26 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %27 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = call i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_8__* %25, i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %20
  %33 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %34 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = call i32 @dev_err(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %38 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @of_node_put(i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %64

43:                                               ; preds = %20
  %44 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %45 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32* @dcmi_graph_notify_ops, i32** %46, align 8
  %47 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %48 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %47, i32 0, i32 2
  %49 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %50 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %49, i32 0, i32 0
  %51 = call i32 @v4l2_async_notifier_register(i32* %48, %struct.TYPE_8__* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %56 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @dev_err(%struct.TYPE_9__* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %60 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %59, i32 0, i32 0
  %61 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_8__* %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %54, %32, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @dcmi_graph_parse(%struct.stm32_dcmi*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
