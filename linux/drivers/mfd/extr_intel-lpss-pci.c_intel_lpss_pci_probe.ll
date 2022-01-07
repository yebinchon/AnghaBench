; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss-pci.c_intel_lpss_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss-pci.c_intel_lpss_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, i32, i32* }
%struct.pci_device_id = type { i64 }
%struct.intel_lpss_platform_info = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @intel_lpss_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lpss_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.intel_lpss_platform_info*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pcim_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.intel_lpss_platform_info* @devm_kmemdup(i32* %16, i8* %20, i32 16, i32 %21)
  store %struct.intel_lpss_platform_info* %22, %struct.intel_lpss_platform_info** %6, align 8
  %23 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %6, align 8
  %24 = icmp ne %struct.intel_lpss_platform_info* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %14
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %6, align 8
  %34 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %6, align 8
  %39 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @pci_set_master(%struct.pci_dev* %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i32 @pci_try_set_mwi(%struct.pci_dev* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %6, align 8
  %49 = call i32 @intel_lpss_probe(i32* %47, %struct.intel_lpss_platform_info* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %28
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %61

54:                                               ; preds = %28
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_put(i32* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 @pm_runtime_allow(i32* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %54, %52, %25, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.intel_lpss_platform_info* @devm_kmemdup(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_try_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @intel_lpss_probe(i32*, %struct.intel_lpss_platform_info*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
