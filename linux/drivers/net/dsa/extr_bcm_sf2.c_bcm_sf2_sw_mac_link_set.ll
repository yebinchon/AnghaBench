; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_mac_link_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_mac_link_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.bcm_sf2_priv = type { i32 }

@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_REVMII = common dso_local global i64 0, align 8
@RGMII_MODE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i64, i32)* @bcm_sf2_sw_mac_link_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_sw_mac_link_set(%struct.dsa_switch* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm_sf2_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %11)
  store %struct.bcm_sf2_priv* %12, %struct.bcm_sf2_priv** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @phy_interface_mode_is_rgmii(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @PHY_INTERFACE_MODE_REVMII, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %47

25:                                               ; preds = %20, %16, %4
  %26 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @REG_RGMII_CNTRL_P(i32 %27)
  %29 = call i32 @reg_readl(%struct.bcm_sf2_priv* %26, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @RGMII_MODE_EN, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %41

36:                                               ; preds = %25
  %37 = load i32, i32* @RGMII_MODE_EN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @REG_RGMII_CNTRL_P(i32 %44)
  %46 = call i32 @reg_writel(%struct.bcm_sf2_priv* %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %24
  ret void
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i32 @reg_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @REG_RGMII_CNTRL_P(i32) #1

declare dso_local i32 @reg_writel(%struct.bcm_sf2_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
