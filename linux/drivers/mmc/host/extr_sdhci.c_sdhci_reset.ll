; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i64 }

@SDHCI_SOFTWARE_RESET = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: Reset 0x%x never completed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_reset(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SDHCI_SOFTWARE_RESET, align 4
  %10 = call i32 @sdhci_writeb(%struct.sdhci_host* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %26 = call i32 @sdhci_runtime_pm_bus_off(%struct.sdhci_host* %25)
  br label %27

27:                                               ; preds = %24, %15
  br label %28

28:                                               ; preds = %27, %2
  %29 = call i32 (...) @ktime_get()
  %30 = call i32 @ktime_add_ms(i32 %29, i32 100)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %54
  %32 = call i32 (...) @ktime_get()
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ktime_after(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = load i32, i32* @SDHCI_SOFTWARE_RESET, align 4
  %37 = call i32 @sdhci_readb(%struct.sdhci_host* %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %56

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %47 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mmc_hostname(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %53 = call i32 @sdhci_dumpregs(%struct.sdhci_host* %52)
  br label %56

54:                                               ; preds = %42
  %55 = call i32 @udelay(i32 10)
  br label %31

56:                                               ; preds = %45, %41
  ret void
}

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_runtime_pm_bus_off(%struct.sdhci_host*) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_host*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
