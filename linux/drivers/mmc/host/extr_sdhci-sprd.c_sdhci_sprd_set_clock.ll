; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_SPRD_BIT_CMD_DLY_INV = common dso_local global i32 0, align 4
@SDHCI_SPRD_BIT_POSRD_DLY_INV = common dso_local global i32 0, align 4
@SDHCI_SPRD_PHY_DLL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_sprd_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_sprd_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %12 = call i32 @sdhci_writew(%struct.sdhci_host* %10, i32 0, i32 %11)
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %21 = call i32 @sdhci_sprd_sd_clk_off(%struct.sdhci_host* %20)
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @_sdhci_sprd_set_clock(%struct.sdhci_host* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ule i32 %25, 400000
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %30 = load i32, i32* @SDHCI_SPRD_BIT_CMD_DLY_INV, align 4
  %31 = load i32, i32* @SDHCI_SPRD_BIT_POSRD_DLY_INV, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @sdhci_sprd_set_dll_invert(%struct.sdhci_host* %29, i32 %32, i32 %33)
  store i32 1, i32* %6, align 4
  br label %39

35:                                               ; preds = %13
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @_sdhci_sprd_set_clock(%struct.sdhci_host* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %9
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SDHCI_SPRD_PHY_DLL_CLK, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %49 = call i32 @sdhci_sprd_enable_phy_dll(%struct.sdhci_host* %48)
  br label %50

50:                                               ; preds = %47, %43, %40
  ret void
}

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_sprd_sd_clk_off(%struct.sdhci_host*) #1

declare dso_local i32 @_sdhci_sprd_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_sprd_set_dll_invert(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_sprd_enable_phy_dll(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
