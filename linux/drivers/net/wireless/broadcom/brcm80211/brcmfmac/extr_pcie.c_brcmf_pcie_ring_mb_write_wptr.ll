; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_ring_mb_write_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_ring_mb_write_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pcie_ringbuf = type { i32, i32, %struct.brcmf_commonring, %struct.brcmf_pciedev_info* }
%struct.brcmf_commonring = type { i32, i32 }
%struct.brcmf_pciedev_info = type { i64, i32 (%struct.brcmf_pciedev_info*, i32, i32)* }

@BRCMFMAC_PCIE_STATE_UP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"W w_ptr %d (%d), ring %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @brcmf_pcie_ring_mb_write_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_ring_mb_write_wptr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.brcmf_pcie_ringbuf*, align 8
  %5 = alloca %struct.brcmf_pciedev_info*, align 8
  %6 = alloca %struct.brcmf_commonring*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.brcmf_pcie_ringbuf*
  store %struct.brcmf_pcie_ringbuf* %8, %struct.brcmf_pcie_ringbuf** %4, align 8
  %9 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %9, i32 0, i32 3
  %11 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %10, align 8
  store %struct.brcmf_pciedev_info* %11, %struct.brcmf_pciedev_info** %5, align 8
  %12 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %12, i32 0, i32 2
  store %struct.brcmf_commonring* %13, %struct.brcmf_commonring** %6, align 8
  %14 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BRCMFMAC_PCIE_STATE_UP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %45

22:                                               ; preds = %1
  %23 = load i32, i32* @PCIE, align 4
  %24 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %6, align 8
  %25 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %6, align 8
  %28 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %31 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @brcmf_dbg(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  %34 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %35 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %34, i32 0, i32 1
  %36 = load i32 (%struct.brcmf_pciedev_info*, i32, i32)*, i32 (%struct.brcmf_pciedev_info*, i32, i32)** %35, align 8
  %37 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %38 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %4, align 8
  %39 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %6, align 8
  %42 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %36(%struct.brcmf_pciedev_info* %37, i32 %40, i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %22, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
