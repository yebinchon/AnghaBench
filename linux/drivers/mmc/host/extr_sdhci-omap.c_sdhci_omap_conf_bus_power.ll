; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_conf_bus_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_conf_bus_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { i32 }

@SDHCI_OMAP_HCTL = common dso_local global i32 0, align 4
@HCTL_SDVS_MASK = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i8 0, align 1
@HCTL_SDVS_33 = common dso_local global i32 0, align 4
@HCTL_SDVS_18 = common dso_local global i32 0, align 4
@HCTL_SDBP = common dso_local global i32 0, align 4
@SDHCI_OMAP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_omap_host*, i8)* @sdhci_omap_conf_bus_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_omap_conf_bus_power(%struct.sdhci_omap_host* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.sdhci_omap_host*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %9 = load i32, i32* @SDHCI_OMAP_HCTL, align 4
  %10 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @HCTL_SDVS_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @MMC_SIGNAL_VOLTAGE_330, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @HCTL_SDVS_33, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @HCTL_SDVS_18, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %30 = load i32, i32* @SDHCI_OMAP_HCTL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @HCTL_SDBP, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %37 = load i32, i32* @SDHCI_OMAP_HCTL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %36, i32 %37, i32 %38)
  %40 = call i32 (...) @ktime_get()
  %41 = load i32, i32* @SDHCI_OMAP_TIMEOUT, align 4
  %42 = call i32 @ktime_add_ms(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %28, %59
  %44 = call i32 (...) @ktime_get()
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ktime_after(i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %48 = load i32, i32* @SDHCI_OMAP_HCTL, align 4
  %49 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %47, i32 %48)
  %50 = load i32, i32* @HCTL_SDBP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %61

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @WARN_ON(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %61

59:                                               ; preds = %54
  %60 = call i32 @usleep_range(i32 5, i32 10)
  br label %43

61:                                               ; preds = %58, %53
  ret void
}

declare dso_local i32 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i32) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
