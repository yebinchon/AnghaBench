; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_tcm_ramsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_tcm_ramsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core_priv = type { i32 }

@ARMCR4_CAP = common dso_local global i32 0, align 4
@ARMCR4_TCBANB_MASK = common dso_local global i32 0, align 4
@ARMCR4_TCBANB_SHIFT = common dso_local global i32 0, align 4
@ARMCR4_TCBBNB_MASK = common dso_local global i32 0, align 4
@ARMCR4_TCBBNB_SHIFT = common dso_local global i32 0, align 4
@ARMCR4_BANKIDX = common dso_local global i32 0, align 4
@ARMCR4_BANKINFO = common dso_local global i32 0, align 4
@ARMCR4_BSZ_MASK = common dso_local global i32 0, align 4
@ARMCR4_BSZ_MULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_core_priv*)* @brcmf_chip_tcm_ramsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_chip_tcm_ramsize(%struct.brcmf_core_priv* %0) #0 {
  %2 = alloca %struct.brcmf_core_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmf_core_priv* %0, %struct.brcmf_core_priv** %2, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %11 = load i32, i32* @ARMCR4_CAP, align 4
  %12 = call i32 @brcmf_chip_core_read32(%struct.brcmf_core_priv* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ARMCR4_TCBANB_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @ARMCR4_TCBANB_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ARMCR4_TCBBNB_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @ARMCR4_TCBBNB_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %46, %1
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %32 = load i32, i32* @ARMCR4_BANKIDX, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @brcmf_chip_core_write32(%struct.brcmf_core_priv* %31, i32 %32, i32 %33)
  %35 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %36 = load i32, i32* @ARMCR4_BANKINFO, align 4
  %37 = call i32 @brcmf_chip_core_read32(%struct.brcmf_core_priv* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ARMCR4_BSZ_MASK, align 4
  %40 = and i32 %38, %39
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @ARMCR4_BSZ_MULT, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @brcmf_chip_core_read32(%struct.brcmf_core_priv*, i32) #1

declare dso_local i32 @brcmf_chip_core_write32(%struct.brcmf_core_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
