; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ixgbe_phy_fw = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@__IXGBE_IN_SFP_INIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ixgbe_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.ixgbe_adapter* %14, %struct.ixgbe_adapter** %8, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 1
  store %struct.ixgbe_hw* %16, %struct.ixgbe_hw** %9, align 8
  %17 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %17, i64* %10, align 8
  store i32 255, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %19 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %102

25:                                               ; preds = %3
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ixgbe_phy_fw, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %102

35:                                               ; preds = %25
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %98, %35
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = icmp slt i32 %40, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %39
  %50 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %51 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %52 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %51, i32 0, i32 0
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %102

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64 (%struct.ixgbe_hw.1*, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32*)** %66, align 8
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %69 = bitcast %struct.ixgbe_hw* %68 to %struct.ixgbe_hw.1*
  %70 = load i32, i32* %12, align 4
  %71 = call i64 %67(%struct.ixgbe_hw.1* %69, i32 %70, i32* %11)
  store i64 %71, i64* %10, align 8
  br label %82

72:                                               ; preds = %58
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %76, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %79 = bitcast %struct.ixgbe_hw* %78 to %struct.ixgbe_hw.0*
  %80 = load i32, i32* %12, align 4
  %81 = call i64 %77(%struct.ixgbe_hw.0* %79, i32 %80, i32* %11)
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %72, %62
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %102

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %93 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  store i32 %89, i32* %97, align 4
  br label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %39

101:                                              ; preds = %39
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %85, %55, %32, %22
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
