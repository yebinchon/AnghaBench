; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ltq_etop_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ltq_etop_mdio_link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ltq_etop_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_etop_mdio_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ltq_etop_priv*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ltq_etop_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ltq_etop_priv* %7, %struct.ltq_etop_priv** %4, align 8
  %8 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.phy_device* @phy_find_first(i32 %10)
  store %struct.phy_device* %11, %struct.phy_device** %5, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %13 = icmp ne %struct.phy_device* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netdev_err(%struct.net_device* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %22 = call i32 @phydev_name(%struct.phy_device* %21)
  %23 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.phy_device* @phy_connect(%struct.net_device* %20, i32 %22, i32* @ltq_etop_mdio_link, i32 %27)
  store %struct.phy_device* %28, %struct.phy_device** %5, align 8
  %29 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %30 = call i64 @IS_ERR(%struct.phy_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %36 = call i32 @PTR_ERR(%struct.phy_device* %35)
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %19
  %38 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %39 = load i32, i32* @SPEED_100, align 4
  %40 = call i32 @phy_set_max_speed(%struct.phy_device* %38, i32 %39)
  %41 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %42 = call i32 @phy_attached_info(%struct.phy_device* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %32, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.ltq_etop_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @phy_find_first(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i32, i32*, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
