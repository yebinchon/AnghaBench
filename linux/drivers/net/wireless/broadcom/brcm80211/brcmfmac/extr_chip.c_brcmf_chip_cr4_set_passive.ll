; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_cr4_set_passive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_cr4_set_passive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_chip_priv = type { i32 }
%struct.brcmf_core = type { i32 }

@BCMA_CORE_ARM_CR4 = common dso_local global i32 0, align 4
@BCMA_CORE_80211 = common dso_local global i32 0, align 4
@D11_BCMA_IOCTL_PHYRESET = common dso_local global i32 0, align 4
@D11_BCMA_IOCTL_PHYCLOCKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_chip_priv*)* @brcmf_chip_cr4_set_passive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_chip_cr4_set_passive(%struct.brcmf_chip_priv* %0) #0 {
  %2 = alloca %struct.brcmf_chip_priv*, align 8
  %3 = alloca %struct.brcmf_core*, align 8
  store %struct.brcmf_chip_priv* %0, %struct.brcmf_chip_priv** %2, align 8
  %4 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %2, align 8
  %5 = load i32, i32* @BCMA_CORE_ARM_CR4, align 4
  %6 = call i32 @brcmf_chip_disable_arm(%struct.brcmf_chip_priv* %4, i32 %5)
  %7 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %2, align 8
  %8 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %7, i32 0, i32 0
  %9 = load i32, i32* @BCMA_CORE_80211, align 4
  %10 = call %struct.brcmf_core* @brcmf_chip_get_core(i32* %8, i32 %9)
  store %struct.brcmf_core* %10, %struct.brcmf_core** %3, align 8
  %11 = load %struct.brcmf_core*, %struct.brcmf_core** %3, align 8
  %12 = load i32, i32* @D11_BCMA_IOCTL_PHYRESET, align 4
  %13 = load i32, i32* @D11_BCMA_IOCTL_PHYCLOCKEN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @D11_BCMA_IOCTL_PHYCLOCKEN, align 4
  %16 = load i32, i32* @D11_BCMA_IOCTL_PHYCLOCKEN, align 4
  %17 = call i32 @brcmf_chip_resetcore(%struct.brcmf_core* %11, i32 %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @brcmf_chip_disable_arm(%struct.brcmf_chip_priv*, i32) #1

declare dso_local %struct.brcmf_core* @brcmf_chip_get_core(i32*, i32) #1

declare dso_local i32 @brcmf_chip_resetcore(%struct.brcmf_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
