; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i64, i32 }
%struct.usbnet = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SR_EEPROM_MAGIC = common dso_local global i32 0, align 4
@SR_CMD_READ_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @sr_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usbnet*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.usbnet* @netdev_priv(%struct.net_device* %12)
  store %struct.usbnet* %13, %struct.usbnet** %8, align 8
  %14 = load i32*, i32** %7, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = srem i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load i32, i32* @SR_EEPROM_MAGIC, align 4
  %25 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %54, %23
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 2
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %27
  %35 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %36 = load i32, i32* @SR_CMD_READ_EEPROM, align 4
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @sr_read_cmd(%struct.usbnet* %35, i32 %36, i64 %42, i32 0, i32 2, i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %34
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %27

57:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %50, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sr_read_cmd(%struct.usbnet*, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
