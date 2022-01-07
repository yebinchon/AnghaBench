; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_op_prepare_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_op_prepare_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64, i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32, i32, %struct.b43_txpower_lo_control* }
%struct.b43_txpower_lo_control = type { i32, i32 }

@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_gphy_op_prepare_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_gphy_op_prepare_hardware(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca %struct.b43_txpower_lo_control*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %3, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 3
  %10 = load %struct.b43_phy_g*, %struct.b43_phy_g** %9, align 8
  store %struct.b43_phy_g* %10, %struct.b43_phy_g** %4, align 8
  %11 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %12 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %11, i32 0, i32 3
  %13 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %12, align 8
  store %struct.b43_txpower_lo_control* %13, %struct.b43_txpower_lo_control** %5, align 8
  %14 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @B43_PHYTYPE_G, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @B43_WARN_ON(i32 %19)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %23 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %22, i32 0, i32 2
  %24 = call i32 @default_baseband_attenuation(%struct.b43_wldev* %21, i32* %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %27 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %26, i32 0, i32 1
  %28 = call i32 @default_radio_attenuation(%struct.b43_wldev* %25, i32* %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @default_tx_control(%struct.b43_wldev* %29)
  %31 = shl i32 %30, 4
  %32 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %33 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %36 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %35, i32 0, i32 1
  %37 = call i32 @generate_rfatt_list(%struct.b43_wldev* %34, i32* %36)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %40 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %39, i32 0, i32 0
  %41 = call i32 @generate_bbatt_list(%struct.b43_wldev* %38, i32* %40)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %44 = call i32 @b43_read32(%struct.b43_wldev* %42, i32 %43)
  %45 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %46 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %60

49:                                               ; preds = %1
  %50 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %51 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = call i32 @b43_wireless_core_reset(%struct.b43_wldev* %52, i32 0)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = call i32 @b43_phy_initg(%struct.b43_wldev* %54)
  %56 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %57 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %56, i32 0, i32 2
  store i32 1, i32* %57, align 4
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @b43_wireless_core_reset(%struct.b43_wldev* %58, i32 1)
  br label %60

60:                                               ; preds = %49, %1
  ret i32 0
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @default_baseband_attenuation(%struct.b43_wldev*, i32*) #1

declare dso_local i32 @default_radio_attenuation(%struct.b43_wldev*, i32*) #1

declare dso_local i32 @default_tx_control(%struct.b43_wldev*) #1

declare dso_local i32 @generate_rfatt_list(%struct.b43_wldev*, i32*) #1

declare dso_local i32 @generate_bbatt_list(%struct.b43_wldev*, i32*) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_wireless_core_reset(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_initg(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
