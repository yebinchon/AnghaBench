; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_nic_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_nic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_mvm = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@FW_PHY_CFG_RADIO_TYPE = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_TYPE_POS = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_STEP = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_STEP_POS = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_DASH = common dso_local global i32 0, align 4
@FW_PHY_CFG_RADIO_DASH_POS = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_MAC_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_MAC_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_PHY_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_POS_PHY_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_D3_DEBUG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_MAC_SI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Radio type=0x%x-0x%x-0x%x\0A\00", align 1
@APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*)* @iwl_mvm_nic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_nic_config(%struct.iwl_op_mode* %0) #0 {
  %2 = alloca %struct.iwl_op_mode*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %2, align 8
  %9 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %2, align 8
  %10 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %9)
  store %struct.iwl_mvm* %10, %struct.iwl_mvm** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %12 = call i32 @iwl_mvm_get_phy_config(%struct.iwl_mvm* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @FW_PHY_CFG_RADIO_TYPE, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @FW_PHY_CFG_RADIO_TYPE_POS, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @FW_PHY_CFG_RADIO_STEP, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @FW_PHY_CFG_RADIO_STEP_POS, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @FW_PHY_CFG_RADIO_DASH, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @FW_PHY_CFG_RADIO_DASH_POS, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @CSR_HW_REV_STEP(i32 %32)
  %34 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_MAC_STEP, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @CSR_HW_REV_DASH(i32 %42)
  %44 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_MAC_DASH, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_STEP, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_DASH, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @WARN_ON(i32 %68)
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %1
  %80 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %1
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %84, i32 0, i32 1
  %86 = call i64 @iwl_fw_dbg_is_d3_debug_enabled(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @CSR_HW_IF_CONFIG_REG_D3_DEBUG, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %97 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH, align 4
  %98 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_MAC_SI, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @CSR_HW_IF_CONFIG_REG_D3_DEBUG, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @iwl_trans_set_bits_mask(%struct.TYPE_7__* %95, i32 %96, i32 %111, i32 %112)
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  %119 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %92
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %132 = load i32, i32* @APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS, align 4
  %133 = load i32, i32* @APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS, align 4
  %134 = xor i32 %133, -1
  %135 = call i32 @iwl_set_bits_mask_prph(%struct.TYPE_7__* %130, i32 %131, i32 %132, i32 %134)
  br label %136

136:                                              ; preds = %127, %92
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @iwl_mvm_get_phy_config(%struct.iwl_mvm*) #1

declare dso_local i32 @CSR_HW_REV_STEP(i32) #1

declare dso_local i32 @CSR_HW_REV_DASH(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @iwl_fw_dbg_is_d3_debug_enabled(i32*) #1

declare dso_local i32 @iwl_trans_set_bits_mask(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32, i32, i32) #1

declare dso_local i32 @iwl_set_bits_mask_prph(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
