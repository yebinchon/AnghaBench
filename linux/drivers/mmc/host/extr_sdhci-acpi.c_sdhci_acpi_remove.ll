; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_sdhci_acpi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_sdhci_acpi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sdhci_acpi_host = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)* }

@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_acpi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_acpi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sdhci_acpi_host*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.sdhci_acpi_host* %7, %struct.sdhci_acpi_host** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %11 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @pm_runtime_get_sync(%struct.device* %15)
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @pm_runtime_disable(%struct.device* %17)
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @pm_runtime_put_noidle(%struct.device* %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %23 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %28 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %30, align 8
  %32 = icmp ne i32 (%struct.platform_device*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %35 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %37, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %40 = call i32 %38(%struct.platform_device* %39)
  br label %41

41:                                               ; preds = %33, %26, %21
  %42 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %43 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %46 = call i32 @sdhci_readl(i32 %44, i32 %45)
  %47 = icmp eq i32 %46, -1
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %50 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @sdhci_remove_host(i32 %51, i32 %52)
  %54 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %55 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %41
  %59 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %60 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %62, align 8
  %64 = icmp ne i32 (%struct.platform_device*)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %67 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %69, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %72 = call i32 %70(%struct.platform_device* %71)
  br label %73

73:                                               ; preds = %65, %58, %41
  %74 = load %struct.sdhci_acpi_host*, %struct.sdhci_acpi_host** %3, align 8
  %75 = getelementptr inbounds %struct.sdhci_acpi_host, %struct.sdhci_acpi_host* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @sdhci_free_host(i32 %76)
  ret i32 0
}

declare dso_local %struct.sdhci_acpi_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @sdhci_readl(i32, i32) #1

declare dso_local i32 @sdhci_remove_host(i32, i32) #1

declare dso_local i32 @sdhci_free_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
