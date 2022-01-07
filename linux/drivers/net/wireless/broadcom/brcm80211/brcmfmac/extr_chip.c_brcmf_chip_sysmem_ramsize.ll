; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sysmem_ramsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sysmem_ramsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core_priv = type { i32 }

@SRCI_SRNB_MASK = common dso_local global i32 0, align 4
@SRCI_SRNB_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_core_priv*)* @brcmf_chip_sysmem_ramsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_chip_sysmem_ramsize(%struct.brcmf_core_priv* %0) #0 {
  %2 = alloca %struct.brcmf_core_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcmf_core_priv* %0, %struct.brcmf_core_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %9 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %8, i32 0, i32 0
  %10 = call i32 @brcmf_chip_iscoreup(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %14 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %13, i32 0, i32 0
  %15 = call i32 @brcmf_chip_resetcore(i32* %14, i32 0, i32 0, i32 0)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @SYSMEMREGOFFS(i32 %18)
  %20 = call i32 @brcmf_chip_core_read32(%struct.brcmf_core_priv* %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SRCI_SRNB_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @SRCI_SRNB_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %37, %16
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @brcmf_chip_socram_banksize(%struct.brcmf_core_priv* %31, i32 %32, i32* %7)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %26

40:                                               ; preds = %26
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @brcmf_chip_iscoreup(i32*) #1

declare dso_local i32 @brcmf_chip_resetcore(i32*, i32, i32, i32) #1

declare dso_local i32 @brcmf_chip_core_read32(%struct.brcmf_core_priv*, i32) #1

declare dso_local i32 @SYSMEMREGOFFS(i32) #1

declare dso_local i32 @brcmf_chip_socram_banksize(%struct.brcmf_core_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
