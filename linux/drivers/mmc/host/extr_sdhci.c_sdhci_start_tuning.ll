; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_start_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_start_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_EXEC_TUNING = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_TUNING_WORK_AROUND = common dso_local global i32 0, align 4
@SDHCI_CTRL_TUNED_CLK = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_AVAIL = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_start_tuning(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %6 = call i32 @sdhci_readw(%struct.sdhci_host* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @SDHCI_CTRL_EXEC_TUNING, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SDHCI_QUIRK2_TUNING_WORK_AROUND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @SDHCI_CTRL_TUNED_CLK, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %24 = call i32 @sdhci_writew(%struct.sdhci_host* %21, i32 %22, i32 %23)
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %26 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %27 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %28 = call i32 @sdhci_writel(%struct.sdhci_host* %25, i32 %26, i32 %27)
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %30 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %31 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %32 = call i32 @sdhci_writel(%struct.sdhci_host* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
