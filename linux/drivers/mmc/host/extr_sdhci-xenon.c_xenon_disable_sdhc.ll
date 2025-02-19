; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_disable_sdhc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_disable_sdhc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@XENON_SYS_OP_CTRL = common dso_local global i32 0, align 4
@XENON_SLOT_ENABLE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i8)* @xenon_disable_sdhc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_disable_sdhc(%struct.sdhci_host* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %7 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %8 = call i32 @sdhci_readl(%struct.sdhci_host* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i8, i8* %4, align 1
  %10 = call i32 @BIT(i8 zeroext %9)
  %11 = load i32, i32* @XENON_SLOT_ENABLE_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %19 = call i32 @sdhci_writel(%struct.sdhci_host* %16, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @BIT(i8 zeroext) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
