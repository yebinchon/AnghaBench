; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_ethtool_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_ethtool_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.lan78xx_net = type { i32 }

@LAN78XX_EEPROM_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @lan78xx_ethtool_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_ethtool_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.lan78xx_net*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %10)
  store %struct.lan78xx_net* %11, %struct.lan78xx_net** %8, align 8
  %12 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %13 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_autopm_get_interface(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load i32, i32* @LAN78XX_EEPROM_MAGIC, align 4
  %22 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %23 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %25 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @lan78xx_read_raw_eeprom(%struct.lan78xx_net* %24, i32 %27, i32 %30, i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %34 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_autopm_put_interface(i32 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %20, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @lan78xx_read_raw_eeprom(%struct.lan78xx_net*, i32, i32, i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
