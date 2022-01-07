; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_2064_vco_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_2064_vco_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@RADIO_2064_REG057 = common dso_local global i32 0, align 4
@RADIO_2064_REG056 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_2064_vco_cal(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = load i32, i32* @RADIO_2064_REG057, align 4
  %6 = call i32 @mod_radio_reg(%struct.brcms_phy* %4, i32 %5, i32 8, i32 8)
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = load i32, i32* @RADIO_2064_REG056, align 4
  %9 = call i64 @read_radio_reg(%struct.brcms_phy* %7, i32 %8)
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 248
  store i32 %11, i32* %3, align 4
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = load i32, i32* @RADIO_2064_REG056, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @write_radio_reg(%struct.brcms_phy* %12, i32 %13, i32 %14)
  %16 = call i32 @udelay(i32 1)
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = load i32, i32* @RADIO_2064_REG056, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, 3
  %21 = call i32 @write_radio_reg(%struct.brcms_phy* %17, i32 %18, i32 %20)
  %22 = call i32 @udelay(i32 1)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = load i32, i32* @RADIO_2064_REG056, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, 7
  %27 = call i32 @write_radio_reg(%struct.brcms_phy* %23, i32 %24, i32 %26)
  %28 = call i32 @udelay(i32 300)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %30 = load i32, i32* @RADIO_2064_REG057, align 4
  %31 = call i32 @mod_radio_reg(%struct.brcms_phy* %29, i32 %30, i32 8, i32 0)
  ret void
}

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
