; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_intel_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_intel_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_acpi_host = type { %struct.sdhci_host* }
%struct.sdhci_host = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.intel_host = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"80860F14\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"80865ACA\00", align 1
@bxt_get_cd = common dso_local global i32 0, align 4
@intel_start_signal_voltage_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*, i8*)* @intel_probe_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_probe_slot(%struct.platform_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sdhci_acpi_host*, align 8
  %8 = alloca %struct.intel_host*, align 8
  %9 = alloca %struct.sdhci_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = call %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.sdhci_acpi_host* %11, %struct.sdhci_acpi_host** %7, align 8
  %12 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %7, align 8
  %13 = call %struct.intel_host* @sdhci_acpi_priv(%struct.sdhci_acpi_host* %12)
  store %struct.intel_host* %13, %struct.intel_host** %8, align 8
  %14 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %7, align 8
  %15 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %14, i32 0, i32 0
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %15, align 8
  store %struct.sdhci_host* %16, %struct.sdhci_host** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %32 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %33 = call i32 @sdhci_readl(%struct.sdhci_host* %31, i32 %32)
  %34 = icmp eq i32 %33, 1147979954
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %37 = load i32, i32* @SDHCI_CAPABILITIES_1, align 4
  %38 = call i32 @sdhci_readl(%struct.sdhci_host* %36, i32 %37)
  %39 = icmp eq i32 %38, 2055
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  store i32 1000, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %35, %30, %26, %22, %19, %3
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @bxt_get_cd, align 4
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %53 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %46, %43
  %56 = load %struct.intel_host*, %struct.intel_host** %8, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %60 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @intel_dsm_init(%struct.intel_host* %56, i32* %58, i32 %61)
  %63 = load i32, i32* @intel_start_signal_voltage_switch, align 4
  %64 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %65 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  ret i32 0
}

declare dso_local %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.intel_host* @sdhci_acpi_priv(%struct.sdhci_acpi_host*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @intel_dsm_init(%struct.intel_host*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
