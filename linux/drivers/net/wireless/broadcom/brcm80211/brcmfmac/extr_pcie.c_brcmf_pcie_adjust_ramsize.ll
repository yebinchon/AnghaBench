; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_adjust_ramsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_adjust_ramsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BRCMF_RAMSIZE_OFFSET = common dso_local global i32 0, align 4
@BRCMF_RAMSIZE_MAGIC = common dso_local global i64 0, align 8
@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Found ramsize info in FW, adjusting to 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pciedev_info*, i32*, i32)* @brcmf_pcie_adjust_ramsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_adjust_ramsize(%struct.brcmf_pciedev_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_pciedev_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @BRCMF_RAMSIZE_OFFSET, align 4
  %11 = add nsw i32 %10, 8
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %38

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @BRCMF_RAMSIZE_OFFSET, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @le32_to_cpup(i32* %19)
  %21 = load i64, i64* @BRCMF_RAMSIZE_MAGIC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %38

24:                                               ; preds = %14
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @le32_to_cpup(i32* %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @PCIE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @brcmf_dbg(i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %35 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %24, %23, %13
  ret void
}

declare dso_local i64 @le32_to_cpup(i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
