; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32, %struct.TYPE_4__*, i32, %struct.bnx2x* }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, %struct.link_params*)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i64, i64, i64 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Resetting the link of port %d\0A\00", align 1
@SHMEM_EEE_LP_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_ACTIVE_BIT = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_EMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_NIG_EMAC0_EN = common dso_local global i64 0, align 8
@LED_MODE_OFF = common dso_local global i32 0, align 4
@EXT_PHY1 = common dso_local global i32 0, align 4
@FLAGS_REARM_LATCH_SIGNAL = common dso_local global i32 0, align 4
@NIG_REG_LATCH_BC_0 = common dso_local global i64 0, align 8
@NIG_LATCH_BC_ENABLE_MI_INT = common dso_local global i32 0, align 4
@INT_PHY = common dso_local global i64 0, align 8
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_IN_EN = common dso_local global i64 0, align 8
@GRCBASE_XMAC1 = common dso_local global i64 0, align 8
@GRCBASE_XMAC0 = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@XMAC_REG_CTRL = common dso_local global i64 0, align 8
@XMAC_CTRL_REG_SOFT_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_link_reset(%struct.link_params* %0, %struct.link_vars* %1, i32 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.link_params*, %struct.link_params** %4, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  store %struct.bnx2x* %14, %struct.bnx2x** %7, align 8
  %15 = load %struct.link_params*, %struct.link_params** %4, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @NETIF_MSG_LINK, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @DP(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %22 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.link_params*, %struct.link_params** %4, align 8
  %24 = call i32 @bnx2x_chng_link_count(%struct.link_params* %23, i32 1)
  %25 = load %struct.link_params*, %struct.link_params** %4, align 8
  %26 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %27 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bnx2x_update_mng(%struct.link_params* %25, i64 %28)
  %30 = load i32, i32* @SHMEM_EEE_LP_ADV_STATUS_MASK, align 4
  %31 = load i32, i32* @SHMEM_EEE_ACTIVE_BIT, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %35 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.link_params*, %struct.link_params** %4, align 8
  %39 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %40 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bnx2x_update_mng_eee(%struct.link_params* %38, i32 %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %44 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* @NIG_MASK_XGXS0_LINK_STATUS, align 4
  %50 = load i32, i32* @NIG_MASK_XGXS0_LINK10G, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @NIG_MASK_SERDES0_LINK_STATUS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %43, i64 %48, i32 %55)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %58 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = call i32 @REG_WR(%struct.bnx2x* %57, i64 %62, i32 1)
  %64 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %65 = call i32 @CHIP_IS_E3(%struct.bnx2x* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %3
  %68 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %69 = load i64, i64* @NIG_REG_BMAC0_OUT_EN, align 8
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = call i32 @REG_WR(%struct.bnx2x* %68, i64 %73, i32 0)
  %75 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %76 = load i64, i64* @NIG_REG_EGRESS_EMAC0_OUT_EN, align 8
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = call i32 @REG_WR(%struct.bnx2x* %75, i64 %80, i32 0)
  br label %82

82:                                               ; preds = %67, %3
  %83 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %84 = call i32 @CHIP_IS_E3(%struct.bnx2x* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %88 = load %struct.link_params*, %struct.link_params** %4, align 8
  %89 = getelementptr inbounds %struct.link_params, %struct.link_params* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @bnx2x_set_bmac_rx(%struct.bnx2x* %87, i32 %90, i32 %91, i32 0)
  br label %98

93:                                               ; preds = %82
  %94 = load %struct.link_params*, %struct.link_params** %4, align 8
  %95 = call i32 @bnx2x_set_xmac_rxtx(%struct.link_params* %94, i32 0)
  %96 = load %struct.link_params*, %struct.link_params** %4, align 8
  %97 = call i32 @bnx2x_set_umac_rxtx(%struct.link_params* %96, i32 0)
  br label %98

98:                                               ; preds = %93, %86
  %99 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %100 = call i32 @CHIP_IS_E3(%struct.bnx2x* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %104 = load i64, i64* @NIG_REG_NIG_EMAC0_EN, align 8
  %105 = load i32, i32* %9, align 4
  %106 = mul nsw i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = call i32 @REG_WR(%struct.bnx2x* %103, i64 %108, i32 0)
  br label %110

110:                                              ; preds = %102, %98
  %111 = call i32 @usleep_range(i32 10000, i32 20000)
  %112 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %113 = load %struct.link_params*, %struct.link_params** %4, align 8
  %114 = call i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x* %112, %struct.link_params* %113)
  %115 = load %struct.link_params*, %struct.link_params** %4, align 8
  %116 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %117 = load i32, i32* @LED_MODE_OFF, align 4
  %118 = call i32 @bnx2x_set_led(%struct.link_params* %115, %struct.link_vars* %116, i32 %117, i32 0)
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %182

121:                                              ; preds = %110
  %122 = load i32, i32* @EXT_PHY1, align 4
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %178, %121
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.link_params*, %struct.link_params** %4, align 8
  %126 = getelementptr inbounds %struct.link_params, %struct.link_params* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %181

129:                                              ; preds = %123
  %130 = load %struct.link_params*, %struct.link_params** %4, align 8
  %131 = getelementptr inbounds %struct.link_params, %struct.link_params* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32 (%struct.TYPE_4__*, %struct.link_params*)*, i32 (%struct.TYPE_4__*, %struct.link_params*)** %136, align 8
  %138 = icmp ne i32 (%struct.TYPE_4__*, %struct.link_params*)* %137, null
  br i1 %138, label %139, label %164

139:                                              ; preds = %129
  %140 = load %struct.link_params*, %struct.link_params** %4, align 8
  %141 = load %struct.link_params*, %struct.link_params** %4, align 8
  %142 = getelementptr inbounds %struct.link_params, %struct.link_params* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %140, %struct.TYPE_4__* %146)
  %148 = load %struct.link_params*, %struct.link_params** %4, align 8
  %149 = getelementptr inbounds %struct.link_params, %struct.link_params* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32 (%struct.TYPE_4__*, %struct.link_params*)*, i32 (%struct.TYPE_4__*, %struct.link_params*)** %154, align 8
  %156 = load %struct.link_params*, %struct.link_params** %4, align 8
  %157 = getelementptr inbounds %struct.link_params, %struct.link_params* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = load %struct.link_params*, %struct.link_params** %4, align 8
  %163 = call i32 %155(%struct.TYPE_4__* %161, %struct.link_params* %162)
  br label %164

164:                                              ; preds = %139, %129
  %165 = load %struct.link_params*, %struct.link_params** %4, align 8
  %166 = getelementptr inbounds %struct.link_params, %struct.link_params* %165, i32 0, i32 2
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @FLAGS_REARM_LATCH_SIGNAL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %164
  store i32 1, i32* %10, align 4
  br label %177

177:                                              ; preds = %176, %164
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %123

181:                                              ; preds = %123
  br label %182

182:                                              ; preds = %181, %110
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %182
  %186 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @bnx2x_rearm_latch_signal(%struct.bnx2x* %186, i32 %187, i32 0)
  %189 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %190 = load i64, i64* @NIG_REG_LATCH_BC_0, align 8
  %191 = load i32, i32* %9, align 4
  %192 = mul nsw i32 %191, 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %190, %193
  %195 = load i32, i32* @NIG_LATCH_BC_ENABLE_MI_INT, align 4
  %196 = shl i32 1, %195
  %197 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %189, i64 %194, i32 %196)
  br label %198

198:                                              ; preds = %185, %182
  %199 = load %struct.link_params*, %struct.link_params** %4, align 8
  %200 = getelementptr inbounds %struct.link_params, %struct.link_params* %199, i32 0, i32 2
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i64, i64* @INT_PHY, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32 (%struct.TYPE_4__*, %struct.link_params*)*, i32 (%struct.TYPE_4__*, %struct.link_params*)** %204, align 8
  %206 = icmp ne i32 (%struct.TYPE_4__*, %struct.link_params*)* %205, null
  br i1 %206, label %207, label %222

207:                                              ; preds = %198
  %208 = load %struct.link_params*, %struct.link_params** %4, align 8
  %209 = getelementptr inbounds %struct.link_params, %struct.link_params* %208, i32 0, i32 2
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i64, i64* @INT_PHY, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32 (%struct.TYPE_4__*, %struct.link_params*)*, i32 (%struct.TYPE_4__*, %struct.link_params*)** %213, align 8
  %215 = load %struct.link_params*, %struct.link_params** %4, align 8
  %216 = getelementptr inbounds %struct.link_params, %struct.link_params* %215, i32 0, i32 2
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = load i64, i64* @INT_PHY, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %218
  %220 = load %struct.link_params*, %struct.link_params** %4, align 8
  %221 = call i32 %214(%struct.TYPE_4__* %219, %struct.link_params* %220)
  br label %222

222:                                              ; preds = %207, %198
  %223 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %224 = call i32 @CHIP_IS_E3(%struct.bnx2x* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %249, label %226

226:                                              ; preds = %222
  %227 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %228 = load i64, i64* @GRCBASE_MISC, align 8
  %229 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %230 = add nsw i64 %228, %229
  %231 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %232 = load i32, i32* %9, align 4
  %233 = shl i32 %231, %232
  %234 = call i32 @REG_WR(%struct.bnx2x* %227, i64 %230, i32 %233)
  %235 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %236 = load i64, i64* @NIG_REG_BMAC0_IN_EN, align 8
  %237 = load i32, i32* %9, align 4
  %238 = mul nsw i32 %237, 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %236, %239
  %241 = call i32 @REG_WR(%struct.bnx2x* %235, i64 %240, i32 0)
  %242 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %243 = load i64, i64* @NIG_REG_EMAC0_IN_EN, align 8
  %244 = load i32, i32* %9, align 4
  %245 = mul nsw i32 %244, 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %243, %246
  %248 = call i32 @REG_WR(%struct.bnx2x* %242, i64 %247, i32 0)
  br label %276

249:                                              ; preds = %222
  %250 = load %struct.link_params*, %struct.link_params** %4, align 8
  %251 = getelementptr inbounds %struct.link_params, %struct.link_params* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = load i64, i64* @GRCBASE_XMAC1, align 8
  br label %258

256:                                              ; preds = %249
  %257 = load i64, i64* @GRCBASE_XMAC0, align 8
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i64 [ %255, %254 ], [ %257, %256 ]
  store i64 %259, i64* %11, align 8
  %260 = load %struct.link_params*, %struct.link_params** %4, align 8
  %261 = call i32 @bnx2x_set_xumac_nig(%struct.link_params* %260, i32 0, i32 0)
  %262 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %263 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %264 = call i32 @REG_RD(%struct.bnx2x* %262, i32 %263)
  %265 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %258
  %269 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* @XMAC_REG_CTRL, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i32, i32* @XMAC_CTRL_REG_SOFT_RESET, align 4
  %274 = call i32 @REG_WR(%struct.bnx2x* %269, i64 %272, i32 %273)
  br label %275

275:                                              ; preds = %268, %258
  br label %276

276:                                              ; preds = %275, %226
  %277 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %278 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %277, i32 0, i32 2
  store i64 0, i64* %278, align 8
  %279 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %280 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %279, i32 0, i32 1
  store i64 0, i64* %280, align 8
  ret i32 0
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_chng_link_count(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_update_mng(%struct.link_params*, i64) #1

declare dso_local i32 @bnx2x_update_mng_eee(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_bmac_rx(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_set_xmac_rxtx(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_set_umac_rxtx(%struct.link_params*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_set_led(%struct.link_params*, %struct.link_vars*, i32, i32) #1

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.TYPE_4__*) #1

declare dso_local i32 @bnx2x_rearm_latch_signal(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_set_xumac_nig(%struct.link_params*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
