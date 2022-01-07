; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tenxpress.c_tenxpress_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tenxpress.c_tenxpress_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL_ADV10G = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_STAT = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_STAT_LP10G = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*, %struct.ethtool_link_ksettings*)* @tenxpress_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tenxpress_get_link_ksettings(%struct.ef4_nic* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %9 = load i32, i32* @MDIO_MMD_AN, align 4
  %10 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %11 = call i32 @ef4_mdio_read(%struct.ef4_nic* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV10G, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %22 = load i32, i32* @MDIO_MMD_AN, align 4
  %23 = load i32, i32* @MDIO_AN_10GBT_STAT, align 4
  %24 = call i32 @ef4_mdio_read(%struct.ef4_nic* %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MDIO_AN_10GBT_STAT_LP10G, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %20
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %35 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %34, i32 0, i32 0
  %36 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mdio45_ethtool_ksettings_get_npage(i32* %35, %struct.ethtool_link_ksettings* %36, i32 %37, i32 %38)
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %41 = call i64 @LOOPBACK_EXTERNAL(%struct.ef4_nic* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32, i32* @SPEED_10000, align 4
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %33
  ret void
}

declare dso_local i32 @ef4_mdio_read(%struct.ef4_nic*, i32, i32) #1

declare dso_local i32 @mdio45_ethtool_ksettings_get_npage(i32*, %struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i64 @LOOPBACK_EXTERNAL(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
