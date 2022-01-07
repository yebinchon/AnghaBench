; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.qed_hwfn* }
%struct.qed_hwfn = type { i32 }
%struct.qed_link_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_mcp_link_params = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qed_ptt = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@QED_IOV_WQ_VF_FORCE_LINK_QUERY_FLAG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QED_LINK_OVERRIDE_SPEED_AUTONEG = common dso_local global i32 0, align 4
@QED_LINK_OVERRIDE_SPEED_ADV_SPEEDS = common dso_local global i32 0, align 4
@QED_LM_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_1000baseKX_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_1000baseX_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G = common dso_local global i32 0, align 4
@QED_LM_10000baseT_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_10000baseKR_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_10000baseKX4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_10000baseR_FEC_BIT = common dso_local global i32 0, align 4
@QED_LM_10000baseCR_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_10000baseSR_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_10000baseLR_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_10000baseLRM_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G = common dso_local global i32 0, align 4
@QED_LM_20000baseKR2_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G = common dso_local global i32 0, align 4
@QED_LM_25000baseKR_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_25000baseCR_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_25000baseSR_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G = common dso_local global i32 0, align 4
@QED_LM_40000baseLR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_40000baseKR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_40000baseCR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_40000baseSR4_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G = common dso_local global i32 0, align 4
@QED_LM_50000baseKR2_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_50000baseCR2_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_50000baseSR2_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G = common dso_local global i32 0, align 4
@QED_LM_100000baseKR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_100000baseSR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_100000baseCR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_100000baseLR4_ER4_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G = common dso_local global i32 0, align 4
@QED_LINK_OVERRIDE_SPEED_FORCED_SPEED = common dso_local global i32 0, align 4
@QED_LINK_OVERRIDE_PAUSE_CONFIG = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_AUTONEG_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_RX_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_TX_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_OVERRIDE_LOOPBACK_MODE = common dso_local global i32 0, align 4
@ETH_LOOPBACK_INT_PHY = common dso_local global i32 0, align 4
@ETH_LOOPBACK_EXT_PHY = common dso_local global i32 0, align 4
@ETH_LOOPBACK_EXT = common dso_local global i32 0, align 4
@ETH_LOOPBACK_MAC = common dso_local global i32 0, align 4
@ETH_LOOPBACK_NONE = common dso_local global i32 0, align 4
@QED_LINK_OVERRIDE_EEE_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_link_params*)* @qed_set_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_set_link(%struct.qed_dev* %0, %struct.qed_link_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_link_params*, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_mcp_link_params*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_link_params* %1, %struct.qed_link_params** %5, align 8
  %11 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %12 = icmp ne %struct.qed_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %328

16:                                               ; preds = %2
  %17 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %18 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %17, i32 0, i32 0
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %18, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i64 0
  store %struct.qed_hwfn* %20, %struct.qed_hwfn** %6, align 8
  %21 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %22 = call i64 @IS_VF(%struct.qed_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %26 = load i32, i32* @QED_IOV_WQ_VF_FORCE_LINK_QUERY_FLAG, align 4
  %27 = call i32 @qed_schedule_iov(%struct.qed_hwfn* %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %328

28:                                               ; preds = %16
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %30 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %29)
  store %struct.qed_ptt* %30, %struct.qed_ptt** %8, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %32 = icmp ne %struct.qed_ptt* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %328

36:                                               ; preds = %28
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %38 = call %struct.qed_mcp_link_params* @qed_mcp_get_link_params(%struct.qed_hwfn* %37)
  store %struct.qed_mcp_link_params* %38, %struct.qed_mcp_link_params** %7, align 8
  %39 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %40 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @QED_LINK_OVERRIDE_SPEED_AUTONEG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %47 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %50 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %36
  %53 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %54 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @QED_LINK_OVERRIDE_SPEED_ADV_SPEEDS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %205

59:                                               ; preds = %52
  %60 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %61 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* @QED_LM_1000baseT_Full_BIT, align 4
  %64 = load i32, i32* @QED_LM_1000baseKX_Full_BIT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @QED_LM_1000baseX_Full_BIT, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %69 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %59
  %75 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %76 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %77 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %74, %59
  %82 = load i32, i32* @QED_LM_10000baseT_Full_BIT, align 4
  %83 = load i32, i32* @QED_LM_10000baseKR_Full_BIT, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @QED_LM_10000baseKX4_Full_BIT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @QED_LM_10000baseR_FEC_BIT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @QED_LM_10000baseCR_Full_BIT, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @QED_LM_10000baseSR_Full_BIT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @QED_LM_10000baseLR_Full_BIT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @QED_LM_10000baseLRM_Full_BIT, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %9, align 4
  %97 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %98 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %81
  %104 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %105 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %106 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %81
  %111 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %112 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @QED_LM_20000baseKR2_Full_BIT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G, align 4
  %119 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %120 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117, %110
  %125 = load i32, i32* @QED_LM_25000baseKR_Full_BIT, align 4
  %126 = load i32, i32* @QED_LM_25000baseCR_Full_BIT, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @QED_LM_25000baseSR_Full_BIT, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %9, align 4
  %130 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %131 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %124
  %137 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %138 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %139 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %136, %124
  %144 = load i32, i32* @QED_LM_40000baseLR4_Full_BIT, align 4
  %145 = load i32, i32* @QED_LM_40000baseKR4_Full_BIT, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @QED_LM_40000baseCR4_Full_BIT, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @QED_LM_40000baseSR4_Full_BIT, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %9, align 4
  %151 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %152 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %143
  %158 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G, align 4
  %159 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %160 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %157, %143
  %165 = load i32, i32* @QED_LM_50000baseKR2_Full_BIT, align 4
  %166 = load i32, i32* @QED_LM_50000baseCR2_Full_BIT, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @QED_LM_50000baseSR2_Full_BIT, align 4
  %169 = or i32 %167, %168
  store i32 %169, i32* %9, align 4
  %170 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %171 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %164
  %177 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G, align 4
  %178 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %179 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %177
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %176, %164
  %184 = load i32, i32* @QED_LM_100000baseKR4_Full_BIT, align 4
  %185 = load i32, i32* @QED_LM_100000baseSR4_Full_BIT, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @QED_LM_100000baseCR4_Full_BIT, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @QED_LM_100000baseLR4_ER4_Full_BIT, align 4
  %190 = or i32 %188, %189
  store i32 %190, i32* %9, align 4
  %191 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %192 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %9, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %183
  %198 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G, align 4
  %199 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %200 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %198
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %197, %183
  br label %205

205:                                              ; preds = %204, %52
  %206 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %207 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @QED_LINK_OVERRIDE_SPEED_FORCED_SPEED, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %205
  %213 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %214 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %217 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %212, %205
  %220 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %221 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @QED_LINK_OVERRIDE_PAUSE_CONFIG, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %272

226:                                              ; preds = %219
  %227 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %228 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @QED_LINK_PAUSE_AUTONEG_ENABLE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %226
  %234 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %235 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  store i32 1, i32* %236, align 4
  br label %241

237:                                              ; preds = %226
  %238 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %239 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  store i32 0, i32* %240, align 4
  br label %241

241:                                              ; preds = %237, %233
  %242 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %243 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @QED_LINK_PAUSE_RX_ENABLE, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %250 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  store i32 1, i32* %251, align 4
  br label %256

252:                                              ; preds = %241
  %253 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %254 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  store i32 0, i32* %255, align 4
  br label %256

256:                                              ; preds = %252, %248
  %257 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %258 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @QED_LINK_PAUSE_TX_ENABLE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %256
  %264 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %265 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 2
  store i32 1, i32* %266, align 4
  br label %271

267:                                              ; preds = %256
  %268 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %269 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 2
  store i32 0, i32* %270, align 4
  br label %271

271:                                              ; preds = %267, %263
  br label %272

272:                                              ; preds = %271, %219
  %273 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %274 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @QED_LINK_OVERRIDE_LOOPBACK_MODE, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %304

279:                                              ; preds = %272
  %280 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %281 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  switch i32 %282, label %299 [
    i32 129, label %283
    i32 130, label %287
    i32 131, label %291
    i32 128, label %295
  ]

283:                                              ; preds = %279
  %284 = load i32, i32* @ETH_LOOPBACK_INT_PHY, align 4
  %285 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %286 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  br label %303

287:                                              ; preds = %279
  %288 = load i32, i32* @ETH_LOOPBACK_EXT_PHY, align 4
  %289 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %290 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  br label %303

291:                                              ; preds = %279
  %292 = load i32, i32* @ETH_LOOPBACK_EXT, align 4
  %293 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %294 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  br label %303

295:                                              ; preds = %279
  %296 = load i32, i32* @ETH_LOOPBACK_MAC, align 4
  %297 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %298 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 4
  br label %303

299:                                              ; preds = %279
  %300 = load i32, i32* @ETH_LOOPBACK_NONE, align 4
  %301 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %302 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 4
  br label %303

303:                                              ; preds = %299, %295, %291, %287, %283
  br label %304

304:                                              ; preds = %303, %272
  %305 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %306 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @QED_LINK_OVERRIDE_EEE_CONFIG, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %304
  %312 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %7, align 8
  %313 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %312, i32 0, i32 0
  %314 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %315 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %314, i32 0, i32 5
  %316 = call i32 @memcpy(i32* %313, i32* %315, i32 4)
  br label %317

317:                                              ; preds = %311, %304
  %318 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %319 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %320 = load %struct.qed_link_params*, %struct.qed_link_params** %5, align 8
  %321 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @qed_mcp_set_link(%struct.qed_hwfn* %318, %struct.qed_ptt* %319, i32 %322)
  store i32 %323, i32* %10, align 4
  %324 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %325 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %326 = call i32 @qed_ptt_release(%struct.qed_hwfn* %324, %struct.qed_ptt* %325)
  %327 = load i32, i32* %10, align 4
  store i32 %327, i32* %3, align 4
  br label %328

328:                                              ; preds = %317, %33, %24, %13
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i64 @IS_VF(%struct.qed_dev*) #1

declare dso_local i32 @qed_schedule_iov(%struct.qed_hwfn*, i32) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local %struct.qed_mcp_link_params* @qed_mcp_get_link_params(%struct.qed_hwfn*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qed_mcp_set_link(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
