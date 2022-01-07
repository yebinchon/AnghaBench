; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BCMA_CORE_PCIE2 = common dso_local global i32 0, align 4
@BRCMF_PCIE_PCIE2REG_CONFIGADDR = common dso_local global i32 0, align 4
@BRCMF_PCIE_PCIE2REG_CONFIGDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pciedev_info*)* @brcmf_pcie_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_attach(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca %struct.brcmf_pciedev_info*, align 8
  %3 = alloca i32, align 4
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %2, align 8
  %4 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %5 = load i32, i32* @BCMA_CORE_PCIE2, align 4
  %6 = call i32 @brcmf_pcie_select_core(%struct.brcmf_pciedev_info* %4, i32 %5)
  %7 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %8 = load i32, i32* @BRCMF_PCIE_PCIE2REG_CONFIGADDR, align 4
  %9 = call i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info* %7, i32 %8, i32 1248)
  %10 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %11 = load i32, i32* @BRCMF_PCIE_PCIE2REG_CONFIGDATA, align 4
  %12 = call i32 @brcmf_pcie_read_reg32(%struct.brcmf_pciedev_info* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %14 = load i32, i32* @BRCMF_PCIE_PCIE2REG_CONFIGDATA, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info* %13, i32 %14, i32 %15)
  %17 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %18 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @device_wakeup_enable(i32* %20)
  ret void
}

declare dso_local i32 @brcmf_pcie_select_core(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info*, i32, i32) #1

declare dso_local i32 @brcmf_pcie_read_reg32(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @device_wakeup_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
