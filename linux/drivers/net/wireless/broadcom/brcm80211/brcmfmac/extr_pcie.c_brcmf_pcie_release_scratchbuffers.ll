; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_release_scratchbuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_release_scratchbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@BRCMF_DMA_D2H_SCRATCH_BUF_LEN = common dso_local global i32 0, align 4
@BRCMF_DMA_D2H_RINGUPD_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pciedev_info*)* @brcmf_pcie_release_scratchbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_release_scratchbuffers(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca %struct.brcmf_pciedev_info*, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %2, align 8
  %3 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %4 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %10 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* @BRCMF_DMA_D2H_SCRATCH_BUF_LEN, align 4
  %14 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %15 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %19 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dma_free_coherent(i32* %12, i32 %13, i64 %17, i32 %21)
  br label %23

23:                                               ; preds = %8, %1
  %24 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %25 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %31 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* @BRCMF_DMA_D2H_RINGUPD_BUF_LEN, align 4
  %35 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %36 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %40 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dma_free_coherent(i32* %33, i32 %34, i64 %38, i32 %42)
  br label %44

44:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
