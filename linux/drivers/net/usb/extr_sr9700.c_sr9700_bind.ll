; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr9700_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr9700_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.mii_if_info, i64, %struct.net_device.0* }
%struct.mii_if_info = type { i32, i32, i32, i32 (%struct.net_device*, i32, i32, i32)*, i32, %struct.net_device.0* }
%struct.net_device = type opaque
%struct.net_device.0 = type { i32, i64, i64, i32*, i32* }
%struct.usb_interface = type { i32 }

@sr9700_netdev_ops = common dso_local global i32 0, align 4
@sr9700_ethtool_ops = common dso_local global i32 0, align 4
@SR_TX_OVERHEAD = common dso_local global i64 0, align 8
@sr_mdio_read = common dso_local global i32 0, align 4
@SR_NCR = common dso_local global i32 0, align 4
@NCR_RST = common dso_local global i32 0, align 4
@SR_PAR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error reading MAC address\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SR_PRR = common dso_local global i32 0, align 4
@PRR_PHY_RST = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @sr9700_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr9700_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.net_device.0*, align 8
  %6 = alloca %struct.mii_if_info*, align 8
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call i32 @usbnet_get_endpoints(%struct.usbnet* %8, %struct.usb_interface* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %102

14:                                               ; preds = %2
  %15 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 3
  %17 = load %struct.net_device.0*, %struct.net_device.0** %16, align 8
  store %struct.net_device.0* %17, %struct.net_device.0** %5, align 8
  %18 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %19 = getelementptr inbounds %struct.net_device.0, %struct.net_device.0* %18, i32 0, i32 4
  store i32* @sr9700_netdev_ops, i32** %19, align 8
  %20 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %21 = getelementptr inbounds %struct.net_device.0, %struct.net_device.0* %20, i32 0, i32 3
  store i32* @sr9700_ethtool_ops, i32** %21, align 8
  %22 = load i64, i64* @SR_TX_OVERHEAD, align 8
  %23 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %24 = getelementptr inbounds %struct.net_device.0, %struct.net_device.0* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %28 = getelementptr inbounds %struct.net_device.0, %struct.net_device.0* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %31 = getelementptr inbounds %struct.net_device.0, %struct.net_device.0* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 0
  store i32 3072, i32* %37, align 8
  %38 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %39 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %38, i32 0, i32 1
  store %struct.mii_if_info* %39, %struct.mii_if_info** %6, align 8
  %40 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %41 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %42 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %41, i32 0, i32 5
  store %struct.net_device.0* %40, %struct.net_device.0** %42, align 8
  %43 = load i32, i32* @sr_mdio_read, align 4
  %44 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %45 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %47 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %46, i32 0, i32 3
  store i32 (%struct.net_device*, i32, i32, i32)* bitcast (i32 (%struct.net_device.0*, i32, i32, i32)* @sr_mdio_write to i32 (%struct.net_device*, i32, i32, i32)*), i32 (%struct.net_device*, i32, i32, i32)** %47, align 8
  %48 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %49 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %48, i32 0, i32 0
  store i32 31, i32* %49, align 8
  %50 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %51 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %50, i32 0, i32 1
  store i32 31, i32* %51, align 4
  %52 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %53 = load i32, i32* @SR_NCR, align 4
  %54 = load i32, i32* @NCR_RST, align 4
  %55 = call i32 @sr_write_reg(%struct.usbnet* %52, i32 %53, i32 %54)
  %56 = call i32 @udelay(i32 20)
  %57 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %58 = load i32, i32* @SR_PAR, align 4
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %61 = getelementptr inbounds %struct.net_device.0, %struct.net_device.0* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @sr_read(%struct.usbnet* %57, i32 %58, i32 %59, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %14
  %66 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %67 = call i32 @netdev_err(%struct.net_device.0* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %102

70:                                               ; preds = %14
  %71 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %72 = load i32, i32* @SR_PRR, align 4
  %73 = load i32, i32* @PRR_PHY_RST, align 4
  %74 = call i32 @sr_write_reg(%struct.usbnet* %71, i32 %72, i32 %73)
  %75 = call i32 @msleep(i32 20)
  %76 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %77 = load i32, i32* @SR_PRR, align 4
  %78 = call i32 @sr_write_reg(%struct.usbnet* %76, i32 %77, i32 0)
  %79 = call i32 @udelay(i32 2000)
  %80 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %81 = call i32 @sr9700_set_multicast(%struct.net_device.0* %80)
  %82 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %83 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %84 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MII_BMCR, align 4
  %87 = load i32, i32* @BMCR_RESET, align 4
  %88 = call i32 @sr_mdio_write(%struct.net_device.0* %82, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.net_device.0*, %struct.net_device.0** %5, align 8
  %90 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %91 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MII_ADVERTISE, align 4
  %94 = load i32, i32* @ADVERTISE_ALL, align 4
  %95 = load i32, i32* @ADVERTISE_CSMA, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @sr_mdio_write(%struct.net_device.0* %89, i32 %92, i32 %93, i32 %98)
  %100 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %101 = call i32 @mii_nway_restart(%struct.mii_if_info* %100)
  br label %102

102:                                              ; preds = %70, %65, %13
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @sr_mdio_write(%struct.net_device.0*, i32, i32, i32) #1

declare dso_local i32 @sr_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @sr_read(%struct.usbnet*, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device.0*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sr9700_set_multicast(%struct.net_device.0*) #1

declare dso_local i32 @mii_nway_restart(%struct.mii_if_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
