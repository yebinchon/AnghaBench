; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_o2_enable_internal_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_o2_enable_internal_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@O2_PLL_DLL_WDT_CONTROL1 = common dso_local global i32 0, align 4
@O2_PLL_SOFT_RESET = common dso_local global i32 0, align 4
@O2_PLL_FORCE_ACTIVE = common dso_local global i32 0, align 4
@O2_PLL_LOCK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Internal clock never stabilised.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_o2_enable_internal_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_o2_enable_internal_clock(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = load i32, i32* @O2_PLL_DLL_WDT_CONTROL1, align 4
  %9 = call i32 @sdhci_readl(%struct.sdhci_host* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @O2_PLL_SOFT_RESET, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @O2_PLL_DLL_WDT_CONTROL1, align 4
  %16 = call i32 @sdhci_writel(%struct.sdhci_host* %13, i32 %14, i32 %15)
  %17 = call i32 @udelay(i32 1)
  %18 = load i32, i32* @O2_PLL_SOFT_RESET, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @O2_PLL_DLL_WDT_CONTROL1, align 4
  %25 = call i32 @sdhci_writel(%struct.sdhci_host* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @O2_PLL_FORCE_ACTIVE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @O2_PLL_DLL_WDT_CONTROL1, align 4
  %32 = call i32 @sdhci_writel(%struct.sdhci_host* %29, i32 %30, i32 %31)
  %33 = call i32 (...) @ktime_get()
  %34 = call i32 @ktime_add_ms(i32 %33, i32 20)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %1, %58
  %36 = call i32 (...) @ktime_get()
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ktime_after(i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %40 = load i32, i32* @O2_PLL_DLL_WDT_CONTROL1, align 4
  %41 = call i32 @sdhci_readw(%struct.sdhci_host* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @O2_PLL_LOCK_STATUS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %60

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mmc_hostname(i32 %53)
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %57 = call i32 @sdhci_dumpregs(%struct.sdhci_host* %56)
  br label %64

58:                                               ; preds = %47
  %59 = call i32 @udelay(i32 10)
  br label %35

60:                                               ; preds = %46
  %61 = call i32 @udelay(i32 1)
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %63 = call i32 @sdhci_o2_wait_card_detect_stable(%struct.sdhci_host* %62)
  br label %64

64:                                               ; preds = %60, %50
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %66 = load i32, i32* @O2_PLL_DLL_WDT_CONTROL1, align 4
  %67 = call i32 @sdhci_readl(%struct.sdhci_host* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @O2_PLL_FORCE_ACTIVE, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @O2_PLL_DLL_WDT_CONTROL1, align 4
  %75 = call i32 @sdhci_writel(%struct.sdhci_host* %72, i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_o2_wait_card_detect_stable(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
