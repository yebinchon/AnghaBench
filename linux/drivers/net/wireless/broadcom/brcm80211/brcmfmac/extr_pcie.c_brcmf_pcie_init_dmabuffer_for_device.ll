; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_init_dmabuffer_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_init_dmabuffer_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.brcmf_pciedev_info*, i64, i64, i64*)* @brcmf_pcie_init_dmabuffer_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @brcmf_pcie_init_dmabuffer_for_device(%struct.brcmf_pciedev_info* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.brcmf_pciedev_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %13 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = load i64*, i64** %9, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @dma_alloc_coherent(i32* %15, i64 %16, i64* %17, i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %41

23:                                               ; preds = %4
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %27, i64 %28, i32 %29)
  %31 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %32, 4
  %34 = load i32, i32* %11, align 4
  %35 = ashr i32 %34, 32
  %36 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %31, i64 %33, i32 %35)
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @memset(i8* %37, i32 0, i64 %38)
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %23, %22
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i64*, i32) #1

declare dso_local i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
