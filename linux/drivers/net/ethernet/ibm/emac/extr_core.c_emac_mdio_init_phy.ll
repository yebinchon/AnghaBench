; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_mdio_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_mdio_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.emac_instance = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @emac_mdio_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_mdio_init_phy(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.emac_instance*, align 8
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  %5 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %6 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %5, i32 0, i32 0
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.emac_instance* @netdev_priv(%struct.net_device* %8)
  store %struct.emac_instance* %9, %struct.emac_instance** %4, align 8
  %10 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %11 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @phy_start(i32 %12)
  %14 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %15 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @phy_init_hw(i32 %16)
  ret i32 %17
}

declare dso_local %struct.emac_instance* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @phy_init_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
