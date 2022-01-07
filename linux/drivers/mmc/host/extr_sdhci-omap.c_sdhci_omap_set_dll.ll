; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_dll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { i32 }

@SDHCI_OMAP_DLL = common dso_local global i32 0, align 4
@DLL_FORCE_VALUE = common dso_local global i32 0, align 4
@DLL_FORCE_SR_C_MASK = common dso_local global i32 0, align 4
@DLL_FORCE_SR_C_SHIFT = common dso_local global i32 0, align 4
@DLL_CALIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_omap_host*, i32)* @sdhci_omap_set_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_omap_set_dll(%struct.sdhci_omap_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_omap_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %8 = load i32, i32* @SDHCI_OMAP_DLL, align 4
  %9 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @DLL_FORCE_VALUE, align 4
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @DLL_FORCE_SR_C_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DLL_FORCE_SR_C_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %23 = load i32, i32* @SDHCI_OMAP_DLL, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @DLL_CALIB, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %30 = load i32, i32* @SDHCI_OMAP_DLL, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %29, i32 %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %46, %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 1000
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %38 = load i32, i32* @SDHCI_OMAP_DLL, align 4
  %39 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @DLL_CALIB, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %49

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %33

49:                                               ; preds = %44, %33
  %50 = load i32, i32* @DLL_CALIB, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %55 = load i32, i32* @SDHCI_OMAP_DLL, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
