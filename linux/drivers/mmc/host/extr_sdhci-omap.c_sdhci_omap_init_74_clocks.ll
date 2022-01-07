; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_init_74_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_init_74_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_omap_host = type { i64 }

@MMC_POWER_ON = common dso_local global i64 0, align 8
@SDHCI_OMAP_CON = common dso_local global i32 0, align 4
@CON_INIT = common dso_local global i32 0, align 4
@SDHCI_OMAP_CMD = common dso_local global i32 0, align 4
@SDHCI_OMAP_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_OMAP_STAT = common dso_local global i32 0, align 4
@INT_CC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i64)* @sdhci_omap_init_74_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_omap_init_74_clocks(%struct.sdhci_host* %0, i64 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_omap_host*, align 8
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %7, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %13 = call %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.sdhci_omap_host* %13, %struct.sdhci_omap_host** %8, align 8
  %14 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %15 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %84

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @MMC_POWER_ON, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %84

25:                                               ; preds = %20
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %27 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @disable_irq(i32 %28)
  %30 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %31 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %32 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @CON_INIT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %37 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %36, i32 %37, i32 %38)
  %40 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %41 = load i32, i32* @SDHCI_OMAP_CMD, align 4
  %42 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %40, i32 %41, i32 0)
  %43 = call i32 (...) @ktime_get()
  %44 = load i32, i32* @SDHCI_OMAP_TIMEOUT, align 4
  %45 = call i32 @ktime_add_ms(i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %25, %62
  %47 = call i32 (...) @ktime_get()
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ktime_after(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %51 = load i32, i32* @SDHCI_OMAP_STAT, align 4
  %52 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %50, i32 %51)
  %53 = load i32, i32* @INT_CC_EN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @WARN_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %84

62:                                               ; preds = %57
  %63 = call i32 @usleep_range(i32 5, i32 10)
  br label %46

64:                                               ; preds = %56
  %65 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %66 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %67 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @CON_INIT, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %73 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %72, i32 %73, i32 %74)
  %76 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %77 = load i32, i32* @SDHCI_OMAP_STAT, align 4
  %78 = load i32, i32* @INT_CC_EN, align 4
  %79 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %76, i32 %77, i32 %78)
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %81 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @enable_irq(i32 %82)
  br label %84

84:                                               ; preds = %64, %61, %24, %19
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i32) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
