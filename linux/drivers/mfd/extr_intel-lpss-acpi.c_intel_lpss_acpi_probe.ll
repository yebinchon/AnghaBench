; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss-acpi.c_intel_lpss_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss-acpi.c_intel_lpss_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_lpss_platform_info = type { i32, i32 }
%struct.acpi_device_id = type { i64 }

@intel_lpss_acpi_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_lpss_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lpss_acpi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_lpss_platform_info*, align 8
  %5 = alloca %struct.acpi_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @intel_lpss_acpi_ids, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.acpi_device_id* @acpi_match_device(i32 %6, i32* %8)
  store %struct.acpi_device_id* %9, %struct.acpi_device_id** %5, align 8
  %10 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %11 = icmp ne %struct.acpi_device_id* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.intel_lpss_platform_info* @devm_kmemdup(i32* %17, i8* %21, i32 8, i32 %22)
  store %struct.intel_lpss_platform_info* %23, %struct.intel_lpss_platform_info** %4, align 8
  %24 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %4, align 8
  %25 = icmp ne %struct.intel_lpss_platform_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %49

29:                                               ; preds = %15
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call i32 @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  %33 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %4, align 8
  %34 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i32 @platform_get_irq(%struct.platform_device* %35, i32 0)
  %37 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %4, align 8
  %38 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @pm_runtime_set_active(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_enable(i32* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %4, align 8
  %48 = call i32 @intel_lpss_probe(i32* %46, %struct.intel_lpss_platform_info* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %29, %26, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, i32*) #1

declare dso_local %struct.intel_lpss_platform_info* @devm_kmemdup(i32*, i8*, i32, i32) #1

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @intel_lpss_probe(i32*, %struct.intel_lpss_platform_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
