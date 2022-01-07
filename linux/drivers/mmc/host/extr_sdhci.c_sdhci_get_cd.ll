; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_get_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32, i32, i32 }

@SDHCI_DEVICE_DEAD = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_CARD_DETECTION = common dso_local global i32 0, align 4
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_CARD_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @sdhci_get_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.sdhci_host* %7, %struct.sdhci_host** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call i32 @mmc_gpio_get_cd(%struct.mmc_host* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SDHCI_DEVICE_DEAD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mmc_card_is_removable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %51

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %51

33:                                               ; preds = %24
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SDHCI_QUIRK_BROKEN_CARD_DETECTION, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %51

41:                                               ; preds = %33
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %43 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %44 = call i32 @sdhci_readl(%struct.sdhci_host* %42, i32 %43)
  %45 = load i32, i32* @SDHCI_CARD_PRESENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %40, %27, %23, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_gpio_get_cd(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_is_removable(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
