; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_am654.c_sdhci_am654_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_am654.c_sdhci_am654_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i8, i16)* @sdhci_am654_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_am654_set_power(%struct.sdhci_host* %0, i8 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca %struct.mmc_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i8 %1, i8* %5, align 1
  store i16 %2, i16* %6, align 2
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %9 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %8, i32 0, i32 0
  %10 = load %struct.mmc_host*, %struct.mmc_host** %9, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @IS_ERR(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 0
  %19 = load %struct.mmc_host*, %struct.mmc_host** %18, align 8
  store %struct.mmc_host* %19, %struct.mmc_host** %7, align 8
  %20 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %21 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %22 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i16, i16* %6, align 2
  %26 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %20, i32 %24, i16 zeroext %25)
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %29 = load i8, i8* %5, align 1
  %30 = load i16, i16* %6, align 2
  %31 = call i32 @sdhci_set_power_noreg(%struct.sdhci_host* %28, i8 zeroext %29, i16 zeroext %30)
  ret void
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i16 zeroext) #1

declare dso_local i32 @sdhci_set_power_noreg(%struct.sdhci_host*, i8 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
