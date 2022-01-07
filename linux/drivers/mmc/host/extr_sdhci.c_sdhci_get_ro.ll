; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_get_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32 }

@SDHCI_QUIRK_UNSTABLE_RO_DETECT = common dso_local global i32 0, align 4
@SAMPLE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @sdhci_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.sdhci_host* %8, %struct.sdhci_host** %4, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SDHCI_QUIRK_UNSTABLE_RO_DETECT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %17 = call i32 @sdhci_check_ro(%struct.sdhci_host* %16)
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SAMPLE_COUNT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %25 = call i32 @sdhci_check_ro(%struct.sdhci_host* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @SAMPLE_COUNT, align 4
  %31 = sdiv i32 %30, 2
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %41

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %23
  %36 = call i32 @msleep(i32 30)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %19

40:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %33, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_check_ro(%struct.sdhci_host*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
