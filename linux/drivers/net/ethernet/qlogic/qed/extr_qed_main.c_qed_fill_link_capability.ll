; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_fill_link_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_fill_link_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@ETH_TRANSCEIVER_STATE_UNPLUGGED = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_PORT_TYPE_UNDEFINED = common dso_local global i32 0, align 4
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Media_type = 0x%x tcvr_state = 0x%x tcvr_type = 0x%x speed_mask = 0x%x board_cfg = 0x%x\0A\00", align 1
@QED_LM_FIBRE_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G = common dso_local global i32 0, align 4
@QED_LM_20000baseKR2_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G = common dso_local global i32 0, align 4
@QED_LM_1000baseKX_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G = common dso_local global i32 0, align 4
@QED_LM_10000baseCR_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G = common dso_local global i32 0, align 4
@QED_LM_40000baseCR4_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G = common dso_local global i32 0, align 4
@QED_LM_25000baseCR_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G = common dso_local global i32 0, align 4
@QED_LM_50000baseCR2_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G = common dso_local global i32 0, align 4
@QED_LM_100000baseCR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_TP_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_PORT_TYPE_EXT_PHY = common dso_local global i32 0, align 4
@QED_LM_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_10000baseT_Full_BIT = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_PORT_TYPE_MODULE = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_1000BASET = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_10G_BASET = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_1G_LX = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_1G_SX = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_10G_SR = common dso_local global i32 0, align 4
@QED_LM_10000baseSR_Full_BIT = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_10G_LR = common dso_local global i32 0, align 4
@QED_LM_10000baseLR_Full_BIT = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_10G_LRM = common dso_local global i32 0, align 4
@QED_LM_10000baseLRM_Full_BIT = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_10G_ER = common dso_local global i32 0, align 4
@QED_LM_10000baseR_FEC_BIT = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_25G_SR = common dso_local global i32 0, align 4
@QED_LM_25000baseSR_Full_BIT = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_40G_LR4 = common dso_local global i32 0, align 4
@QED_LM_40000baseLR4_Full_BIT = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_40G_SR4 = common dso_local global i32 0, align 4
@QED_LM_40000baseSR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_50000baseKR2_Full_BIT = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE_100G_SR4 = common dso_local global i32 0, align 4
@QED_LM_100000baseSR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_Backplane_BIT = common dso_local global i32 0, align 4
@QED_LM_10000baseKR_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_25000baseKR_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_40000baseKR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LM_100000baseKR4_Full_BIT = common dso_local global i32 0, align 4
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unknown media and transceiver type;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32*)* @qed_fill_link_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_fill_link_capability(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %15 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %16 = call i64 @qed_mcp_get_media_type(%struct.qed_hwfn* %14, %struct.qed_ptt* %15, i32* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 129, i32* %9, align 4
  br label %19

19:                                               ; preds = %18, %4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %22 = call i64 @qed_mcp_get_transceiver_data(%struct.qed_hwfn* %20, %struct.qed_ptt* %21, i32* %10, i32* %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ETH_TRANSCEIVER_STATE_UNPLUGGED, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %28 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %29 = call i64 @qed_mcp_trans_speed_mask(%struct.qed_hwfn* %27, %struct.qed_ptt* %28, i32* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %35 = call i64 @qed_mcp_get_board_config(%struct.qed_hwfn* %33, %struct.qed_ptt* %34, i32* %13)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @NVM_CFG1_PORT_PORT_TYPE_UNDEFINED, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %41 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NETIF_MSG_DRV, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (i32, i32, i8*, ...) @DP_VERBOSE(i32 %42, i32 %43, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %409 [
    i32 135, label %51
    i32 136, label %129
    i32 130, label %188
    i32 131, label %188
    i32 128, label %188
    i32 133, label %188
    i32 134, label %328
    i32 129, label %403
    i32 132, label %403
  ]

51:                                               ; preds = %39
  %52 = load i32, i32* @QED_LM_FIBRE_BIT, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load i32, i32* @QED_LM_20000baseKR2_Full_BIT, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %51
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i32, i32* @QED_LM_1000baseKX_Full_BIT, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %65
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @QED_LM_10000baseCR_Full_BIT, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* @QED_LM_40000baseCR4_Full_BIT, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, i32* @QED_LM_25000baseCR_Full_BIT, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32, i32* @QED_LM_50000baseCR2_Full_BIT, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @QED_LM_100000baseCR4_Full_BIT, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %118
  br label %409

129:                                              ; preds = %39
  %130 = load i32, i32* @QED_LM_TP_BIT, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @NVM_CFG1_PORT_PORT_TYPE_EXT_PHY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %129
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* @QED_LM_1000baseT_Full_BIT, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %143, %138
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32, i32* @QED_LM_10000baseT_Full_BIT, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %153, %148
  br label %159

159:                                              ; preds = %158, %129
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* @NVM_CFG1_PORT_PORT_TYPE_MODULE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %159
  %165 = load i32, i32* @QED_LM_FIBRE_BIT, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %165
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @ETH_TRANSCEIVER_TYPE_1000BASET, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = load i32, i32* @QED_LM_1000baseT_Full_BIT, align 4
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %173
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %172, %164
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @ETH_TRANSCEIVER_TYPE_10G_BASET, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load i32, i32* @QED_LM_10000baseT_Full_BIT, align 4
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %182
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %181, %177
  br label %187

187:                                              ; preds = %186, %159
  br label %409

188:                                              ; preds = %39, %39, %39, %39
  %189 = load i32, i32* @QED_LM_FIBRE_BIT, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %189
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %188
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @ETH_TRANSCEIVER_TYPE_1G_LX, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @ETH_TRANSCEIVER_TYPE_1G_SX, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %201, %197
  %206 = load i32, i32* @QED_LM_1000baseKX_Full_BIT, align 4
  %207 = load i32*, i32** %8, align 8
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %206
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %205, %201
  br label %211

211:                                              ; preds = %210, %188
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %253

216:                                              ; preds = %211
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* @ETH_TRANSCEIVER_TYPE_10G_SR, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = load i32, i32* @QED_LM_10000baseSR_Full_BIT, align 4
  %222 = load i32*, i32** %8, align 8
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %221
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %220, %216
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* @ETH_TRANSCEIVER_TYPE_10G_LR, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load i32, i32* @QED_LM_10000baseLR_Full_BIT, align 4
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %230
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %229, %225
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* @ETH_TRANSCEIVER_TYPE_10G_LRM, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = load i32, i32* @QED_LM_10000baseLRM_Full_BIT, align 4
  %240 = load i32*, i32** %8, align 8
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %239
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %238, %234
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @ETH_TRANSCEIVER_TYPE_10G_ER, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %243
  %248 = load i32, i32* @QED_LM_10000baseR_FEC_BIT, align 4
  %249 = load i32*, i32** %8, align 8
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %248
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %247, %243
  br label %253

253:                                              ; preds = %252, %211
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load i32, i32* @QED_LM_20000baseKR2_Full_BIT, align 4
  %260 = load i32*, i32** %8, align 8
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %259
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %258, %253
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %263
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* @ETH_TRANSCEIVER_TYPE_25G_SR, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %268
  %273 = load i32, i32* @QED_LM_25000baseSR_Full_BIT, align 4
  %274 = load i32*, i32** %8, align 8
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %275, %273
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %272, %268
  br label %278

278:                                              ; preds = %277, %263
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %302

283:                                              ; preds = %278
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* @ETH_TRANSCEIVER_TYPE_40G_LR4, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = load i32, i32* @QED_LM_40000baseLR4_Full_BIT, align 4
  %289 = load i32*, i32** %8, align 8
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %288
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %287, %283
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* @ETH_TRANSCEIVER_TYPE_40G_SR4, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %292
  %297 = load i32, i32* @QED_LM_40000baseSR4_Full_BIT, align 4
  %298 = load i32*, i32** %8, align 8
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %297
  store i32 %300, i32* %298, align 4
  br label %301

301:                                              ; preds = %296, %292
  br label %302

302:                                              ; preds = %301, %278
  %303 = load i32, i32* %7, align 4
  %304 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = load i32, i32* @QED_LM_50000baseKR2_Full_BIT, align 4
  %309 = load i32*, i32** %8, align 8
  %310 = load i32, i32* %309, align 4
  %311 = or i32 %310, %308
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %307, %302
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %327

317:                                              ; preds = %312
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* @ETH_TRANSCEIVER_TYPE_100G_SR4, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load i32, i32* @QED_LM_100000baseSR4_Full_BIT, align 4
  %323 = load i32*, i32** %8, align 8
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %322
  store i32 %325, i32* %323, align 4
  br label %326

326:                                              ; preds = %321, %317
  br label %327

327:                                              ; preds = %326, %312
  br label %409

328:                                              ; preds = %39
  %329 = load i32, i32* @QED_LM_Backplane_BIT, align 4
  %330 = load i32*, i32** %8, align 8
  %331 = load i32, i32* %330, align 4
  %332 = or i32 %331, %329
  store i32 %332, i32* %330, align 4
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %328
  %338 = load i32, i32* @QED_LM_20000baseKR2_Full_BIT, align 4
  %339 = load i32*, i32** %8, align 8
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %338
  store i32 %341, i32* %339, align 4
  br label %342

342:                                              ; preds = %337, %328
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = load i32, i32* @QED_LM_1000baseKX_Full_BIT, align 4
  %349 = load i32*, i32** %8, align 8
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %348
  store i32 %351, i32* %349, align 4
  br label %352

352:                                              ; preds = %347, %342
  %353 = load i32, i32* %7, align 4
  %354 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %352
  %358 = load i32, i32* @QED_LM_10000baseKR_Full_BIT, align 4
  %359 = load i32*, i32** %8, align 8
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, %358
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %357, %352
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %362
  %368 = load i32, i32* @QED_LM_25000baseKR_Full_BIT, align 4
  %369 = load i32*, i32** %8, align 8
  %370 = load i32, i32* %369, align 4
  %371 = or i32 %370, %368
  store i32 %371, i32* %369, align 4
  br label %372

372:                                              ; preds = %367, %362
  %373 = load i32, i32* %7, align 4
  %374 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %372
  %378 = load i32, i32* @QED_LM_40000baseKR4_Full_BIT, align 4
  %379 = load i32*, i32** %8, align 8
  %380 = load i32, i32* %379, align 4
  %381 = or i32 %380, %378
  store i32 %381, i32* %379, align 4
  br label %382

382:                                              ; preds = %377, %372
  %383 = load i32, i32* %7, align 4
  %384 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %382
  %388 = load i32, i32* @QED_LM_50000baseKR2_Full_BIT, align 4
  %389 = load i32*, i32** %8, align 8
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %390, %388
  store i32 %391, i32* %389, align 4
  br label %392

392:                                              ; preds = %387, %382
  %393 = load i32, i32* %7, align 4
  %394 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %392
  %398 = load i32, i32* @QED_LM_100000baseKR4_Full_BIT, align 4
  %399 = load i32*, i32** %8, align 8
  %400 = load i32, i32* %399, align 4
  %401 = or i32 %400, %398
  store i32 %401, i32* %399, align 4
  br label %402

402:                                              ; preds = %397, %392
  br label %409

403:                                              ; preds = %39, %39
  %404 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %405 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @QED_MSG_DEBUG, align 4
  %408 = call i32 (i32, i32, i8*, ...) @DP_VERBOSE(i32 %406, i32 %407, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %409

409:                                              ; preds = %39, %403, %402, %327, %187, %128
  ret void
}

declare dso_local i64 @qed_mcp_get_media_type(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i64 @qed_mcp_get_transceiver_data(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32*) #1

declare dso_local i64 @qed_mcp_trans_speed_mask(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i64 @qed_mcp_get_board_config(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i32 @DP_VERBOSE(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
