; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_rx_iq_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_rx_iq_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32)* @wlc_lcnphy_set_rx_iq_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_rx_iq_comp(%struct.brcms_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 %8, 0
  %10 = call i32 @mod_phy_reg(%struct.brcms_phy* %7, i32 1605, i32 1023, i32 %9)
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 0
  %14 = call i32 @mod_phy_reg(%struct.brcms_phy* %11, i32 1606, i32 1023, i32 %13)
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 0
  %18 = call i32 @mod_phy_reg(%struct.brcms_phy* %15, i32 1607, i32 1023, i32 %17)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 0
  %22 = call i32 @mod_phy_reg(%struct.brcms_phy* %19, i32 1608, i32 1023, i32 %21)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 0
  %26 = call i32 @mod_phy_reg(%struct.brcms_phy* %23, i32 1609, i32 1023, i32 %25)
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 0
  %30 = call i32 @mod_phy_reg(%struct.brcms_phy* %27, i32 1610, i32 1023, i32 %29)
  ret void
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
