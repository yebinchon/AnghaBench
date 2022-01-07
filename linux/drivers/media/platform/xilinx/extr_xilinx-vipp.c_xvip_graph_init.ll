; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_graph_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_composite_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"DMA initialization failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"graph parsing failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"no subdev found in graph\0A\00", align 1
@xvip_graph_notify_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"notifier registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvip_composite_device*)* @xvip_graph_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_graph_init(%struct.xvip_composite_device* %0) #0 {
  %2 = alloca %struct.xvip_composite_device*, align 8
  %3 = alloca i32, align 4
  store %struct.xvip_composite_device* %0, %struct.xvip_composite_device** %2, align 8
  %4 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %5 = call i32 @xvip_graph_dma_init(%struct.xvip_composite_device* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %10 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_err(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %15 = call i32 @xvip_graph_parse(%struct.xvip_composite_device* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %20 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %51

23:                                               ; preds = %13
  %24 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %25 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %31 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %51

34:                                               ; preds = %23
  %35 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %36 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32* @xvip_graph_notify_ops, i32** %37, align 8
  %38 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %39 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %38, i32 0, i32 2
  %40 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %41 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %40, i32 0, i32 1
  %42 = call i32 @v4l2_async_notifier_register(i32* %39, %struct.TYPE_2__* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %47 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %51

50:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %45, %29, %18, %8
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %2, align 8
  %56 = call i32 @xvip_graph_cleanup(%struct.xvip_composite_device* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @xvip_graph_dma_init(%struct.xvip_composite_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @xvip_graph_parse(%struct.xvip_composite_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @xvip_graph_cleanup(%struct.xvip_composite_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
