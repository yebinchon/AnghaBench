; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_5__*, i32, %struct.i40e_hw }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_hw = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_nvm_access = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@__I40E_RESET_INTR_RECEIVED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"NVMUpdate write failed err=%d status=0x%x errno=%d module=%d offset=0x%x size=%d\0A\00", align 1
@I40E_NVM_MOD_PNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @i40e_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eeprom*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i40e_netdev_priv*, align 8
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca %struct.i40e_pf*, align 8
  %10 = alloca %struct.i40e_nvm_access*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.i40e_netdev_priv* %15, %struct.i40e_netdev_priv** %7, align 8
  %16 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %7, align 8
  %17 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %19, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 2
  store %struct.i40e_hw* %21, %struct.i40e_hw** %8, align 8
  %22 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %7, align 8
  %23 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %25, align 8
  store %struct.i40e_pf* %26, %struct.i40e_pf** %9, align 8
  %27 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %28 = bitcast %struct.ethtool_eeprom* %27 to %struct.i40e_nvm_access*
  store %struct.i40e_nvm_access* %28, %struct.i40e_nvm_access** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %33 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  %36 = or i32 %31, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %86

45:                                               ; preds = %3
  %46 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 16
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %56 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50, %45
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %85

62:                                               ; preds = %50
  %63 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %65 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @test_bit(i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @__I40E_RESET_INTR_RECEIVED, align 4
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @test_bit(i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69, %62
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %84

79:                                               ; preds = %69
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %81 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %10, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @i40e_nvmupd_command(%struct.i40e_hw* %80, %struct.i40e_nvm_access* %81, i32* %82, i32* %12)
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %59
  br label %86

86:                                               ; preds = %85, %42
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %89, %86
  %93 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %94 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %92
  %100 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %101 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %106 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %10, align 8
  %111 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @I40E_NVM_MOD_PNT_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %10, align 8
  %116 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %10, align 8
  %119 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_info(i32* %103, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %108, i32 %109, i32 %114, i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %99, %92, %89
  %123 = load i32, i32* %12, align 4
  ret i32 %123
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @i40e_nvmupd_command(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
