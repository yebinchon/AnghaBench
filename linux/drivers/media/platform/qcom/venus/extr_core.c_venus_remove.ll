; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.c_venus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.c_venus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.venus_core = type { i32, %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @venus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.venus_core* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.venus_core* %7, %struct.venus_core** %3, align 8
  %8 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %9 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @pm_runtime_get_sync(%struct.device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %18 = call i32 @hfi_core_deinit(%struct.venus_core* %17, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %22 = call i32 @hfi_destroy(%struct.venus_core* %21)
  %23 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %24 = call i32 @venus_shutdown(%struct.venus_core* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @of_platform_depopulate(%struct.device* %25)
  %27 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %28 = call i32 @venus_firmware_deinit(%struct.venus_core* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @pm_runtime_put_sync(%struct.device* %29)
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @pm_runtime_disable(%struct.device* %31)
  %33 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %34 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %33, i32 0, i32 0
  %35 = call i32 @v4l2_device_unregister(i32* %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.venus_core* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hfi_core_deinit(%struct.venus_core*, i32) #1

declare dso_local i32 @hfi_destroy(%struct.venus_core*) #1

declare dso_local i32 @venus_shutdown(%struct.venus_core*) #1

declare dso_local i32 @of_platform_depopulate(%struct.device*) #1

declare dso_local i32 @venus_firmware_deinit(%struct.venus_core*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
