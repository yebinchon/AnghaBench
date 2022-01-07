; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ethtool.c_ixgb_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ethtool.c_ixgb_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.ixgb_adapter = type { %struct.ixgb_hw }
%struct.ixgb_hw = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ixgb_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ixgb_adapter*, align 8
  %9 = alloca %struct.ixgb_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.ixgb_adapter* %17, %struct.ixgb_adapter** %8, align 8
  %18 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %8, align 8
  %19 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %18, i32 0, i32 0
  store %struct.ixgb_hw* %19, %struct.ixgb_hw** %9, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  br label %132

27:                                               ; preds = %3
  %28 = load %struct.ixgb_hw*, %struct.ixgb_hw** %9, align 8
  %29 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ixgb_hw*, %struct.ixgb_hw** %9, align 8
  %32 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %30, %34
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @ixgb_get_eeprom_len(%struct.net_device* %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %41 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %47 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = icmp sgt i32 %42, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %15, align 4
  br label %132

54:                                               ; preds = %27
  %55 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %56 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %59 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %67 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  %70 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %71 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %54
  %73 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %74 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %78 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %81 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = sub nsw i32 %83, 1
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32* @kmalloc_array(i32 %89, i32 4, i32 %90)
  store i32* %91, i32** %10, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %72
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %134

97:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %114, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %100, %101
  %103 = icmp sle i32 %99, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load %struct.ixgb_hw*, %struct.ixgb_hw** %9, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i32 @ixgb_get_eeprom_word(%struct.ixgb_hw* %105, i32 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %98

117:                                              ; preds = %98
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %121 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %127 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @memcpy(i32* %118, i32* %125, i32 %128)
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @kfree(i32* %130)
  br label %132

132:                                              ; preds = %117, %51, %24
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %94
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgb_get_eeprom_len(%struct.net_device*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ixgb_get_eeprom_word(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
