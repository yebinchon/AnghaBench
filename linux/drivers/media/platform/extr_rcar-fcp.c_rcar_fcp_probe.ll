; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar-fcp.c_rcar_fcp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar-fcp.c_rcar_fcp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rcar_fcp_device = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fcp_lock = common dso_local global i32 0, align 4
@fcp_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_fcp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_fcp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rcar_fcp_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rcar_fcp_device* @devm_kzalloc(i32* %6, i32 16, i32 %7)
  store %struct.rcar_fcp_device* %8, %struct.rcar_fcp_device** %4, align 8
  %9 = load %struct.rcar_fcp_device*, %struct.rcar_fcp_device** %4, align 8
  %10 = icmp eq %struct.rcar_fcp_device* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.rcar_fcp_device*, %struct.rcar_fcp_device** %4, align 8
  %18 = getelementptr inbounds %struct.rcar_fcp_device, %struct.rcar_fcp_device* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @pm_runtime_enable(i32* %20)
  %22 = call i32 @mutex_lock(i32* @fcp_lock)
  %23 = load %struct.rcar_fcp_device*, %struct.rcar_fcp_device** %4, align 8
  %24 = getelementptr inbounds %struct.rcar_fcp_device, %struct.rcar_fcp_device* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %24, i32* @fcp_devices)
  %26 = call i32 @mutex_unlock(i32* @fcp_lock)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.rcar_fcp_device*, %struct.rcar_fcp_device** %4, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.rcar_fcp_device* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %14, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.rcar_fcp_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_fcp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
