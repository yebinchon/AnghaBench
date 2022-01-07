; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_ethtool_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_ethtool_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i32 }
%struct.ipw_priv = type { i32, i32* }

@IPW_EEPROM_IMAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPW_EEPROM_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ipw_ethtool_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_ethtool_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ipw_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %10)
  store %struct.ipw_priv* %11, %struct.ipw_priv** %8, align 8
  %12 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add i64 %14, %18
  %20 = load i32, i32* @IPW_EEPROM_IMAGE_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %67

26:                                               ; preds = %3
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %28 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %39 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(i32* %36, i32* %37, i32 %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %60, %26
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @IPW_EEPROM_IMAGE_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @IPW_EEPROM_DATA, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ipw_write8(%struct.ipw_priv* %47, i64 %51, i32 %58)
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %65 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %23
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ipw_write8(%struct.ipw_priv*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
