; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_bphy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_bphy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_MMIO_PSM_PHY_HDR = common dso_local global i32 0, align 4
@B43_PSM_HDR_MAC_PHY_FORCE_CLK = common dso_local global i32 0, align 4
@B43_PHY_B_BBCFG = common dso_local global i32 0, align 4
@B43_PHY_B_BBCFG_RSTCCA = common dso_local global i32 0, align 4
@B43_PHY_B_BBCFG_RSTRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_ht_bphy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_bphy_reset(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %8 = call i32 @b43_read16(%struct.b43_wldev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @B43_PSM_HDR_MAC_PHY_FORCE_CLK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @b43_write16(%struct.b43_wldev* %9, i32 %10, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = load i32, i32* @B43_PHY_B_BBCFG, align 4
  %20 = load i32, i32* @B43_PHY_B_BBCFG_RSTCCA, align 4
  %21 = load i32, i32* @B43_PHY_B_BBCFG_RSTRX, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @b43_phy_set(%struct.b43_wldev* %18, i32 %19, i32 %22)
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = load i32, i32* @B43_PHY_B_BBCFG, align 4
  %27 = load i32, i32* @B43_PHY_B_BBCFG_RSTCCA, align 4
  %28 = load i32, i32* @B43_PHY_B_BBCFG_RSTRX, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = call i32 @b43_phy_mask(%struct.b43_wldev* %25, i32 %26, i32 %30)
  br label %32

32:                                               ; preds = %24, %17
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @b43_write16(%struct.b43_wldev* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
