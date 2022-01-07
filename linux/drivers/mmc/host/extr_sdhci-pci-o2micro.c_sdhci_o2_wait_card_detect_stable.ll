; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_o2_wait_card_detect_stable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_o2_wait_card_detect_stable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_CARD_PRESENT = common dso_local global i32 0, align 4
@SDHCI_CARD_PRES_SHIFT = common dso_local global i32 0, align 4
@SDHCI_CD_LVL = common dso_local global i32 0, align 4
@SDHCI_CD_LVL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: Card Detect debounce never finished.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_o2_wait_card_detect_stable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_o2_wait_card_detect_stable(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %6 = call i32 (...) @ktime_get()
  %7 = call i32 @ktime_add_ms(i32 %6, i32 50)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %1, %38
  %9 = call i32 (...) @ktime_get()
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ktime_after(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %13 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %14 = call i32 @sdhci_readl(%struct.sdhci_host* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SDHCI_CARD_PRESENT, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @SDHCI_CARD_PRES_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SDHCI_CD_LVL, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @SDHCI_CD_LVL_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  br label %40

27:                                               ; preds = %8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %32 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mmc_hostname(i32 %33)
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %37 = call i32 @sdhci_dumpregs(%struct.sdhci_host* %36)
  br label %40

38:                                               ; preds = %27
  %39 = call i32 @udelay(i32 10)
  br label %8

40:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

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
