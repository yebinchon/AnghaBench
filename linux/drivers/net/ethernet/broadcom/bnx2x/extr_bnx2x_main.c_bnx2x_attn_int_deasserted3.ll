; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bnx2x = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@EVEREST_GEN_ATTN_IN_USE_MASK = common dso_local global i32 0, align 4
@BNX2X_PMF_LINK_ASSERT = common dso_local global i32 0, align 4
@MISC_REG_AEU_GENERAL_ATTN_12 = common dso_local global i64 0, align 8
@func_mf_config = common dso_local global %struct.TYPE_7__* null, align 8
@func_mb = common dso_local global %struct.TYPE_8__* null, align 8
@DRV_STATUS_DCC_EVENT_MASK = common dso_local global i32 0, align 4
@DRV_STATUS_OEM_EVENT_MASK = common dso_local global i32 0, align 4
@DRV_STATUS_SET_MF_BW = common dso_local global i32 0, align 4
@DRV_STATUS_DRV_INFO_REQ = common dso_local global i32 0, align 4
@DRV_STATUS_VF_DISABLED = common dso_local global i32 0, align 4
@BNX2X_IOV_HANDLE_FLR = common dso_local global i32 0, align 4
@DRV_STATUS_PMF = common dso_local global i32 0, align 4
@DRV_STATUS_DCBX_NEGOTIATION_RESULTS = common dso_local global i32 0, align 4
@BNX2X_DCBX_STATE_NEG_RECEIVED = common dso_local global i32 0, align 4
@DRV_STATUS_AFEX_EVENT_MASK = common dso_local global i32 0, align 4
@DRV_STATUS_EEE_NEGOTIATION_RESULTS = common dso_local global i32 0, align 4
@DRV_STATUS_OEM_UPDATE_SVID = common dso_local global i32 0, align 4
@BNX2X_SP_RTNL_UPDATE_SVID = common dso_local global i32 0, align 4
@PERIODIC_FLAGS_LINK_EVENT = common dso_local global i32 0, align 4
@BNX2X_MC_ASSERT_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"MC assert!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_10 = common dso_local global i64 0, align 8
@MISC_REG_AEU_GENERAL_ATTN_9 = common dso_local global i64 0, align 8
@MISC_REG_AEU_GENERAL_ATTN_8 = common dso_local global i64 0, align 8
@MISC_REG_AEU_GENERAL_ATTN_7 = common dso_local global i64 0, align 8
@BNX2X_MCP_ASSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"MCP assert!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_11 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown HW assert! (attn 0x%x)\0A\00", align 1
@EVEREST_LATCHED_ATTN_IN_USE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"LATCHED attention 0x%08x (masked)\0A\00", align 1
@BNX2X_GRC_TIMEOUT = common dso_local global i32 0, align 4
@MISC_REG_GRC_TIMEOUT_ATTN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"GRC time-out 0x%08x\0A\00", align 1
@BNX2X_GRC_RSV = common dso_local global i32 0, align 4
@MISC_REG_GRC_RSV_ATTN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"GRC reserved 0x%08x\0A\00", align 1
@MISC_REG_AEU_CLR_LATCH_SIGNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_attn_int_deasserted3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_attn_int_deasserted3(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EVEREST_GEN_ATTN_IN_USE_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %223

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BNX2X_PMF_LINK_ASSERT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %183

16:                                               ; preds = %11
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = call i32 @BP_FUNC(%struct.bnx2x* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_12, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @REG_WR(%struct.bnx2x* %19, i64 %24, i32 0)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = call i32 @bnx2x_read_mf_cfg(%struct.bnx2x* %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @func_mf_config, align 8
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = call i64 @BP_ABS_FUNC(%struct.bnx2x* %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @MF_CFG_RD(%struct.bnx2x* %28, i32 %34)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = call i64 @BP_VN(%struct.bnx2x* %39)
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @func_mb, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SHMEM_RD(%struct.bnx2x* %42, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @DRV_STATUS_DCC_EVENT_MASK, align 4
  %52 = load i32, i32* @DRV_STATUS_OEM_EVENT_MASK, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %16
  %57 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @DRV_STATUS_DCC_EVENT_MASK, align 4
  %60 = load i32, i32* @DRV_STATUS_OEM_EVENT_MASK, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = call i32 @bnx2x_oem_event(%struct.bnx2x* %57, i32 %62)
  br label %64

64:                                               ; preds = %56, %16
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @DRV_STATUS_SET_MF_BW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = call i32 @bnx2x_set_mf_bw(%struct.bnx2x* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @DRV_STATUS_DRV_INFO_REQ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %79 = call i32 @bnx2x_handle_drv_info_req(%struct.bnx2x* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @DRV_STATUS_VF_DISABLED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %87 = load i32, i32* @BNX2X_IOV_HANDLE_FLR, align 4
  %88 = call i32 @bnx2x_schedule_iov_task(%struct.bnx2x* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %80
  %90 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %91 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @DRV_STATUS_PMF, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %102 = call i32 @bnx2x_pmf_update(%struct.bnx2x* %101)
  br label %103

103:                                              ; preds = %100, %95, %89
  %104 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %105 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @DRV_STATUS_DCBX_NEGOTIATION_RESULTS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %116 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %121 = load i32, i32* @BNX2X_DCBX_STATE_NEG_RECEIVED, align 4
  %122 = call i32 @bnx2x_dcbx_set_params(%struct.bnx2x* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %114, %109, %103
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @DRV_STATUS_AFEX_EVENT_MASK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @DRV_STATUS_AFEX_EVENT_MASK, align 4
  %132 = and i32 %130, %131
  %133 = call i32 @bnx2x_handle_afex_cmd(%struct.bnx2x* %129, i32 %132)
  br label %134

134:                                              ; preds = %128, %123
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @DRV_STATUS_EEE_NEGOTIATION_RESULTS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %141 = call i32 @bnx2x_handle_eee_event(%struct.bnx2x* %140)
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @DRV_STATUS_OEM_UPDATE_SVID, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %149 = load i32, i32* @BNX2X_SP_RTNL_UPDATE_SVID, align 4
  %150 = call i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x* %148, i32 %149, i32 0)
  br label %151

151:                                              ; preds = %147, %142
  %152 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %153 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @PERIODIC_FLAGS_LINK_EVENT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %151
  %160 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %161 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %160)
  %162 = load i32, i32* @PERIODIC_FLAGS_LINK_EVENT, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %165 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %163
  store i32 %168, i32* %166, align 8
  %169 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %170 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %169)
  %171 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %172 = call i64 @IS_MF(%struct.bnx2x* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %159
  %175 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %176 = call i32 @bnx2x_link_sync_notify(%struct.bnx2x* %175)
  br label %177

177:                                              ; preds = %174, %159
  %178 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %179 = call i32 @bnx2x_link_report(%struct.bnx2x* %178)
  br label %180

180:                                              ; preds = %177, %151
  %181 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %182 = call i32 @bnx2x__link_status_update(%struct.bnx2x* %181)
  br label %222

183:                                              ; preds = %11
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @BNX2X_MC_ASSERT_BITS, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %183
  %189 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %190 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %191 = call i32 @bnx2x_mc_assert(%struct.bnx2x* %190)
  %192 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %193 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_10, align 8
  %194 = call i32 @REG_WR(%struct.bnx2x* %192, i64 %193, i32 0)
  %195 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %196 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_9, align 8
  %197 = call i32 @REG_WR(%struct.bnx2x* %195, i64 %196, i32 0)
  %198 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %199 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_8, align 8
  %200 = call i32 @REG_WR(%struct.bnx2x* %198, i64 %199, i32 0)
  %201 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %202 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_7, align 8
  %203 = call i32 @REG_WR(%struct.bnx2x* %201, i64 %202, i32 0)
  %204 = call i32 (...) @bnx2x_panic()
  br label %221

205:                                              ; preds = %183
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @BNX2X_MCP_ASSERT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  %211 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %212 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %213 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_11, align 8
  %214 = call i32 @REG_WR(%struct.bnx2x* %212, i64 %213, i32 0)
  %215 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %216 = call i32 @bnx2x_fw_dump(%struct.bnx2x* %215)
  br label %220

217:                                              ; preds = %205
  %218 = load i32, i32* %4, align 4
  %219 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %217, %210
  br label %221

221:                                              ; preds = %220, %188
  br label %222

222:                                              ; preds = %221, %180
  br label %223

223:                                              ; preds = %222, %2
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @EVEREST_LATCHED_ATTN_IN_USE_MASK, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %270

228:                                              ; preds = %223
  %229 = load i32, i32* %4, align 4
  %230 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %4, align 4
  %232 = load i32, i32* @BNX2X_GRC_TIMEOUT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %248

235:                                              ; preds = %228
  %236 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %237 = call i64 @CHIP_IS_E1(%struct.bnx2x* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  br label %244

240:                                              ; preds = %235
  %241 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %242 = load i32, i32* @MISC_REG_GRC_TIMEOUT_ATTN, align 4
  %243 = call i32 @REG_RD(%struct.bnx2x* %241, i32 %242)
  br label %244

244:                                              ; preds = %240, %239
  %245 = phi i32 [ 0, %239 ], [ %243, %240 ]
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* %5, align 4
  %247 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %244, %228
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @BNX2X_GRC_RSV, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %248
  %254 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %255 = call i64 @CHIP_IS_E1(%struct.bnx2x* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  br label %262

258:                                              ; preds = %253
  %259 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %260 = load i32, i32* @MISC_REG_GRC_RSV_ATTN, align 4
  %261 = call i32 @REG_RD(%struct.bnx2x* %259, i32 %260)
  br label %262

262:                                              ; preds = %258, %257
  %263 = phi i32 [ 0, %257 ], [ %261, %258 ]
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* %5, align 4
  %265 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %262, %248
  %267 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %268 = load i64, i64* @MISC_REG_AEU_CLR_LATCH_SIGNAL, align 8
  %269 = call i32 @REG_WR(%struct.bnx2x* %267, i64 %268, i32 2047)
  br label %270

270:                                              ; preds = %266, %223
  ret void
}

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_read_mf_cfg(%struct.bnx2x*) #1

declare dso_local i32 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i64 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_oem_event(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_set_mf_bw(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_handle_drv_info_req(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_schedule_iov_task(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_pmf_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcbx_set_params(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_handle_afex_cmd(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_handle_eee_event(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_sync_notify(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_report(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x__link_status_update(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @bnx2x_mc_assert(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_panic(...) #1

declare dso_local i32 @bnx2x_fw_dump(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
