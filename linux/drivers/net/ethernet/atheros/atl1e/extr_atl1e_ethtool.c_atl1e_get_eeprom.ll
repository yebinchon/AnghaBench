; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_ethtool.c_atl1e_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_ethtool.c_atl1e_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.atl1e_adapter = type { %struct.atl1e_hw }
%struct.atl1e_hw = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @atl1e_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.atl1e_adapter*, align 8
  %9 = alloca %struct.atl1e_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.atl1e_adapter* %16, %struct.atl1e_adapter** %8, align 8
  %17 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %17, i32 0, i32 0
  store %struct.atl1e_hw* %18, %struct.atl1e_hw** %9, align 8
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
  br label %111

26:                                               ; preds = %3
  %27 = load %struct.atl1e_hw*, %struct.atl1e_hw** %9, align 8
  %28 = call i64 @atl1e_check_eeprom_exist(%struct.atl1e_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %111

33:                                               ; preds = %26
  %34 = load %struct.atl1e_hw*, %struct.atl1e_hw** %9, align 8
  %35 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.atl1e_hw*, %struct.atl1e_hw** %9, align 8
  %38 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = or i32 %36, %40
  %42 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 2
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %52 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = sub nsw i32 %54, 1
  %56 = ashr i32 %55, 2
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32* @kmalloc_array(i32 %60, i32 4, i32 %61)
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %33
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %111

68:                                               ; preds = %33
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %92, %68
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.atl1e_hw*, %struct.atl1e_hw** %9, align 8
  %76 = load i32, i32* %14, align 4
  %77 = mul nsw i32 %76, 4
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = call i32 @atl1e_read_eeprom(%struct.atl1e_hw* %75, i32 %77, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %74
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @kfree(i32* %87)
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %111

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %70

95:                                               ; preds = %70
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %99 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  %104 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %105 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(i32* %96, i32* %103, i32 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @kfree(i32* %108)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %95, %86, %65, %30, %23
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @atl1e_check_eeprom_exist(%struct.atl1e_hw*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @atl1e_read_eeprom(%struct.atl1e_hw*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
