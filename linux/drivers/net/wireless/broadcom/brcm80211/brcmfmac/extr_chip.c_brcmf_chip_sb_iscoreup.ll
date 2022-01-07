; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sb_iscoreup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sb_iscoreup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core_priv = type { %struct.TYPE_3__, %struct.brcmf_chip_priv* }
%struct.TYPE_3__ = type { i32 }
%struct.brcmf_chip_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)* }

@sbtmstatelow = common dso_local global i32 0, align 4
@SSB_TMSLOW_RESET = common dso_local global i32 0, align 4
@SSB_TMSLOW_REJECT = common dso_local global i32 0, align 4
@SSB_IMSTATE_REJECT = common dso_local global i32 0, align 4
@SSB_TMSLOW_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_core_priv*)* @brcmf_chip_sb_iscoreup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_chip_sb_iscoreup(%struct.brcmf_core_priv* %0) #0 {
  %2 = alloca %struct.brcmf_core_priv*, align 8
  %3 = alloca %struct.brcmf_chip_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcmf_core_priv* %0, %struct.brcmf_core_priv** %2, align 8
  %6 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %7 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %6, i32 0, i32 1
  %8 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  store %struct.brcmf_chip_priv* %8, %struct.brcmf_chip_priv** %3, align 8
  %9 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %10 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @sbtmstatelow, align 4
  %14 = call i32 @CORE_SB(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %16 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %21 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 %19(i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @SSB_TMSLOW_RESET, align 4
  %26 = load i32, i32* @SSB_TMSLOW_REJECT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SSB_IMSTATE_REJECT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @SSB_TMSLOW_CLOCK, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @CORE_SB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
