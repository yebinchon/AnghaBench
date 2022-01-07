; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vpfe_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"vpfe_remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpfe_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.vpfe_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.vpfe_device* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.vpfe_device* %5, %struct.vpfe_device** %3, align 8
  %6 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %7 = call i32 @vpfe_dbg(i32 2, %struct.vpfe_device* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i32 @pm_runtime_disable(i32* %9)
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %12 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %11, i32 0, i32 2
  %13 = call i32 @v4l2_async_notifier_unregister(i32* %12)
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 2
  %16 = call i32 @v4l2_async_notifier_cleanup(i32* %15)
  %17 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %18 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %17, i32 0, i32 1
  %19 = call i32 @v4l2_device_unregister(i32* %18)
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 0
  %22 = call i32 @video_unregister_device(i32* %21)
  ret i32 0
}

declare dso_local %struct.vpfe_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @vpfe_dbg(i32, %struct.vpfe_device*, i8*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
