; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_enable_sdio_irq_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_enable_sdio_irq_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }

@SDHCI_DEVICE_DEAD = common dso_local global i32 0, align 4
@SDHCI_INT_CARD_INT = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_enable_sdio_irq_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_enable_sdio_irq_nolock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %6 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SDHCI_DEVICE_DEAD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @SDHCI_INT_CARD_INT, align 4
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %27

20:                                               ; preds = %11
  %21 = load i32, i32* @SDHCI_INT_CARD_INT, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %24 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %33 = call i32 @sdhci_writel(%struct.sdhci_host* %28, i32 %31, i32 %32)
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %39 = call i32 @sdhci_writel(%struct.sdhci_host* %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
