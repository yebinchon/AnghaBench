; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_intel_setup_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_intel_setup_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_acpi_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.intel_host = type { i32 }

@INTEL_DSM_HS_CAPS_SDR25 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@INTEL_DSM_HS_CAPS_SDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@INTEL_DSM_HS_CAPS_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@INTEL_DSM_HS_CAPS_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_setup_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_setup_host(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sdhci_acpi_host*, align 8
  %4 = alloca %struct.intel_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sdhci_acpi_host* %6, %struct.sdhci_acpi_host** %3, align 8
  %7 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %8 = call %struct.intel_host* @sdhci_acpi_priv(%struct.sdhci_acpi_host* %7)
  store %struct.intel_host* %8, %struct.intel_host** %4, align 8
  %9 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %10 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INTEL_DSM_HS_CAPS_SDR25, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %19 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %17
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %28 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INTEL_DSM_HS_CAPS_SDR50, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %37 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %35
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %33, %26
  %45 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %46 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @INTEL_DSM_HS_CAPS_DDR50, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %55 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %53
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %51, %44
  %63 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %64 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @INTEL_DSM_HS_CAPS_SDR104, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %73 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %71
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %69, %62
  ret i32 0
}

declare dso_local %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.intel_host* @sdhci_acpi_priv(%struct.sdhci_acpi_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
