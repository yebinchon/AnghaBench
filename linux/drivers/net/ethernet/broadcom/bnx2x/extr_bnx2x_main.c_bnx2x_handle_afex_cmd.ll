; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_handle_afex_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_handle_afex_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.bnx2x = type { i32*, i32, i32 }
%struct.afex_stats = type { i32 }
%struct.cmng_init_input = type { i32* }
%struct.rate_shaping_vars_per_vn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DRV_STATUS_AFEX_LISTGET_REQ = common dso_local global i32 0, align 4
@afex_param1_to_driver = common dso_local global i32* null, align 8
@BNX2X_MSG_MCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"afex: got MCP req LISTGET_REQ for vifid 0x%x\0A\00", align 1
@VIF_LIST_RULE_GET = common dso_local global i32 0, align 4
@DRV_STATUS_AFEX_LISTSET_REQ = common dso_local global i32 0, align 4
@afex_param2_to_driver = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"afex: got MCP req LISTSET_REQ for vifid 0x%x addrs 0x%x\0A\00", align 1
@VIF_LIST_RULE_SET = common dso_local global i32 0, align 4
@DRV_STATUS_AFEX_STATSGET_REQ = common dso_local global i32 0, align 4
@afex_scratchpad_addr_to_write = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"afex: got MCP req STATSGET_REQ, write to addr 0x%x\0A\00", align 1
@DRV_MSG_CODE_AFEX_STATSGET_ACK = common dso_local global i32 0, align 4
@DRV_STATUS_AFEX_VIFSET_REQ = common dso_local global i32 0, align 4
@func_mf_config = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"afex: got MCP req VIFSET_REQ, mf_config 0x%x\0A\00", align 1
@FUNC_MF_CFG_FUNC_DISABLED = common dso_local global i32 0, align 4
@BAR_XSTRORM_INTMEM = common dso_local global i32 0, align 4
@RS_PERIODIC_TIMEOUT_USEC = common dso_local global i32 0, align 4
@FUNC_MF_CFG_E1HOV_TAG_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_E1HOV_TAG_SHIFT = common dso_local global i32 0, align 4
@FUNC_MF_CFG_AFEX_VLAN_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_AFEX_VLAN_SHIFT = common dso_local global i32 0, align 4
@FUNC_MF_CFG_TRANSMIT_PRIORITY_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_TRANSMIT_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@FUNC_MF_CFG_AFEX_VLAN_MODE_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_AFEX_VLAN_MODE_SHIFT = common dso_local global i32 0, align 4
@FUNC_MF_CFG_AFEX_COS_FILTER_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_AFEX_COS_FILTER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_handle_afex_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_handle_afex_cmd(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.afex_stats, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cmng_init_input, align 8
  %19 = alloca %struct.rate_shaping_vars_per_vn, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DRV_STATUS_AFEX_LISTGET_REQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %2
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = load i32*, i32** @afex_param1_to_driver, align 8
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @SHMEM2_RD(%struct.bnx2x* %29, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 (i32, i8*, i32, ...) @DP(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = load i32, i32* @VIF_LIST_RULE_GET, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @bnx2x_afex_handle_vif_list_cmd(%struct.bnx2x* %39, i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %28, %2
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @DRV_STATUS_AFEX_LISTSET_REQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %50 = load i32*, i32** @afex_param1_to_driver, align 8
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %51)
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SHMEM2_RD(%struct.bnx2x* %49, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %57 = load i32*, i32** @afex_param2_to_driver, align 8
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %58)
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SHMEM2_RD(%struct.bnx2x* %56, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 (i32, i8*, i32, ...) @DP(i32 %63, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %68 = load i32, i32* @VIF_LIST_RULE_SET, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @bnx2x_afex_handle_vif_list_cmd(%struct.bnx2x* %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %48, %43
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @DRV_STATUS_AFEX_STATSGET_REQ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %72
  %78 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %79 = load i32*, i32** @afex_scratchpad_addr_to_write, align 8
  %80 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %81 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %80)
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SHMEM2_RD(%struct.bnx2x* %78, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %86 = load i32*, i32** @afex_param1_to_driver, align 8
  %87 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %88 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %87)
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SHMEM2_RD(%struct.bnx2x* %85, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (i32, i8*, i32, ...) @DP(i32 %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %96 = bitcast %struct.afex_stats* %5 to i8*
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @bnx2x_afex_collect_stats(%struct.bnx2x* %95, i8* %96, i32 %97)
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %118, %77
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %101, 1
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = add i64 %106, %109
  %111 = trunc i64 %110 to i32
  %112 = bitcast %struct.afex_stats* %5 to i32*
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @REG_WR(%struct.bnx2x* %104, i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %99

121:                                              ; preds = %99
  %122 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %123 = load i32, i32* @DRV_MSG_CODE_AFEX_STATSGET_ACK, align 4
  %124 = call i32 @bnx2x_fw_command(%struct.bnx2x* %122, i32 %123, i32 0)
  br label %125

125:                                              ; preds = %121, %72
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @DRV_STATUS_AFEX_VIFSET_REQ, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %271

130:                                              ; preds = %125
  %131 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_mf_config, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @MF_CFG_RD(%struct.bnx2x* %131, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %141 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %144 = call i64 @BP_VN(%struct.bnx2x* %143)
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  %146 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (i32, i8*, i32, ...) @DP(i32 %146, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @FUNC_MF_CFG_FUNC_DISABLED, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %263, label %153

153:                                              ; preds = %130
  store i64 8, i64* %20, align 8
  %154 = load i32, i32* @BAR_XSTRORM_INTMEM, align 4
  %155 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %156 = call i32 @BP_FUNC(%struct.bnx2x* %155)
  %157 = call i32 @XSTORM_RATE_SHAPING_PER_VN_VARS_OFFSET(i32 %156)
  %158 = add nsw i32 %154, %157
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %161 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %164 = call i64 @BP_VN(%struct.bnx2x* %163)
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %167 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %168 = call i64 @BP_VN(%struct.bnx2x* %167)
  %169 = call i32 @bnx2x_calc_vn_max(%struct.bnx2x* %166, i64 %168, %struct.cmng_init_input* %18)
  %170 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %18, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %173 = call i64 @BP_VN(%struct.bnx2x* %172)
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.rate_shaping_vars_per_vn, %struct.rate_shaping_vars_per_vn* %19, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = getelementptr inbounds %struct.rate_shaping_vars_per_vn, %struct.rate_shaping_vars_per_vn* %19, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @RS_PERIODIC_TIMEOUT_USEC, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sdiv i32 %182, 8
  %184 = getelementptr inbounds %struct.rate_shaping_vars_per_vn, %struct.rate_shaping_vars_per_vn* %19, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %187 = load i32, i32* %21, align 4
  %188 = load i64, i64* %20, align 8
  %189 = bitcast %struct.rate_shaping_vars_per_vn* %19 to i32*
  %190 = call i32 @__storm_memset_struct(%struct.bnx2x* %186, i32 %187, i64 %188, i32* %189)
  %191 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_mf_config, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @MF_CFG_RD(%struct.bnx2x* %191, i32 %197)
  %199 = load i32, i32* @FUNC_MF_CFG_E1HOV_TAG_MASK, align 4
  %200 = and i32 %198, %199
  %201 = load i32, i32* @FUNC_MF_CFG_E1HOV_TAG_SHIFT, align 4
  %202 = ashr i32 %200, %201
  store i32 %202, i32* %10, align 4
  %203 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_mf_config, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @MF_CFG_RD(%struct.bnx2x* %203, i32 %209)
  %211 = load i32, i32* @FUNC_MF_CFG_AFEX_VLAN_MASK, align 4
  %212 = and i32 %210, %211
  %213 = load i32, i32* @FUNC_MF_CFG_AFEX_VLAN_SHIFT, align 4
  %214 = ashr i32 %212, %213
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @FUNC_MF_CFG_TRANSMIT_PRIORITY_MASK, align 4
  %217 = and i32 %215, %216
  %218 = load i32, i32* @FUNC_MF_CFG_TRANSMIT_PRIORITY_SHIFT, align 4
  %219 = ashr i32 %217, %218
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %222 = shl i32 %220, %221
  %223 = load i32, i32* %8, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %8, align 4
  %225 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_mf_config, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @MF_CFG_RD(%struct.bnx2x* %225, i32 %231)
  %233 = load i32, i32* @FUNC_MF_CFG_AFEX_VLAN_MODE_MASK, align 4
  %234 = and i32 %232, %233
  %235 = load i32, i32* @FUNC_MF_CFG_AFEX_VLAN_MODE_SHIFT, align 4
  %236 = ashr i32 %234, %235
  store i32 %236, i32* %12, align 4
  %237 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_mf_config, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @MF_CFG_RD(%struct.bnx2x* %237, i32 %243)
  %245 = load i32, i32* @FUNC_MF_CFG_AFEX_COS_FILTER_MASK, align 4
  %246 = and i32 %244, %245
  %247 = load i32, i32* @FUNC_MF_CFG_AFEX_COS_FILTER_SHIFT, align 4
  %248 = ashr i32 %246, %247
  store i32 %248, i32* %11, align 4
  %249 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %11, align 4
  %253 = call i64 @bnx2x_afex_func_update(%struct.bnx2x* %249, i32 %250, i32 %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %153
  br label %271

256:                                              ; preds = %153
  %257 = load i32, i32* %8, align 4
  %258 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %259 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 8
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %262 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 4
  br label %270

263:                                              ; preds = %130
  %264 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %265 = call i32 @bnx2x_link_report(%struct.bnx2x* %264)
  %266 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %267 = call i64 @bnx2x_afex_func_update(%struct.bnx2x* %266, i32 65535, i32 0, i32 0)
  %268 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %269 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %268, i32 0, i32 1
  store i32 -1, i32* %269, align 8
  br label %270

270:                                              ; preds = %263, %256
  br label %271

271:                                              ; preds = %255, %270, %125
  ret void
}

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM2_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @bnx2x_afex_handle_vif_list_cmd(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_afex_collect_stats(%struct.bnx2x*, i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @XSTORM_RATE_SHAPING_PER_VN_VARS_OFFSET(i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_calc_vn_max(%struct.bnx2x*, i64, %struct.cmng_init_input*) #1

declare dso_local i32 @__storm_memset_struct(%struct.bnx2x*, i32, i64, i32*) #1

declare dso_local i64 @bnx2x_afex_func_update(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_link_report(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
