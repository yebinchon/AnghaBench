; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_enable_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_enable_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32, i64 }

@SDHCI_CLOCK_INT_EN = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_STABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Internal clock never stabilised.\0A\00", align 1
@SDHCI_SPEC_410 = common dso_local global i64 0, align 8
@SDHCI_CLOCK_PLL_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: PLL clock never stabilised.\0A\00", align 1
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_enable_clk(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %14 = call i32 @sdhci_writew(%struct.sdhci_host* %11, i32 %12, i32 %13)
  %15 = call i32 (...) @ktime_get()
  %16 = call i32 @ktime_add_ms(i32 %15, i32 150)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %2, %40
  %18 = call i32 (...) @ktime_get()
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ktime_after(i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %22 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %23 = call i32 @sdhci_readw(%struct.sdhci_host* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SDHCI_CLOCK_INT_STABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %42

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %34 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mmc_hostname(i32 %35)
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %39 = call i32 @sdhci_dumpregs(%struct.sdhci_host* %38)
  br label %101

40:                                               ; preds = %29
  %41 = call i32 @udelay(i32 10)
  br label %17

42:                                               ; preds = %28
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SDHCI_SPEC_410, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %93

48:                                               ; preds = %42
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %50 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %48
  %54 = load i32, i32* @SDHCI_CLOCK_PLL_EN, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @SDHCI_CLOCK_INT_STABLE, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %64 = call i32 @sdhci_writew(%struct.sdhci_host* %61, i32 %62, i32 %63)
  %65 = call i32 (...) @ktime_get()
  %66 = call i32 @ktime_add_ms(i32 %65, i32 150)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %53, %90
  %68 = call i32 (...) @ktime_get()
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @ktime_after(i32 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %72 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %73 = call i32 @sdhci_readw(%struct.sdhci_host* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @SDHCI_CLOCK_INT_STABLE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %92

79:                                               ; preds = %67
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %84 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mmc_hostname(i32 %85)
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %89 = call i32 @sdhci_dumpregs(%struct.sdhci_host* %88)
  br label %101

90:                                               ; preds = %79
  %91 = call i32 @udelay(i32 10)
  br label %67

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %48, %42
  %94 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %100 = call i32 @sdhci_writew(%struct.sdhci_host* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %93, %82, %32
  ret void
}

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_host*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
