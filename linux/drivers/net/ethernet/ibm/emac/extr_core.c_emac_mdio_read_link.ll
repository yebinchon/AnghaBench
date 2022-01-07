; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_mdio_read_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_mdio_read_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.emac_instance = type { %struct.phy_device* }
%struct.phy_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @emac_mdio_read_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_mdio_read_link(%struct.mii_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.emac_instance*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %3, align 8
  %8 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %9 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %8, i32 0, i32 4
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.emac_instance* @netdev_priv(%struct.net_device* %11)
  store %struct.emac_instance* %12, %struct.emac_instance** %5, align 8
  %13 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %14 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %13, i32 0, i32 0
  %15 = load %struct.phy_device*, %struct.phy_device** %14, align 8
  store %struct.phy_device* %15, %struct.phy_device** %6, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %17 = call i32 @phy_read_status(%struct.phy_device* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %43

22:                                               ; preds = %1
  %23 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %27 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %32 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %37 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %42 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %22, %20
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.emac_instance* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_read_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
