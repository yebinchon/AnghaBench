; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i32, i32, %struct.vpfe_device*, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"vpfe_remove\0A\00", align 1
@ccdc_cfg = common dso_local global %struct.vpfe_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpfe_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.vpfe_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.vpfe_device* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.vpfe_device* %5, %struct.vpfe_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @v4l2_info(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %12 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.vpfe_device* %14)
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %17 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %16, i32 0, i32 2
  %18 = load %struct.vpfe_device*, %struct.vpfe_device** %17, align 8
  %19 = call i32 @kfree(%struct.vpfe_device* %18)
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 1
  %22 = call i32 @v4l2_device_unregister(i32* %21)
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %24 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %23, i32 0, i32 0
  %25 = call i32 @video_unregister_device(i32* %24)
  %26 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %27 = call i32 @kfree(%struct.vpfe_device* %26)
  %28 = load %struct.vpfe_device*, %struct.vpfe_device** @ccdc_cfg, align 8
  %29 = call i32 @kfree(%struct.vpfe_device* %28)
  ret i32 0
}

declare dso_local %struct.vpfe_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @v4l2_info(i32, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.vpfe_device*) #1

declare dso_local i32 @kfree(%struct.vpfe_device*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
