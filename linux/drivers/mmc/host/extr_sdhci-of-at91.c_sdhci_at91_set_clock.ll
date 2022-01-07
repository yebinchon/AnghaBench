; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-at91.c_sdhci_at91_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-at91.c_sdhci_at91_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_EN = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_STABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Internal clock never stabilised.\0A\00", align 1
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_at91_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_at91_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %13 = call i32 @sdhci_readw(%struct.sdhci_host* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %20 = call i32 @sdhci_writew(%struct.sdhci_host* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @sdhci_calc_clk(%struct.sdhci_host* %25, i32 %26, i64* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %38 = call i32 @sdhci_writew(%struct.sdhci_host* %35, i32 %36, i32 %37)
  store i64 20, i64* %6, align 8
  br label %39

39:                                               ; preds = %56, %24
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %41 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %42 = call i32 @sdhci_readw(%struct.sdhci_host* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @SDHCI_CLOCK_INT_STABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %60

47:                                               ; preds = %39
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = call i32 @mmc_hostname(%struct.TYPE_2__* %53)
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %68

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %6, align 8
  %59 = call i32 @mdelay(i32 1)
  br label %39

60:                                               ; preds = %39
  %61 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %67 = call i32 @sdhci_writew(%struct.sdhci_host* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %50, %23
  ret void
}

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_calc_clk(%struct.sdhci_host*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_2__*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
