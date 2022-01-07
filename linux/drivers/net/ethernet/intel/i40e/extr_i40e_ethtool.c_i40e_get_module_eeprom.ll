; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i64 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@I40E_MODULE_TYPE_SFP = common dso_local global i64 0, align 8
@I40E_I2C_EEPROM_DEV_ADDR = common dso_local global i64 0, align 8
@ETH_MODULE_SFF_8079_LEN = common dso_local global i64 0, align 8
@I40E_I2C_EEPROM_DEV_ADDR2 = common dso_local global i64 0, align 8
@ETH_MODULE_SFF_8436_LEN = common dso_local global i64 0, align 8
@I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i64*)* @i40e_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.i40e_netdev_priv*, align 8
  %9 = alloca %struct.i40e_vsi*, align 8
  %10 = alloca %struct.i40e_pf*, align 8
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.i40e_netdev_priv* %19, %struct.i40e_netdev_priv** %8, align 8
  %20 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %8, align 8
  %21 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %20, i32 0, i32 0
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %21, align 8
  store %struct.i40e_vsi* %22, %struct.i40e_vsi** %9, align 8
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 0
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %24, align 8
  store %struct.i40e_pf* %25, %struct.i40e_pf** %10, align 8
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 0
  store %struct.i40e_hw* %27, %struct.i40e_hw** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %14, align 8
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = icmp ne %struct.ethtool_eeprom* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64*, i64** %7, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %30, %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %119

41:                                               ; preds = %35
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %43 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @I40E_MODULE_TYPE_SFP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %41
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %115, %52
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %56 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %118

59:                                               ; preds = %53
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %63 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  store i64 %65, i64* %16, align 8
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i64, i64* @I40E_I2C_EEPROM_DEV_ADDR, align 8
  br label %71

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i64 [ %69, %68 ], [ 0, %70 ]
  store i64 %72, i64* %17, align 8
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* @ETH_MODULE_SFF_8079_LEN, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i64, i64* @ETH_MODULE_SFF_8079_LEN, align 8
  %81 = load i64, i64* %16, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* @I40E_I2C_EEPROM_DEV_ADDR2, align 8
  store i64 %83, i64* %17, align 8
  br label %84

84:                                               ; preds = %79, %75
  br label %98

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %90, %85
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* @ETH_MODULE_SFF_8436_LEN, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i64, i64* @ETH_MODULE_SFF_8436_LEN, align 8
  %92 = sdiv i64 %91, 2
  %93 = load i64, i64* %16, align 8
  %94 = sub nsw i64 %93, %92
  store i64 %94, i64* %16, align 8
  %95 = load i64, i64* %17, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %17, align 8
  br label %86

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %84
  %99 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %100 = load i32, i32* @I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE, align 4
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* %16, align 8
  %103 = call i32 @i40e_aq_get_phy_register(%struct.i40e_hw* %99, i32 %100, i64 %101, i64 %102, i64* %14, i32* null)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %119

109:                                              ; preds = %98
  %110 = load i64, i64* %14, align 8
  %111 = load i64*, i64** %7, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  store i64 %110, i64* %114, align 8
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %53

118:                                              ; preds = %53
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %106, %38
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_aq_get_phy_register(%struct.i40e_hw*, i32, i64, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
