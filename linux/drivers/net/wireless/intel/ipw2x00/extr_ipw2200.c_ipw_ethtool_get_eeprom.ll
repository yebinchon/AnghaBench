; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_ethtool_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_ethtool_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i32 }
%struct.ipw_priv = type { i32, i32* }

@IPW_EEPROM_IMAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ipw_ethtool_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_ethtool_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ipw_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %9)
  store %struct.ipw_priv* %10, %struct.ipw_priv** %8, align 8
  %11 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %12 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %15 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = add i64 %13, %17
  %19 = load i64, i64* @IPW_EEPROM_IMAGE_SIZE, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %3
  %25 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %26 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %30 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %33 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i32* %28, i32* %35, i32 %38)
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %41 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %24, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
