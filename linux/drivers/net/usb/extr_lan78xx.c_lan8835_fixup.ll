; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan8835_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan8835_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.lan78xx_net = type { i32 }

@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MAC_RGMII_ID = common dso_local global i32 0, align 4
@MAC_RGMII_ID_TXC_DELAY_EN_ = common dso_local global i32 0, align 4
@RGMII_TX_BYP_DLL = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @lan8835_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan8835_fixup(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lan78xx_net*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.lan78xx_net* @netdev_priv(i32 %8)
  store %struct.lan78xx_net* %9, %struct.lan78xx_net** %5, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %11 = load i32, i32* @MDIO_MMD_PCS, align 4
  %12 = call i32 @phy_read_mmd(%struct.phy_device* %10, i32 %11, i32 32784)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, -6145
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, 2048
  store i32 %16, i32* %3, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %18 = load i32, i32* @MDIO_MMD_PCS, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @phy_write_mmd(%struct.phy_device* %17, i32 %18, i32 32784, i32 %19)
  %21 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %22 = load i32, i32* @MAC_RGMII_ID, align 4
  %23 = load i32, i32* @MAC_RGMII_ID_TXC_DELAY_EN_, align 4
  %24 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %26 = load i32, i32* @RGMII_TX_BYP_DLL, align 4
  %27 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %25, i32 %26, i32 15616)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_TXID, align 4
  %29 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %30 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret i32 1
}

declare dso_local %struct.lan78xx_net* @netdev_priv(i32) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
