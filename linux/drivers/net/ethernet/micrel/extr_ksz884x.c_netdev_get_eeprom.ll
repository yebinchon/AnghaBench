; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { i32 }

@eeprom_data = common dso_local global i32* null, align 8
@EEPROM_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @netdev_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eeprom*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dev_priv*, align 8
  %8 = alloca %struct.dev_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.dev_priv* %13, %struct.dev_priv** %7, align 8
  %14 = load %struct.dev_priv*, %struct.dev_priv** %7, align 8
  %15 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %14, i32 0, i32 0
  %16 = load %struct.dev_info*, %struct.dev_info** %15, align 8
  store %struct.dev_info* %16, %struct.dev_info** %8, align 8
  %17 = load i32*, i32** @eeprom_data, align 8
  store i32* %17, i32** %9, align 8
  %18 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = add nsw i32 %24, 1
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %44, %3
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %37 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %36, i32 0, i32 0
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @eeprom_read(i32* %37, i32 %38)
  %40 = load i32*, i32** @eeprom_data, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load i32, i32* @EEPROM_MAGIC, align 4
  %49 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32* %51, i32* %57, i32 %60)
  ret i32 0
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eeprom_read(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
