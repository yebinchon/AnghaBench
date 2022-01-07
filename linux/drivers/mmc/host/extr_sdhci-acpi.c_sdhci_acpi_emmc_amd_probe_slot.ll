; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_sdhci_acpi_emmc_amd_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_sdhci_acpi_emmc_amd_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_acpi_host = type { %struct.sdhci_host* }
%struct.sdhci_host = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SDHCI_SUPPORT_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_1_8V = common dso_local global i32 0, align 4
@amd_select_drive_strength = common dso_local global i32 0, align 4
@amd_set_ios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*, i8*)* @sdhci_acpi_emmc_amd_probe_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_acpi_emmc_amd_probe_slot(%struct.platform_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sdhci_acpi_host*, align 8
  %8 = alloca %struct.sdhci_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = call %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.sdhci_acpi_host* %10, %struct.sdhci_acpi_host** %7, align 8
  %11 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %7, align 8
  %12 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %11, i32 0, i32 0
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %12, align 8
  store %struct.sdhci_host* %13, %struct.sdhci_host** %8, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %15 = call i32 @sdhci_read_caps(%struct.sdhci_host* %14)
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SDHCI_SUPPORT_DDR50, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %25 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SDHCI_SUPPORT_SDR104, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %37 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32, i32* @MMC_CAP2_HS400_1_8V, align 4
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %47 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %35, %28
  %51 = load i32, i32* @amd_select_drive_strength, align 4
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %53 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @amd_set_ios, align 4
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %57 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  ret i32 0
}

declare dso_local %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sdhci_read_caps(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
