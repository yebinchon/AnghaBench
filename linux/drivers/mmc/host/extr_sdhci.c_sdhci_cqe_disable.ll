; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_cqe_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_cqe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32, i32, i32 }

@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: sdhci: CQE off, IRQ mask %#x, IRQ status %#x\0A\00", align 1
@SDHCI_INT_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_cqe_disable(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.sdhci_host* %8, %struct.sdhci_host** %5, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %14 = call i32 @sdhci_set_default_irqs(%struct.sdhci_host* %13)
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %21 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %22 = call i32 @sdhci_do_reset(%struct.sdhci_host* %20, i32 %21)
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %24 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %25 = call i32 @sdhci_do_reset(%struct.sdhci_host* %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = call i32 @mmc_hostname(%struct.mmc_host* %27)
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %33 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %34 = call i32 @sdhci_readl(%struct.sdhci_host* %32, i32 %33)
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34)
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %37 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %36, i32 0, i32 1
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdhci_set_default_irqs(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_do_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
