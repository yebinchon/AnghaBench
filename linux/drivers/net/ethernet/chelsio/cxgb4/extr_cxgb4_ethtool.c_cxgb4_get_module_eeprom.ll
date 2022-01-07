; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_cxgb4_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_cxgb4_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32 }

@I2C_PAGE_SIZE = common dso_local global i32 0, align 4
@I2C_DEV_ADDR_A0 = common dso_local global i32 0, align 4
@I2C_DEV_ADDR_A2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @cxgb4_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.port_info*, align 8
  %12 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %14 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.port_info* @netdev_priv(%struct.net_device* %19)
  store %struct.port_info* %20, %struct.port_info** %11, align 8
  %21 = load %struct.port_info*, %struct.port_info** %11, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 1
  %23 = load %struct.adapter*, %struct.adapter** %22, align 8
  store %struct.adapter* %23, %struct.adapter** %12, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memset(i32* %24, i32 0, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @I2C_PAGE_SIZE, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %3
  %35 = load %struct.adapter*, %struct.adapter** %12, align 8
  %36 = load %struct.adapter*, %struct.adapter** %12, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.port_info*, %struct.port_info** %11, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @t4_i2c_rd(%struct.adapter* %35, i32 %38, i32 %41, i32 %42, i32 %43, i32 %44, i32* %45)
  store i32 %46, i32* %4, align 4
  br label %98

47:                                               ; preds = %3
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @I2C_PAGE_SIZE, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load i32, i32* @I2C_PAGE_SIZE, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.adapter*, %struct.adapter** %12, align 8
  %56 = load %struct.adapter*, %struct.adapter** %12, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.port_info*, %struct.port_info** %11, align 8
  %60 = getelementptr inbounds %struct.port_info, %struct.port_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @t4_i2c_rd(%struct.adapter* %55, i32 %58, i32 %61, i32 %62, i32 %63, i32 %64, i32* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %51
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %98

71:                                               ; preds = %51
  %72 = load i32, i32* @I2C_PAGE_SIZE, align 4
  store i32 %72, i32* %9, align 4
  %73 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %74 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %71, %47
  %79 = load %struct.adapter*, %struct.adapter** %12, align 8
  %80 = load %struct.adapter*, %struct.adapter** %12, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.port_info*, %struct.port_info** %11, align 8
  %84 = getelementptr inbounds %struct.port_info, %struct.port_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @I2C_DEV_ADDR_A2, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %91 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %89, i64 %95
  %97 = call i32 @t4_i2c_rd(%struct.adapter* %79, i32 %82, i32 %85, i32 %86, i32 %87, i32 %88, i32* %96)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %78, %69, %34
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @t4_i2c_rd(%struct.adapter*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
