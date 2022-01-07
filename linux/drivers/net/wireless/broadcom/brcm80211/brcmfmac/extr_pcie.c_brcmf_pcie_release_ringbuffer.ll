; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_release_ringbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_release_ringbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_pcie_ringbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.brcmf_pcie_ringbuf*)* @brcmf_pcie_release_ringbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_release_ringbuffer(%struct.device* %0, %struct.brcmf_pcie_ringbuf* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.brcmf_pcie_ringbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.brcmf_pcie_ringbuf* %1, %struct.brcmf_pcie_ringbuf** %4, align 8
  %7 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %8 = icmp ne %struct.brcmf_pcie_ringbuf* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %37

10:                                               ; preds = %2
  %11 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %12 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %19 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %23 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %21, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %31 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_free_coherent(%struct.device* %27, i32 %28, i8* %29, i32 %32)
  br label %34

34:                                               ; preds = %17, %10
  %35 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %36 = call i32 @kfree(%struct.brcmf_pcie_ringbuf* %35)
  br label %37

37:                                               ; preds = %34, %9
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_pcie_ringbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
