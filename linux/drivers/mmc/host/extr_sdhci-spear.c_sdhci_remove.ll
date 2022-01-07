; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-spear.c_sdhci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-spear.c_sdhci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { i64 }
%struct.spear_sdhci = type { i32 }

@SDHCI_INT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.spear_sdhci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.sdhci_host* %8, %struct.sdhci_host** %3, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = call %struct.spear_sdhci* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.spear_sdhci* %10, %struct.spear_sdhci** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SDHCI_INT_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sdhci_remove_host(%struct.sdhci_host* %21, i32 %22)
  %24 = load %struct.spear_sdhci*, %struct.spear_sdhci** %4, align 8
  %25 = getelementptr inbounds %struct.spear_sdhci, %struct.spear_sdhci* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %29 = call i32 @sdhci_free_host(%struct.sdhci_host* %28)
  ret i32 0
}

declare dso_local %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.spear_sdhci* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @sdhci_remove_host(%struct.sdhci_host*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @sdhci_free_host(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
