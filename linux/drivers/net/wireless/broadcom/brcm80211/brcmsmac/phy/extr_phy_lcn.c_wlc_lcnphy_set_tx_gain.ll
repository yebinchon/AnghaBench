; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tx_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.lcnphy_txgains = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.lcnphy_txgains*)* @wlc_lcnphy_set_tx_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_tx_gain(%struct.brcms_phy* %0, %struct.lcnphy_txgains* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca %struct.lcnphy_txgains*, align 8
  %5 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store %struct.lcnphy_txgains* %1, %struct.lcnphy_txgains** %4, align 8
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %7 = call i32 @wlc_lcnphy_get_pa_gain(%struct.brcms_phy* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %10 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %13 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 8
  %16 = or i32 %11, %15
  %17 = shl i32 %16, 0
  %18 = call i32 @mod_phy_reg(%struct.brcms_phy* %8, i32 1205, i32 65535, i32 %17)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %21 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %22, %24
  %26 = shl i32 %25, 0
  %27 = call i32 @mod_phy_reg(%struct.brcms_phy* %19, i32 1275, i32 32767, i32 %26)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %30 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %33 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %31, %35
  %37 = shl i32 %36, 0
  %38 = call i32 @mod_phy_reg(%struct.brcms_phy* %28, i32 1276, i32 65535, i32 %37)
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %41 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %42, %44
  %46 = shl i32 %45, 0
  %47 = call i32 @mod_phy_reg(%struct.brcms_phy* %39, i32 1277, i32 32767, i32 %46)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %49 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %50 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wlc_lcnphy_set_dac_gain(%struct.brcms_phy* %48, i32 %51)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %54 = call i32 @wlc_lcnphy_enable_tx_gain_override(%struct.brcms_phy* %53)
  ret void
}

declare dso_local i32 @wlc_lcnphy_get_pa_gain(%struct.brcms_phy*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_dac_gain(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_enable_tx_gain_override(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
