; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_ethtool_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_ethtool_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i32, i32 }
%struct.lan78xx_net = type { i32 }

@LAN78XX_EEPROM_MAGIC = common dso_local global i64 0, align 8
@LAN78XX_OTP_MAGIC = common dso_local global i64 0, align 8
@OTP_INDICATOR_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i64*)* @lan78xx_ethtool_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_ethtool_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.lan78xx_net*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i64* %2, i64** %7, align 8
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
  br label %75

20:                                               ; preds = %3
  %21 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LAN78XX_EEPROM_MAGIC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = call i32 @lan78xx_write_raw_eeprom(%struct.lan78xx_net* %27, i32 %30, i32 %33, i64* %34)
  store i32 %35, i32* %9, align 4
  br label %69

36:                                               ; preds = %20
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LAN78XX_OTP_MAGIC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 512
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i64*, i64** %7, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @OTP_INDICATOR_1, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %60 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %61 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %64 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = call i32 @lan78xx_write_raw_otp(%struct.lan78xx_net* %59, i32 %62, i32 %65, i64* %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %58, %52, %47, %42, %36
  br label %69

69:                                               ; preds = %68, %26
  %70 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %71 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usb_autopm_put_interface(i32 %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %18
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @lan78xx_write_raw_eeprom(%struct.lan78xx_net*, i32, i32, i64*) #1

declare dso_local i32 @lan78xx_write_raw_otp(%struct.lan78xx_net*, i32, i32, i64*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
