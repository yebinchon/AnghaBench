; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_qcom_free_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_qcom_free_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sdhci_acpi_host = type { %struct.sdhci_host* }
%struct.sdhci_host = type { i32 }
%struct.acpi_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"QCOM8051\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_free_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_free_slot(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sdhci_acpi_host*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.sdhci_acpi_host* %13, %struct.sdhci_acpi_host** %5, align 8
  %14 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %5, align 8
  %15 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %14, i32 0, i32 0
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %15, align 8
  store %struct.sdhci_host* %16, %struct.sdhci_host** %6, align 8
  %17 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %5, align 8
  %18 = call i32* @sdhci_acpi_priv(%struct.sdhci_acpi_host* %17)
  store i32* %18, i32** %8, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %19)
  store %struct.acpi_device* %20, %struct.acpi_device** %7, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %22 = icmp ne %struct.acpi_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %1
  %27 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %28 = call i8* @acpi_device_hid(%struct.acpi_device* %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %42 = call i32 @free_irq(i32 %40, %struct.sdhci_host* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %37, %32, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32* @sdhci_acpi_priv(%struct.sdhci_acpi_host*) #1

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
