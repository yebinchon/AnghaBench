; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_exit_download_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_exit_download_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.brcmf_core = type { i32 }

@BRCM_CC_43602_CHIP_ID = common dso_local global i64 0, align 8
@BCMA_CORE_INTERNAL_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pciedev_info*, i32)* @brcmf_pcie_exit_download_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_exit_download_state(%struct.brcmf_pciedev_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_pciedev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_core*, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %8 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BRCM_CC_43602_CHIP_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %16 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* @BCMA_CORE_INTERNAL_MEM, align 4
  %19 = call %struct.brcmf_core* @brcmf_chip_get_core(%struct.TYPE_3__* %17, i32 %18)
  store %struct.brcmf_core* %19, %struct.brcmf_core** %6, align 8
  %20 = load %struct.brcmf_core*, %struct.brcmf_core** %6, align 8
  %21 = call i32 @brcmf_chip_resetcore(%struct.brcmf_core* %20, i32 0, i32 0, i32 0)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %24 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @brcmf_chip_set_active(%struct.TYPE_3__* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.brcmf_core* @brcmf_chip_get_core(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @brcmf_chip_resetcore(%struct.brcmf_core*, i32, i32, i32) #1

declare dso_local i32 @brcmf_chip_set_active(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
