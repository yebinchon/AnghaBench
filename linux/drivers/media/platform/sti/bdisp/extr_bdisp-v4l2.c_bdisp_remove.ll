; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.bdisp_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s driver unloaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bdisp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bdisp_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.bdisp_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.bdisp_dev* %5, %struct.bdisp_dev** %3, align 8
  %6 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %7 = call i32 @bdisp_unregister_device(%struct.bdisp_dev* %6)
  %8 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %9 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bdisp_hw_free_filters(i32 %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = call i32 @pm_runtime_disable(i32* %13)
  %15 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %16 = call i32 @bdisp_debugfs_remove(%struct.bdisp_dev* %15)
  %17 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %18 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %17, i32 0, i32 1
  %19 = call i32 @v4l2_device_unregister(i32* %18)
  %20 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %21 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IS_ERR(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %27 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_unprepare(i32 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 1
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  ret i32 0
}

declare dso_local %struct.bdisp_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @bdisp_unregister_device(%struct.bdisp_dev*) #1

declare dso_local i32 @bdisp_hw_free_filters(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @bdisp_debugfs_remove(%struct.bdisp_dev*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
