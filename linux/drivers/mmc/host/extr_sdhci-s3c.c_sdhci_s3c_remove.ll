; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_s3c = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@S3C_SDHCI_CD_INTERNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_s3c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_s3c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_s3c*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sdhci_host* %6, %struct.sdhci_host** %3, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = call %struct.sdhci_s3c* @sdhci_priv(%struct.sdhci_host* %7)
  store %struct.sdhci_s3c* %8, %struct.sdhci_s3c** %4, align 8
  %9 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %4, align 8
  %10 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %4, align 8
  %15 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %4, align 8
  %18 = call i32 @free_irq(i64 %16, %struct.sdhci_s3c* %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %21 = call i32 @sdhci_remove_host(%struct.sdhci_host* %20, i32 1)
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @pm_runtime_dont_use_autosuspend(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @pm_runtime_disable(i32* %26)
  %28 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %4, align 8
  %29 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %33 = call i32 @sdhci_free_host(%struct.sdhci_host* %32)
  ret i32 0
}

declare dso_local %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sdhci_s3c* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local i32 @free_irq(i64, %struct.sdhci_s3c*) #1

declare dso_local i32 @sdhci_remove_host(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @sdhci_free_host(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
