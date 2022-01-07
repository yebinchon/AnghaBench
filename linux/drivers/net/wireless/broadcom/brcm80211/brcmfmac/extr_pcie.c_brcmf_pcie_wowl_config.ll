; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_wowl_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_wowl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcmf_pciedev* }
%struct.brcmf_pciedev = type { %struct.brcmf_pciedev_info* }
%struct.brcmf_pciedev_info = type { i32 }

@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Configuring WOWL, enabled=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @brcmf_pcie_wowl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_wowl_config(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_bus*, align 8
  %6 = alloca %struct.brcmf_pciedev*, align 8
  %7 = alloca %struct.brcmf_pciedev_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %8)
  store %struct.brcmf_bus* %9, %struct.brcmf_bus** %5, align 8
  %10 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %11 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %12, align 8
  store %struct.brcmf_pciedev* %13, %struct.brcmf_pciedev** %6, align 8
  %14 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %6, align 8
  %15 = getelementptr inbounds %struct.brcmf_pciedev, %struct.brcmf_pciedev* %14, i32 0, i32 0
  %16 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %15, align 8
  store %struct.brcmf_pciedev_info* %16, %struct.brcmf_pciedev_info** %7, align 8
  %17 = load i32, i32* @PCIE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @brcmf_dbg(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %7, align 8
  %22 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
