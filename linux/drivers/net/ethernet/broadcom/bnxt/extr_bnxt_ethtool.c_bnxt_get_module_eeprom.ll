; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i64 }
%struct.bnxt = type { i32 }

@ETH_MODULE_SFF_8436_LEN = common dso_local global i64 0, align 8
@I2C_DEV_ADDR_A0 = common dso_local global i32 0, align 4
@I2C_DEV_ADDR_A2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @bnxt_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bnxt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.bnxt* @netdev_priv(%struct.net_device* %12)
  store %struct.bnxt* %13, %struct.bnxt** %8, align 8
  %14 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %15 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %18 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @memset(i32* %20, i32 0, i64 %23)
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @ETH_MODULE_SFF_8436_LEN, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %31 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i64, i64* @ETH_MODULE_SFF_8436_LEN, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i64, i64* @ETH_MODULE_SFF_8436_LEN, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %36, %28
  %41 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %42 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @bnxt_read_sfp_module_eeprom_info(%struct.bnxt* %41, i32 %42, i32 0, i64 %43, i64 %44, i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %78

51:                                               ; preds = %40
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 %55
  store i32* %57, i32** %7, align 8
  %58 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %59 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %51, %3
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i64, i64* @ETH_MODULE_SFF_8436_LEN, align 8
  %68 = load i64, i64* %9, align 8
  %69 = sub nsw i64 %68, %67
  store i64 %69, i64* %9, align 8
  %70 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %71 = load i32, i32* @I2C_DEV_ADDR_A2, align 4
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @bnxt_read_sfp_module_eeprom_info(%struct.bnxt* %70, i32 %71, i32 1, i64 %72, i64 %73, i32* %74)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %66, %63
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %49
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @bnxt_read_sfp_module_eeprom_info(%struct.bnxt*, i32, i32, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
