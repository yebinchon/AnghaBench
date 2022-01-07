; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_ethtool.c_atl1c_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_ethtool.c_atl1c_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.atl1c_adapter = type { %struct.TYPE_2__*, %struct.atl1c_hw }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atl1c_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @atl1c_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.atl1c_adapter*, align 8
  %9 = alloca %struct.atl1c_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.atl1c_adapter* %16, %struct.atl1c_adapter** %8, align 8
  %17 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %17, i32 0, i32 1
  store %struct.atl1c_hw* %18, %struct.atl1c_hw** %9, align 8
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
  br label %115

26:                                               ; preds = %3
  %27 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %28 = call i32 @atl1c_check_eeprom_exist(%struct.atl1c_hw* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %115

33:                                               ; preds = %26
  %34 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %35 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %40 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %38, %44
  %46 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %47 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 2
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %53 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %56 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = sub nsw i32 %58, 1
  %60 = ashr i32 %59, 2
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %61, %62
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32* @kmalloc_array(i32 %64, i32 4, i32 %65)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %33
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %115

72:                                               ; preds = %33
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %96, %72
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %80 = load i32, i32* %14, align 4
  %81 = mul nsw i32 %80, 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = call i32 @atl1c_read_eeprom(%struct.atl1c_hw* %79, i32 %81, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %78
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @kfree(i32* %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %115

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %74

99:                                               ; preds = %74
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %103 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %109 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memcpy(i32* %100, i32* %107, i32 %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @kfree(i32* %112)
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %99, %90, %69, %30, %23
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atl1c_check_eeprom_exist(%struct.atl1c_hw*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @atl1c_read_eeprom(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
