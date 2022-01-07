; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_update_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_update_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.TYPE_2__*, %struct.bnx2x* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i32, i32, i32, i64 }

@LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@LINK_STATUS_PHYSICAL_LINK_FLAG = common dso_local global i32 0, align 4
@PHY_PHYSICAL_LINK_FLAG = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@LINK_STATUS_TX_FLOW_CONTROL_ENABLED = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@LINK_STATUS_RX_FLOW_CONTROL_ENABLED = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Found errors on XMAC\0A\00", align 1
@PHY_HALF_OPEN_CONN_FLAG = common dso_local global i32 0, align 4
@LED_MODE_OPER = common dso_local global i32 0, align 4
@SHMEM_EEE_ACTIVE_BIT = common dso_local global i32 0, align 4
@SHMEM_EEE_LPI_REQUESTED_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Enabling LPI assertion\0A\00", align 1
@MISC_REG_CPMU_LP_FW_ENABLE_P0 = common dso_local global i64 0, align 8
@MISC_REG_CPMU_LP_DR_ENABLE = common dso_local global i64 0, align 8
@MISC_REG_CPMU_LP_MASK_ENT_P0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Found errors on BMAC\0A\00", align 1
@SPEED_10000 = common dso_local global i32 0, align 4
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@PHY_SGMII_FLAG = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@INT_PHY = common dso_local global i32 0, align 4
@MAX_PHYS = common dso_local global i32 0, align 4
@FLAGS_TX_ERROR_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*, i32)* @bnx2x_update_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_update_link_up(%struct.link_params* %0, %struct.link_vars* %1, i32 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.link_params*, %struct.link_params** %4, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 2
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  %14 = load %struct.link_params*, %struct.link_params** %4, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %18 = load i32, i32* @LINK_STATUS_PHYSICAL_LINK_FLAG, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %21 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @PHY_PHYSICAL_LINK_FLAG, align 4
  %25 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %26 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %30 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load i32, i32* @LINK_STATUS_TX_FLOW_CONTROL_ENABLED, align 4
  %37 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %38 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %3
  %42 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %43 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @LINK_STATUS_RX_FLOW_CONTROL_ENABLED, align 4
  %50 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %51 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %56 = call i64 @USES_WARPCORE(%struct.bnx2x* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %135

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load %struct.link_params*, %struct.link_params** %4, align 8
  %63 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %64 = call i32 @bnx2x_xmac_enable(%struct.link_params* %62, %struct.link_vars* %63, i32 0)
  %65 = load i32, i32* @ESRCH, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %61
  %69 = load i32, i32* @NETIF_MSG_LINK, align 4
  %70 = call i32 @DP(i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %72 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @PHY_HALF_OPEN_CONN_FLAG, align 4
  %74 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %75 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %81 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %68, %61
  br label %89

85:                                               ; preds = %58
  %86 = load %struct.link_params*, %struct.link_params** %4, align 8
  %87 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %88 = call i32 @bnx2x_umac_enable(%struct.link_params* %86, %struct.link_vars* %87, i32 0)
  br label %89

89:                                               ; preds = %85, %84
  %90 = load %struct.link_params*, %struct.link_params** %4, align 8
  %91 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %92 = load i32, i32* @LED_MODE_OPER, align 4
  %93 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %94 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @bnx2x_set_led(%struct.link_params* %90, %struct.link_vars* %91, i32 %92, i32 %95)
  %97 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %98 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SHMEM_EEE_ACTIVE_BIT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %89
  %104 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %105 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SHMEM_EEE_LPI_REQUESTED_BIT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %103
  %111 = load i32, i32* @NETIF_MSG_LINK, align 4
  %112 = call i32 @DP(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %114 = load i64, i64* @MISC_REG_CPMU_LP_FW_ENABLE_P0, align 8
  %115 = load %struct.link_params*, %struct.link_params** %4, align 8
  %116 = getelementptr inbounds %struct.link_params, %struct.link_params* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %114, %119
  %121 = call i32 @REG_WR(%struct.bnx2x* %113, i64 %120, i32 1)
  %122 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %123 = load i64, i64* @MISC_REG_CPMU_LP_DR_ENABLE, align 8
  %124 = call i32 @REG_WR(%struct.bnx2x* %122, i64 %123, i32 1)
  %125 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %126 = load i64, i64* @MISC_REG_CPMU_LP_MASK_ENT_P0, align 8
  %127 = load %struct.link_params*, %struct.link_params** %4, align 8
  %128 = getelementptr inbounds %struct.link_params, %struct.link_params* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %126, %131
  %133 = call i32 @REG_WR(%struct.bnx2x* %125, i64 %132, i32 64544)
  br label %134

134:                                              ; preds = %110, %103, %89
  br label %135

135:                                              ; preds = %134, %54
  %136 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %137 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %141 = call i64 @CHIP_IS_E2(%struct.bnx2x* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %204

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %175

146:                                              ; preds = %143
  %147 = load %struct.link_params*, %struct.link_params** %4, align 8
  %148 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %149 = call i32 @bnx2x_bmac_enable(%struct.link_params* %147, %struct.link_vars* %148, i32 0, i32 1)
  %150 = load i32, i32* @ESRCH, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %146
  %154 = load i32, i32* @NETIF_MSG_LINK, align 4
  %155 = call i32 @DP(i32 %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %156 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %157 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %156, i32 0, i32 5
  store i64 0, i64* %157, align 8
  %158 = load i32, i32* @PHY_HALF_OPEN_CONN_FLAG, align 4
  %159 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %160 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %166 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %153, %146
  %170 = load %struct.link_params*, %struct.link_params** %4, align 8
  %171 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %172 = load i32, i32* @LED_MODE_OPER, align 4
  %173 = load i32, i32* @SPEED_10000, align 4
  %174 = call i32 @bnx2x_set_led(%struct.link_params* %170, %struct.link_vars* %171, i32 %172, i32 %173)
  br label %203

175:                                              ; preds = %143
  %176 = load %struct.link_params*, %struct.link_params** %4, align 8
  %177 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %178 = call i32 @bnx2x_emac_program(%struct.link_params* %176, %struct.link_vars* %177)
  store i32 %178, i32* %10, align 4
  %179 = load %struct.link_params*, %struct.link_params** %4, align 8
  %180 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %181 = call i32 @bnx2x_emac_enable(%struct.link_params* %179, %struct.link_vars* %180, i32 0)
  %182 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %183 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %175
  %189 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %190 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @PHY_SGMII_FLAG, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %188
  %196 = load %struct.link_params*, %struct.link_params** %4, align 8
  %197 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load %struct.link_params*, %struct.link_params** %4, align 8
  %201 = call i32 @bnx2x_set_gmii_tx_driver(%struct.link_params* %200)
  br label %202

202:                                              ; preds = %199, %195, %188, %175
  br label %203

203:                                              ; preds = %202, %169
  br label %204

204:                                              ; preds = %203, %139
  %205 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %206 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %204
  %209 = load %struct.link_params*, %struct.link_params** %4, align 8
  %210 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %211 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %214 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @bnx2x_pbf_update(%struct.link_params* %209, i32 %212, i32 %215)
  %217 = load i32, i32* %10, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %208, %204
  %220 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %221 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %222 = load i32, i32* %9, align 4
  %223 = mul nsw i32 %222, 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %221, %224
  %226 = call i32 @REG_WR(%struct.bnx2x* %220, i64 %225, i32 0)
  %227 = load %struct.link_params*, %struct.link_params** %4, align 8
  %228 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %229 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @bnx2x_update_mng(%struct.link_params* %227, i32 %230)
  %232 = load %struct.link_params*, %struct.link_params** %4, align 8
  %233 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %234 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @bnx2x_update_mng_eee(%struct.link_params* %232, i32 %235)
  %237 = load i32, i32* @INT_PHY, align 4
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %259, %219
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @MAX_PHYS, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %262

242:                                              ; preds = %238
  %243 = load %struct.link_params*, %struct.link_params** %4, align 8
  %244 = getelementptr inbounds %struct.link_params, %struct.link_params* %243, i32 0, i32 1
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @FLAGS_TX_ERROR_CHECK, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %242
  %255 = load %struct.link_params*, %struct.link_params** %4, align 8
  %256 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %257 = call i32 @bnx2x_check_half_open_conn(%struct.link_params* %255, %struct.link_vars* %256, i32 0)
  br label %262

258:                                              ; preds = %242
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %238

262:                                              ; preds = %254, %238
  %263 = call i32 @msleep(i32 20)
  %264 = load i32, i32* %10, align 4
  ret i32 %264
}

declare dso_local i64 @USES_WARPCORE(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_xmac_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_umac_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_set_led(%struct.link_params*, %struct.link_vars*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_bmac_enable(%struct.link_params*, %struct.link_vars*, i32, i32) #1

declare dso_local i32 @bnx2x_emac_program(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_emac_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i64 @SINGLE_MEDIA_DIRECT(%struct.link_params*) #1

declare dso_local i32 @bnx2x_set_gmii_tx_driver(%struct.link_params*) #1

declare dso_local i32 @bnx2x_pbf_update(%struct.link_params*, i32, i32) #1

declare dso_local i32 @bnx2x_update_mng(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_update_mng_eee(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_check_half_open_conn(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
