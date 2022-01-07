; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_enable_internal_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_enable_internal_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_EN = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_STABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Internal clock never stabilised.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @xenon_enable_internal_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_enable_internal_clk(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %9 = call i32 @sdhci_readl(%struct.sdhci_host* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %16 = call i32 @sdhci_writel(%struct.sdhci_host* %13, i32 %14, i32 %15)
  %17 = call i32 (...) @ktime_get()
  %18 = call i32 @ktime_add_ms(i32 %17, i32 20)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %1, %42
  %20 = call i32 (...) @ktime_get()
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ktime_after(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %24 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %25 = call i32 @sdhci_readw(%struct.sdhci_host* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SDHCI_CLOCK_INT_STABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %44

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mmc_dev(i32 %37)
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %31
  %43 = call i32 @usleep_range(i32 900, i32 1100)
  br label %19

44:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
