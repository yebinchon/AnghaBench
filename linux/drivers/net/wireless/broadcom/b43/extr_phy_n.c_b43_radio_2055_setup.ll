; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_2055_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_2055_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.b43_nphy_channeltab_entry_rev2 = type { i32 }

@B2055_VCO_CAL10 = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev2*)* @b43_radio_2055_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_2055_setup(%struct.b43_wldev* %0, %struct.b43_nphy_channeltab_entry_rev2* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_nphy_channeltab_entry_rev2*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_nphy_channeltab_entry_rev2* %1, %struct.b43_nphy_channeltab_entry_rev2** %4, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sge i32 %8, 3
  %10 = zext i1 %9 to i32
  %11 = call i32 @B43_WARN_ON(i32 %10)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = load %struct.b43_nphy_channeltab_entry_rev2*, %struct.b43_nphy_channeltab_entry_rev2** %4, align 8
  %14 = call i32 @b43_chantab_radio_upload(%struct.b43_wldev* %12, %struct.b43_nphy_channeltab_entry_rev2* %13)
  %15 = call i32 @udelay(i32 50)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %17 = load i32, i32* @B2055_VCO_CAL10, align 4
  %18 = call i32 @b43_radio_write(%struct.b43_wldev* %16, i32 %17, i32 5)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = load i32, i32* @B2055_VCO_CAL10, align 4
  %21 = call i32 @b43_radio_write(%struct.b43_wldev* %19, i32 %20, i32 69)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %24 = call i32 @b43_read32(%struct.b43_wldev* %22, i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = load i32, i32* @B2055_VCO_CAL10, align 4
  %27 = call i32 @b43_radio_write(%struct.b43_wldev* %25, i32 %26, i32 101)
  %28 = call i32 @udelay(i32 300)
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_chantab_radio_upload(%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev2*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
