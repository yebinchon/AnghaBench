; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.e1000_adapter = type { %struct.TYPE_4__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32, i32 }
%struct.e1000_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
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
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 1
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
  br label %164

26:                                               ; preds = %3
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %31, %37
  %39 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %46 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sub nsw i32 %51, 1
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %54, %55
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32* @kmalloc_array(i32 %57, i32 4, i32 %58)
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %26
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %164

65:                                               ; preds = %26
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pm_runtime_get_sync(i32 %69)
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = add nsw i32 %82, 1
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @e1000_read_nvm(%struct.e1000_hw* %78, i32 %79, i32 %83, i32* %84)
  store i32 %85, i32* %13, align 4
  br label %112

86:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %108, %86
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  %92 = add nsw i32 %91, 1
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %87
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @e1000_read_nvm(%struct.e1000_hw* %95, i32 %98, i32 1, i32* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %111

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %87

111:                                              ; preds = %106, %87
  br label %112

112:                                              ; preds = %111, %77
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @pm_runtime_put_sync(i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %112
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %122, %123
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = mul i64 4, %126
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memset(i32* %121, i32 255, i32 %128)
  br label %148

130:                                              ; preds = %112
  store i32 0, i32* %14, align 4
  br label %131

131:                                              ; preds = %144, %130
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %133, %134
  %136 = add nsw i32 %135, 1
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %131
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i32 @le16_to_cpus(i32* %142)
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %131

147:                                              ; preds = %131
  br label %148

148:                                              ; preds = %147, %120
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %152 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  %157 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %158 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @memcpy(i32* %149, i32* %156, i32 %159)
  %161 = load i32*, i32** %10, align 8
  %162 = call i32 @kfree(i32* %161)
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %148, %62, %23
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
