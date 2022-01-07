; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pic32.c_pic32_sdhci_probe_platform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pic32.c_pic32_sdhci_probe_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pic32_sdhci_priv = type { i32 }
%struct.sdhci_host = type { i32, i64 }

@SDHCI_CAPABILITIES = common dso_local global i64 0, align 8
@SDH_CAPS_SDH_SLOT_TYPE_MASK = common dso_local global i32 0, align 4
@SDH_SLOT_TYPE_SHARED_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.pic32_sdhci_priv*)* @pic32_sdhci_probe_platform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_sdhci_probe_platform(%struct.platform_device* %0, %struct.pic32_sdhci_priv* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pic32_sdhci_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.pic32_sdhci_priv* %1, %struct.pic32_sdhci_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %7, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SDHCI_CAPABILITIES, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SDH_CAPS_SDH_SLOT_TYPE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = ashr i32 %22, 30
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SDH_SLOT_TYPE_SHARED_BUS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @pic32_sdhci_shared_bus(%struct.platform_device* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pic32_sdhci_shared_bus(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
