; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_composite_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_composite_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xvip_composite_device = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"device registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xvip_composite_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_composite_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xvip_composite_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.xvip_composite_device* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.xvip_composite_device* %9, %struct.xvip_composite_device** %4, align 8
  %10 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %11 = icmp ne %struct.xvip_composite_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %19 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %21 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %20, i32 0, i32 2
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %24 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %23, i32 0, i32 1
  %25 = call i32 @v4l2_async_notifier_init(i32* %24)
  %26 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %27 = call i32 @xvip_composite_v4l2_init(%struct.xvip_composite_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %15
  %33 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %34 = call i32 @xvip_graph_init(%struct.xvip_composite_device* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %46

38:                                               ; preds = %32
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.xvip_composite_device* %40)
  %42 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %43 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

46:                                               ; preds = %37
  %47 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %48 = call i32 @xvip_composite_v4l2_cleanup(%struct.xvip_composite_device* %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %38, %30, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.xvip_composite_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @v4l2_async_notifier_init(i32*) #1

declare dso_local i32 @xvip_composite_v4l2_init(%struct.xvip_composite_device*) #1

declare dso_local i32 @xvip_graph_init(%struct.xvip_composite_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xvip_composite_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @xvip_composite_v4l2_cleanup(%struct.xvip_composite_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
