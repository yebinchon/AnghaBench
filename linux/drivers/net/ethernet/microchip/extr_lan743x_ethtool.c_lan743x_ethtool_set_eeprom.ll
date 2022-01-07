; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i32, i32 }
%struct.lan743x_adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LAN743X_ADAPTER_FLAG_OTP = common dso_local global i32 0, align 4
@LAN743X_OTP_MAGIC = common dso_local global i64 0, align 8
@LAN743X_EEPROM_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @lan743x_ethtool_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_ethtool_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eeprom*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.lan743x_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.lan743x_adapter* %10, %struct.lan743x_adapter** %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LAN743X_ADAPTER_FLAG_OTP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LAN743X_OTP_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %27 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @lan743x_otp_write(%struct.lan743x_adapter* %26, i32 %29, i32 %32, i32* %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %25, %19
  br label %53

36:                                               ; preds = %3
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LAN743X_EEPROM_MAGIC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %44 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @lan743x_eeprom_write(%struct.lan743x_adapter* %43, i32 %46, i32 %49, i32* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %42, %36
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lan743x_otp_write(%struct.lan743x_adapter*, i32, i32, i32*) #1

declare dso_local i32 @lan743x_eeprom_write(%struct.lan743x_adapter*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
