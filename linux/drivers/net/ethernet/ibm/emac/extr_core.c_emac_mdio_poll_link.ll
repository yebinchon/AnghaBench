; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_mdio_poll_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_mdio_poll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.emac_instance = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"link update failed (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @emac_mdio_poll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_mdio_poll_link(%struct.mii_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.emac_instance*, align 8
  %6 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %3, align 8
  %7 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %8 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.emac_instance* @netdev_priv(%struct.net_device* %10)
  store %struct.emac_instance* %11, %struct.emac_instance** %5, align 8
  %12 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %13 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @phy_read_status(%struct.TYPE_4__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %20 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @ethtool_op_get_link(%struct.net_device* %25)
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %29 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.emac_instance* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_read_status(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ethtool_op_get_link(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
