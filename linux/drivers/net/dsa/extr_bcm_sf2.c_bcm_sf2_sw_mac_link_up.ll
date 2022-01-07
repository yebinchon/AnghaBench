; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_mac_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_mac_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.phy_device = type { i32 }
%struct.bcm_sf2_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ethtool_eee }
%struct.ethtool_eee = type { i32 }

@MLO_AN_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32, i32, %struct.phy_device*)* @bcm_sf2_sw_mac_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_sw_mac_link_up(%struct.dsa_switch* %0, i32 %1, i32 %2, i32 %3, %struct.phy_device* %4) #0 {
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.phy_device*, align 8
  %11 = alloca %struct.bcm_sf2_priv*, align 8
  %12 = alloca %struct.ethtool_eee*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.phy_device* %4, %struct.phy_device** %10, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %14 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %13)
  store %struct.bcm_sf2_priv* %14, %struct.bcm_sf2_priv** %11, align 8
  %15 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %11, align 8
  %16 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.ethtool_eee* %23, %struct.ethtool_eee** %12, align 8
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @bcm_sf2_sw_mac_link_set(%struct.dsa_switch* %24, i32 %25, i32 %26, i32 1)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MLO_AN_PHY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %5
  %32 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %33 = icmp ne %struct.phy_device* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %38 = call i32 @b53_eee_init(%struct.dsa_switch* %35, i32 %36, %struct.phy_device* %37)
  %39 = load %struct.ethtool_eee*, %struct.ethtool_eee** %12, align 8
  %40 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %31, %5
  ret void
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @bcm_sf2_sw_mac_link_set(%struct.dsa_switch*, i32, i32, i32) #1

declare dso_local i32 @b53_eee_init(%struct.dsa_switch*, i32, %struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
