; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_hs_delay_adj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_hs_delay_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32, i32 }

@XENON_DEFAULT_SDCLK_FREQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Timing issue might occur in DDR mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @xenon_hs_delay_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_hs_delay_adj(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %6 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @XENON_DEFAULT_SDCLK_FREQ, align 8
  %9 = icmp sle i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %32 [
    i32 130, label %20
    i32 131, label %23
    i32 128, label %23
    i32 132, label %26
    i32 129, label %26
  ]

20:                                               ; preds = %16
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %22 = call i32 @xenon_emmc_phy_strobe_delay_adj(%struct.sdhci_host* %21)
  store i32 0, i32* %2, align 4
  br label %34

23:                                               ; preds = %16, %16
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %25 = call i32 @xenon_emmc_phy_config_tuning(%struct.sdhci_host* %24)
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %16, %16
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mmc_dev(i32 %29)
  %31 = call i32 @dev_warn_once(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %34

32:                                               ; preds = %16
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %26, %23, %20, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @xenon_emmc_phy_strobe_delay_adj(%struct.sdhci_host*) #1

declare dso_local i32 @xenon_emmc_phy_config_tuning(%struct.sdhci_host*) #1

declare dso_local i32 @dev_warn_once(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
