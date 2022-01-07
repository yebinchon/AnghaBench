; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @e1000_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.e1000_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.e1000_adapter* %16, %struct.e1000_adapter** %8, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 0
  store %struct.e1000_hw* %18, %struct.e1000_hw** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %136

26:                                               ; preds = %3
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  %35 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = sub nsw i32 %47, 1
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @kmalloc_array(i32 %53, i32 4, i32 %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %26
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %136

61:                                               ; preds = %26
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @e1000_eeprom_spi, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %71, %72
  %74 = add nsw i32 %73, 1
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @e1000_read_eeprom(%struct.e1000_hw* %69, i32 %70, i32 %74, i32* %75)
  store i32 %76, i32* %13, align 4
  br label %103

77:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %99, %77
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = add nsw i32 %82, 1
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %78
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @e1000_read_eeprom(%struct.e1000_hw* %86, i32 %89, i32 1, i32* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %102

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %78

102:                                              ; preds = %97, %78
  br label %103

103:                                              ; preds = %102, %68
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %117, %103
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %106, %107
  %109 = add nsw i32 %108, 1
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @le16_to_cpus(i32* %115)
  br label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %104

120:                                              ; preds = %104
  %121 = load i32*, i32** %7, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %124 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %122, i64 %127
  %129 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %130 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32* %121, i32* %128, i32 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @kfree(i32* %133)
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %120, %58, %23
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
