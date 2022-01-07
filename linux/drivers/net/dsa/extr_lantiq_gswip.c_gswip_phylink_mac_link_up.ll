; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_phylink_mac_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_phylink_mac_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }
%struct.phy_device = type { i32 }

@PHY_INTERFACE_MODE_INTERNAL = common dso_local global i64 0, align 8
@GSWIP_MII_CFG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32, i64, %struct.phy_device*)* @gswip_phylink_mac_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gswip_phylink_mac_link_up(%struct.dsa_switch* %0, i32 %1, i32 %2, i64 %3, %struct.phy_device* %4) #0 {
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.phy_device*, align 8
  %11 = alloca %struct.gswip_priv*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.phy_device* %4, %struct.phy_device** %10, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.gswip_priv*, %struct.gswip_priv** %13, align 8
  store %struct.gswip_priv* %14, %struct.gswip_priv** %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @PHY_INTERFACE_MODE_INTERNAL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.gswip_priv*, %struct.gswip_priv** %11, align 8
  %20 = load i32, i32* @GSWIP_MII_CFG_EN, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @gswip_mii_mask_cfg(%struct.gswip_priv* %19, i32 0, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @gswip_mii_mask_cfg(%struct.gswip_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
