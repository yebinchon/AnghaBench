; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_card_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_card_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32 }

@SDHCI_QUIRK_BROKEN_CARD_DETECTION = common dso_local global i32 0, align 4
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_CARD_PRESENT = common dso_local global i32 0, align 4
@SDHCI_INT_CARD_REMOVE = common dso_local global i32 0, align 4
@SDHCI_INT_CARD_INSERT = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_set_card_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_card_detection(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SDHCI_QUIRK_BROKEN_CARD_DETECTION, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mmc_card_is_removable(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %2
  br label %62

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %24 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %25 = call i32 @sdhci_readl(%struct.sdhci_host* %23, i32 %24)
  %26 = load i32, i32* @SDHCI_CARD_PRESENT, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @SDHCI_INT_CARD_REMOVE, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @SDHCI_INT_CARD_INSERT, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %37 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %49

40:                                               ; preds = %19
  %41 = load i32, i32* @SDHCI_INT_CARD_REMOVE, align 4
  %42 = load i32, i32* @SDHCI_INT_CARD_INSERT, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %40, %34
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %55 = call i32 @sdhci_writel(%struct.sdhci_host* %50, i32 %53, i32 %54)
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %57 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %58 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %61 = call i32 @sdhci_writel(%struct.sdhci_host* %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %18
  ret void
}

declare dso_local i32 @mmc_card_is_removable(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
