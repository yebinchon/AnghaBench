; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra210_sdhci_writew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra210_sdhci_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }

@SDHCI_COMMAND = common dso_local global i32 0, align 4
@MMC_SEND_TUNING_BLOCK = common dso_local global i64 0, align 8
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i64 0, align 8
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32, i32)* @tegra210_sdhci_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_sdhci_writew(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SDHCI_COMMAND, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @SDHCI_GET_CMD(i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @MMC_SEND_TUNING_BLOCK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @MMC_SEND_TUNING_BLOCK_HS200, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i1 [ true, %13 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %31 = call i32 @tegra_sdhci_configure_card_clk(%struct.sdhci_host* %30, i32 0)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @writew(i32 %33, i64 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = call i32 @udelay(i32 1)
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %46 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %47 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @sdhci_reset(%struct.sdhci_host* %45, i32 %48)
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @tegra_sdhci_configure_card_clk(%struct.sdhci_host* %50, i32 %51)
  br label %53

53:                                               ; preds = %43, %32
  ret void
}

declare dso_local i64 @SDHCI_GET_CMD(i32) #1

declare dso_local i32 @tegra_sdhci_configure_card_clk(%struct.sdhci_host*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
