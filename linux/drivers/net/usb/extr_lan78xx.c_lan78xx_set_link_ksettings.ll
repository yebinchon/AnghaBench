; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lan78xx_net = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @lan78xx_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.lan78xx_net*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %10)
  store %struct.lan78xx_net* %11, %struct.lan78xx_net** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.phy_device*, %struct.phy_device** %13, align 8
  store %struct.phy_device* %14, %struct.phy_device** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %16 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_autopm_get_interface(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %25 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %26 = call i32 @phy_ethtool_ksettings_set(%struct.phy_device* %24, %struct.ethtool_link_ksettings* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %23
  %33 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %34 = load i32, i32* @MII_BMCR, align 4
  %35 = call i32 @phy_read(%struct.phy_device* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %37 = load i32, i32* @MII_BMCR, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @BMCR_LOOPBACK, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @phy_write(%struct.phy_device* %36, i32 %37, i32 %40)
  %42 = call i32 @mdelay(i32 1)
  %43 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %44 = load i32, i32* @MII_BMCR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @phy_write(%struct.phy_device* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %32, %23
  %48 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %49 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_autopm_put_interface(i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @phy_ethtool_ksettings_set(%struct.phy_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
