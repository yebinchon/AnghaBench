; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i8*, i8* }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Module EEPROM memory read not supported. Please update the NVM image.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I40E_PHY_TYPE_EMPTY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"Cannot read module EEPROM memory. No module connected.\0A\00", align 1
@I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE = common dso_local global i32 0, align 4
@I40E_I2C_EEPROM_DEV_ADDR = common dso_local global i32 0, align 4
@I40E_MODULE_SFF_8472_COMP = common dso_local global i32 0, align 4
@I40E_MODULE_SFF_8472_SWAP = common dso_local global i32 0, align 4
@I40E_MODULE_SFF_ADDR_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Module address swap to access page 0xA2 is not supported.\0A\00", align 1
@ETH_MODULE_SFF_8079 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8079_LEN = common dso_local global i8* null, align 8
@I40E_MODULE_SFF_DDM_IMPLEMENTED = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8472_LEN = common dso_local global i8* null, align 8
@I40E_MODULE_REVISION_ADDR = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8636 = common dso_local global i8* null, align 8
@I40E_MODULE_QSFP_MAX_LEN = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8436 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Module type unrecognized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @i40e_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.i40e_netdev_priv*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.i40e_netdev_priv* %16, %struct.i40e_netdev_priv** %6, align 8
  %17 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %18 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %17, i32 0, i32 0
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %18, align 8
  store %struct.i40e_vsi* %19, %struct.i40e_vsi** %7, align 8
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 1
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %21, align 8
  store %struct.i40e_pf* %22, %struct.i40e_pf** %8, align 8
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 0
  store %struct.i40e_hw* %24, %struct.i40e_hw** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @netdev_err(i32 %34, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %183

38:                                               ; preds = %2
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %40 = call i64 @i40e_update_link_info(%struct.i40e_hw* %39)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %183

46:                                               ; preds = %38
  %47 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %48 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @I40E_PHY_TYPE_EMPTY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %56 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netdev_err(i32 %57, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %183

61:                                               ; preds = %46
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %63 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  switch i32 %69, label %175 [
    i32 128, label %70
    i32 129, label %140
    i32 130, label %168
  ]

70:                                               ; preds = %61
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %72 = load i32, i32* @I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE, align 4
  %73 = load i32, i32* @I40E_I2C_EEPROM_DEV_ADDR, align 4
  %74 = load i32, i32* @I40E_MODULE_SFF_8472_COMP, align 4
  %75 = call i64 @i40e_aq_get_phy_register(%struct.i40e_hw* %71, i32 %72, i32 %73, i32 %74, i32* %10, i32* null)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %183

81:                                               ; preds = %70
  %82 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %83 = load i32, i32* @I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE, align 4
  %84 = load i32, i32* @I40E_I2C_EEPROM_DEV_ADDR, align 4
  %85 = load i32, i32* @I40E_MODULE_SFF_8472_SWAP, align 4
  %86 = call i64 @i40e_aq_get_phy_register(%struct.i40e_hw* %82, i32 %83, i32 %84, i32 %85, i32* %11, i32* null)
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %13, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %183

92:                                               ; preds = %81
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @I40E_MODULE_SFF_ADDR_MODE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %99 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @netdev_warn(i32 %100, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i8*, i8** @ETH_MODULE_SFF_8079, align 8
  %103 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %104 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @ETH_MODULE_SFF_8079_LEN, align 8
  %106 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %107 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  br label %139

108:                                              ; preds = %92
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i8*, i8** @ETH_MODULE_SFF_8079, align 8
  %113 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @ETH_MODULE_SFF_8079_LEN, align 8
  %116 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %117 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  br label %138

118:                                              ; preds = %108
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @I40E_MODULE_SFF_DDM_IMPLEMENTED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** @ETH_MODULE_SFF_8079, align 8
  %125 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @ETH_MODULE_SFF_8079_LEN, align 8
  %128 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  br label %137

130:                                              ; preds = %118
  %131 = load i8*, i8** @ETH_MODULE_SFF_8472, align 8
  %132 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %133 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** @ETH_MODULE_SFF_8472_LEN, align 8
  %135 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %136 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %130, %123
  br label %138

138:                                              ; preds = %137, %111
  br label %139

139:                                              ; preds = %138, %97
  br label %182

140:                                              ; preds = %61
  %141 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %142 = load i32, i32* @I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE, align 4
  %143 = load i32, i32* @I40E_MODULE_REVISION_ADDR, align 4
  %144 = call i64 @i40e_aq_get_phy_register(%struct.i40e_hw* %141, i32 %142, i32 0, i32 %143, i32* %12, i32* null)
  store i64 %144, i64* %13, align 8
  %145 = load i64, i64* %13, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %183

150:                                              ; preds = %140
  %151 = load i32, i32* %12, align 4
  %152 = icmp sgt i32 %151, 2
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i8*, i8** @ETH_MODULE_SFF_8636, align 8
  %155 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %156 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** @I40E_MODULE_QSFP_MAX_LEN, align 8
  %158 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %159 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  br label %167

160:                                              ; preds = %150
  %161 = load i8*, i8** @ETH_MODULE_SFF_8436, align 8
  %162 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %163 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** @I40E_MODULE_QSFP_MAX_LEN, align 8
  %165 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %166 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %160, %153
  br label %182

168:                                              ; preds = %61
  %169 = load i8*, i8** @ETH_MODULE_SFF_8636, align 8
  %170 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %171 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** @I40E_MODULE_QSFP_MAX_LEN, align 8
  %173 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %174 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  br label %182

175:                                              ; preds = %61
  %176 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %177 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @netdev_err(i32 %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %3, align 4
  br label %183

182:                                              ; preds = %168, %167, %139
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %182, %175, %147, %89, %78, %54, %43, %31
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i64 @i40e_update_link_info(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_aq_get_phy_register(%struct.i40e_hw*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
