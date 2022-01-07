; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_b2063_vco_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_b2063_vco_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B2063_PLL_SP1 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_CALNRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_b2063_vco_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_b2063_vco_calib(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = load i32, i32* @B2063_PLL_SP1, align 4
  %6 = call i32 @b43_radio_mask(%struct.b43_wldev* %4, i32 %5, i32 -65)
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = load i32, i32* @B2063_PLL_JTAG_CALNRST, align 4
  %9 = call i32 @b43_radio_read(%struct.b43_wldev* %7, i32 %8)
  %10 = and i32 %9, 248
  store i32 %10, i32* %3, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B2063_PLL_JTAG_CALNRST, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @b43_radio_write(%struct.b43_wldev* %11, i32 %12, i32 %13)
  %15 = call i32 @udelay(i32 1)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* @B2063_PLL_JTAG_CALNRST, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, 4
  %20 = call i32 @b43_radio_write(%struct.b43_wldev* %16, i32 %17, i32 %19)
  %21 = call i32 @udelay(i32 1)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = load i32, i32* @B2063_PLL_JTAG_CALNRST, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, 6
  %26 = call i32 @b43_radio_write(%struct.b43_wldev* %22, i32 %23, i32 %25)
  %27 = call i32 @udelay(i32 1)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @B2063_PLL_JTAG_CALNRST, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, 7
  %32 = call i32 @b43_radio_write(%struct.b43_wldev* %28, i32 %29, i32 %31)
  %33 = call i32 @udelay(i32 300)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = load i32, i32* @B2063_PLL_SP1, align 4
  %36 = call i32 @b43_radio_set(%struct.b43_wldev* %34, i32 %35, i32 64)
  ret void
}

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
