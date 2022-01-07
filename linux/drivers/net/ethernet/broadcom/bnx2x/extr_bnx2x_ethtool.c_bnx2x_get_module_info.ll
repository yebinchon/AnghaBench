; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i32, i32 }
%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot access eeprom when the interface is down\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@I2C_DEV_ADDR_A0 = common dso_local global i32 0, align 4
@SFP_EEPROM_SFF_8472_COMP_ADDR = common dso_local global i32 0, align 4
@SFP_EEPROM_SFF_8472_COMP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed reading SFF-8472 comp field\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SFP_EEPROM_DIAG_TYPE_ADDR = common dso_local global i32 0, align 4
@SFP_EEPROM_DIAG_TYPE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed reading Diag Type field\0A\00", align 1
@SFP_EEPROM_DIAG_ADDR_CHANGE_REQ = common dso_local global i32 0, align 4
@SFP_EEPROM_DDM_IMPLEMENTED = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @bnx2x_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %11)
  store %struct.bnx2x* %12, %struct.bnx2x** %6, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %14 = call i32 @bnx2x_is_nvm_accessible(%struct.bnx2x* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %18 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @DP(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %103

23:                                               ; preds = %2
  %24 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %25 = call i32 @bnx2x_get_cur_phy_idx(%struct.bnx2x* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %27 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 0
  %37 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %38 = load i32, i32* @SFP_EEPROM_SFF_8472_COMP_ADDR, align 4
  %39 = load i32, i32* @SFP_EEPROM_SFF_8472_COMP_SIZE, align 4
  %40 = call i32 @bnx2x_read_sfp_module_eeprom(i32* %34, %struct.TYPE_2__* %36, i32 %37, i32 %38, i32 %39, i32* %9)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %42 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %23
  %46 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %47 = call i32 @DP(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %103

50:                                               ; preds = %23
  %51 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %52 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %51)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %61 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %60, i32 0, i32 0
  %62 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %63 = load i32, i32* @SFP_EEPROM_DIAG_TYPE_ADDR, align 4
  %64 = load i32, i32* @SFP_EEPROM_DIAG_TYPE_SIZE, align 4
  %65 = call i32 @bnx2x_read_sfp_module_eeprom(i32* %59, %struct.TYPE_2__* %61, i32 %62, i32 %63, i32 %64, i32* %10)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %67 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %50
  %71 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %72 = call i32 @DP(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %103

75:                                               ; preds = %50
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @SFP_EEPROM_DIAG_ADDR_CHANGE_REQ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @SFP_EEPROM_DDM_IMPLEMENTED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83, %78, %75
  %89 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %90 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %93 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %102

95:                                               ; preds = %83
  %96 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %97 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %100 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %101 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %88
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %70, %45, %16
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2x_is_nvm_accessible(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_get_cur_phy_idx(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_sfp_module_eeprom(i32*, %struct.TYPE_2__*, i32, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
