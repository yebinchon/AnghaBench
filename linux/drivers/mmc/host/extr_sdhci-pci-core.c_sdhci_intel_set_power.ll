; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_sdhci_intel_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_sdhci_intel_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@MMC_POWER_OFF = common dso_local global i8 0, align 1
@SDHCI_INTEL_PWR_TIMEOUT_CNT = common dso_local global i32 0, align 4
@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@SDHCI_POWER_ON = common dso_local global i32 0, align 4
@SDHCI_INTEL_PWR_TIMEOUT_UDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i8, i16)* @sdhci_intel_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_intel_set_power(%struct.sdhci_host* %0, i8 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i8 %1, i8* %5, align 1
  store i16 %2, i16* %6, align 2
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %10 = load i8, i8* %5, align 1
  %11 = load i16, i16* %6, align 2
  %12 = call i32 @sdhci_set_power(%struct.sdhci_host* %9, i8 zeroext %10, i16 zeroext %11)
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @MMC_POWER_OFF, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %46

19:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SDHCI_INTEL_PWR_TIMEOUT_CNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %26 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %27 = call i32 @sdhci_readb(%struct.sdhci_host* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SDHCI_POWER_ON, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %46

33:                                               ; preds = %24
  %34 = load i32, i32* @SDHCI_INTEL_PWR_TIMEOUT_UDELAY, align 4
  %35 = call i32 @udelay(i32 %34)
  %36 = load i32, i32* @SDHCI_POWER_ON, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %42 = call i32 @sdhci_writeb(%struct.sdhci_host* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %20

46:                                               ; preds = %18, %32, %20
  ret void
}

declare dso_local i32 @sdhci_set_power(%struct.sdhci_host*, i8 zeroext, i16 zeroext) #1

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
