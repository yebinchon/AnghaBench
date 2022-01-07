; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @igb_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.igb_adapter*, align 8
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
  %16 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.igb_adapter* %16, %struct.igb_adapter** %8, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
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
  br label %148

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
  br label %148

61:                                               ; preds = %26
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %75 = bitcast %struct.e1000_hw* %74 to %struct.e1000_hw.0*
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %77, %78
  %80 = add nsw i32 %79, 1
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 %73(%struct.e1000_hw.0* %75, i32 %76, i32 %80, i32* %81)
  store i32 %82, i32* %13, align 4
  br label %115

83:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %111, %83
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %84
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %95, align 8
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %98 = bitcast %struct.e1000_hw* %97 to %struct.e1000_hw.0*
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i32 %96(%struct.e1000_hw.0* %98, i32 %101, i32 1, i32* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  br label %114

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %84

114:                                              ; preds = %109, %84
  br label %115

115:                                              ; preds = %114, %68
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %129, %115
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %118, %119
  %121 = add nsw i32 %120, 1
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = call i32 @le16_to_cpus(i32* %127)
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %116

132:                                              ; preds = %116
  %133 = load i32*, i32** %7, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %136 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  %141 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %142 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @memcpy(i32* %133, i32* %140, i32 %143)
  %145 = load i32*, i32** %10, align 8
  %146 = call i32 @kfree(i32* %145)
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %132, %58, %23
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
