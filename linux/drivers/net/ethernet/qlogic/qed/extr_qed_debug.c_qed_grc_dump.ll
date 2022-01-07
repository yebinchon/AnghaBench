; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, i64, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"grc-dump\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"num-lcids\00", align 1
@DBG_GRC_PARAM_NUM_LCIDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"num-ltids\00", align 1
@DBG_GRC_PARAM_NUM_LTIDS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"num-ports\00", align 1
@DBG_GRC_PARAM_DUMP_REGS = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_NO_MCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to mask parities using MFW\0A\00", align 1
@DBG_GRC_PARAM_PARITY_SAFE = common dso_local global i32 0, align 4
@DBG_STATUS_MCP_COULD_NOT_MASK_PRTY = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_IOR = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_VFC = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i32 0, align 4
@BLOCK_MCP = common dso_local global i64 0, align 8
@DBG_GRC_PARAM_DUMP_MCP = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_CM_CTX = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_RSS = common dso_local global i32 0, align 4
@NUM_BIG_RAM_TYPES = common dso_local global i32 0, align 4
@s_big_ram_defs = common dso_local global %struct.TYPE_4__* null, align 8
@DBG_GRC_PARAM_DUMP_PHY = common dso_local global i32 0, align 4
@CHIP_K2 = common dso_local global i64 0, align 8
@PLATFORM_ASIC = common dso_local global i64 0, align 8
@DBG_GRC_PARAM_DUMP_STATIC = common dso_local global i32 0, align 4
@DBG_BUS_STATE_IDLE = common dso_local global i64 0, align 8
@DBG_GRC_PARAM_UNSTALL = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32*)* @qed_grc_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_grc_dump(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dbg_tools_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 0
  store %struct.dbg_tools_data* %19, %struct.dbg_tools_data** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %22 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %28 = call i32 @qed_update_blocks_reset_state(%struct.qed_hwfn* %26, %struct.qed_ptt* %27)
  br label %29

29:                                               ; preds = %25, %5
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @qed_dump_common_global_params(%struct.qed_hwfn* %30, %struct.qed_ptt* %31, i32* %35, i32 %36, i32 4)
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %14, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @qed_dump_str_param(i32* %43, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %54 = load i32, i32* @DBG_GRC_PARAM_NUM_LCIDS, align 4
  %55 = call i64 @qed_grc_get_param(%struct.qed_hwfn* %53, i32 %54)
  %56 = call i32 @qed_dump_num_param(i32* %51, i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %14, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %65 = load i32, i32* @DBG_GRC_PARAM_NUM_LTIDS, align 4
  %66 = call i64 @qed_grc_get_param(%struct.qed_hwfn* %64, i32 %65)
  %67 = call i32 @qed_dump_num_param(i32* %62, i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %14, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %76 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @qed_dump_num_param(i32* %73, i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %14, align 4
  %81 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %82 = load i32, i32* @DBG_GRC_PARAM_DUMP_REGS, align 4
  %83 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %29
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %87 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @qed_grc_dump_reset_regs(%struct.qed_hwfn* %86, %struct.qed_ptt* %87, i32* %91, i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %85, %29
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %101 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %102 = call i32 @qed_grc_unreset_blocks(%struct.qed_hwfn* %100, %struct.qed_ptt* %101)
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %104 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %105 = call i32 @qed_update_blocks_reset_state(%struct.qed_hwfn* %103, %struct.qed_ptt* %104)
  br label %106

106:                                              ; preds = %99, %96
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %106
  %110 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %111 = load i32, i32* @DBG_GRC_PARAM_NO_MCP, align 4
  %112 = call i64 @qed_grc_get_param(%struct.qed_hwfn* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %134, label %114

114:                                              ; preds = %109
  %115 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %116 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %117 = call i32 @qed_mcp_mask_parities(%struct.qed_hwfn* %115, %struct.qed_ptt* %116, i32 1)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %114
  %124 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %125 = call i32 @DP_NOTICE(%struct.qed_hwfn* %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %127 = load i32, i32* @DBG_GRC_PARAM_PARITY_SAFE, align 4
  %128 = call i64 @qed_grc_get_param(%struct.qed_hwfn* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @DBG_STATUS_MCP_COULD_NOT_MASK_PRTY, align 4
  store i32 %131, i32* %6, align 4
  br label %420

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %114
  br label %134

134:                                              ; preds = %133, %109, %106
  %135 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %136 = load i32, i32* @DBG_GRC_PARAM_DUMP_REGS, align 4
  %137 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %141 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @qed_grc_dump_modified_regs(%struct.qed_hwfn* %140, %struct.qed_ptt* %141, i32* %145, i32 %146)
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %139, %134
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %155 = load i32, i32* @DBG_GRC_PARAM_DUMP_IOR, align 4
  %156 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %160 = load i32, i32* @DBG_GRC_PARAM_DUMP_VFC, align 4
  %161 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158, %153
  %164 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %165 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %166 = call i32 @qed_grc_stall_storms(%struct.qed_hwfn* %164, %struct.qed_ptt* %165, i32 1)
  br label %167

167:                                              ; preds = %163, %158, %150
  %168 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %169 = load i32, i32* @DBG_GRC_PARAM_DUMP_REGS, align 4
  %170 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %212

172:                                              ; preds = %167
  %173 = load i32, i32* @MAX_BLOCK_ID, align 4
  %174 = zext i32 %173 to i64
  %175 = call i8* @llvm.stacksave()
  store i8* %175, i8** %16, align 8
  %176 = alloca i32, i64 %174, align 16
  store i64 %174, i64* %17, align 8
  store i32 0, i32* %15, align 4
  br label %177

177:                                              ; preds = %185, %172
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @MAX_BLOCK_ID, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %176, i64 %183
  store i32 1, i32* %184, align 4
  br label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %177

188:                                              ; preds = %177
  %189 = load i64, i64* @BLOCK_MCP, align 8
  %190 = getelementptr inbounds i32, i32* %176, i64 %189
  store i32 0, i32* %190, align 4
  %191 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %192 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %193 = load i32*, i32** %9, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @qed_grc_dump_registers(%struct.qed_hwfn* %191, %struct.qed_ptt* %192, i32* %196, i32 %197, i32* %176, i32* null, i32* null)
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %14, align 4
  %201 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %202 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @qed_grc_dump_special_regs(%struct.qed_hwfn* %201, %struct.qed_ptt* %202, i32* %206, i32 %207)
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %14, align 4
  %211 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %211)
  br label %212

212:                                              ; preds = %188, %167
  %213 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %214 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @qed_grc_dump_memories(%struct.qed_hwfn* %213, %struct.qed_ptt* %214, i32* %218, i32 %219)
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %14, align 4
  %223 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %224 = load i32, i32* @DBG_GRC_PARAM_DUMP_MCP, align 4
  %225 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %212
  %228 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %229 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @qed_grc_dump_mcp(%struct.qed_hwfn* %228, %struct.qed_ptt* %229, i32* %233, i32 %234)
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %227, %212
  %239 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %240 = load i32, i32* @DBG_GRC_PARAM_DUMP_CM_CTX, align 4
  %241 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %239, i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %238
  %244 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %245 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %246 = load i32*, i32** %9, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @qed_grc_dump_ctx(%struct.qed_hwfn* %244, %struct.qed_ptt* %245, i32* %249, i32 %250)
  %252 = load i32, i32* %14, align 4
  %253 = add nsw i32 %252, %251
  store i32 %253, i32* %14, align 4
  br label %254

254:                                              ; preds = %243, %238
  %255 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %256 = load i32, i32* @DBG_GRC_PARAM_DUMP_RSS, align 4
  %257 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %255, i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %254
  %260 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %261 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %262 = load i32*, i32** %9, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @qed_grc_dump_rss(%struct.qed_hwfn* %260, %struct.qed_ptt* %261, i32* %265, i32 %266)
  %268 = load i32, i32* %14, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %14, align 4
  br label %270

270:                                              ; preds = %259, %254
  store i32 0, i32* %15, align 4
  br label %271

271:                                              ; preds = %298, %270
  %272 = load i32, i32* %15, align 4
  %273 = load i32, i32* @NUM_BIG_RAM_TYPES, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %301

275:                                              ; preds = %271
  %276 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_big_ram_defs, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %276, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %275
  %286 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %287 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %288 = load i32*, i32** %9, align 8
  %289 = load i32, i32* %14, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* %15, align 4
  %294 = call i32 @qed_grc_dump_big_ram(%struct.qed_hwfn* %286, %struct.qed_ptt* %287, i32* %291, i32 %292, i32 %293)
  %295 = load i32, i32* %14, align 4
  %296 = add nsw i32 %295, %294
  store i32 %296, i32* %14, align 4
  br label %297

297:                                              ; preds = %285, %275
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %15, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %15, align 4
  br label %271

301:                                              ; preds = %271
  %302 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %303 = load i32, i32* @DBG_GRC_PARAM_DUMP_IOR, align 4
  %304 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %302, i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %317

306:                                              ; preds = %301
  %307 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %308 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %309 = load i32*, i32** %9, align 8
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %10, align 4
  %314 = call i32 @qed_grc_dump_iors(%struct.qed_hwfn* %307, %struct.qed_ptt* %308, i32* %312, i32 %313)
  %315 = load i32, i32* %14, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %14, align 4
  br label %317

317:                                              ; preds = %306, %301
  %318 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %319 = load i32, i32* @DBG_GRC_PARAM_DUMP_VFC, align 4
  %320 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %318, i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %333

322:                                              ; preds = %317
  %323 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %324 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %325 = load i32*, i32** %9, align 8
  %326 = load i32, i32* %14, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %10, align 4
  %330 = call i32 @qed_grc_dump_vfc(%struct.qed_hwfn* %323, %struct.qed_ptt* %324, i32* %328, i32 %329)
  %331 = load i32, i32* %14, align 4
  %332 = add nsw i32 %331, %330
  store i32 %332, i32* %14, align 4
  br label %333

333:                                              ; preds = %322, %317
  %334 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %335 = load i32, i32* @DBG_GRC_PARAM_DUMP_PHY, align 4
  %336 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %334, i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %361

338:                                              ; preds = %333
  %339 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %340 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @CHIP_K2, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %361

344:                                              ; preds = %338
  %345 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %346 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @PLATFORM_ASIC, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %344
  %351 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %352 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %353 = load i32*, i32** %9, align 8
  %354 = load i32, i32* %14, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = load i32, i32* %10, align 4
  %358 = call i32 @qed_grc_dump_phy(%struct.qed_hwfn* %351, %struct.qed_ptt* %352, i32* %356, i32 %357)
  %359 = load i32, i32* %14, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* %14, align 4
  br label %361

361:                                              ; preds = %350, %344, %338, %333
  %362 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %363 = load i32, i32* @DBG_GRC_PARAM_DUMP_STATIC, align 4
  %364 = call i64 @qed_grc_is_included(%struct.qed_hwfn* %362, i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %387

366:                                              ; preds = %361
  %367 = load i32, i32* %10, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %366
  %370 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %371 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @DBG_BUS_STATE_IDLE, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %387

376:                                              ; preds = %369, %366
  %377 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %378 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %379 = load i32*, i32** %9, align 8
  %380 = load i32, i32* %14, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %10, align 4
  %384 = call i32 @qed_grc_dump_static_debug(%struct.qed_hwfn* %377, %struct.qed_ptt* %378, i32* %382, i32 %383)
  %385 = load i32, i32* %14, align 4
  %386 = add nsw i32 %385, %384
  store i32 %386, i32* %14, align 4
  br label %387

387:                                              ; preds = %376, %369, %361
  %388 = load i32*, i32** %9, align 8
  %389 = load i32, i32* %14, align 4
  %390 = load i32, i32* %10, align 4
  %391 = call i32 @qed_dump_last_section(i32* %388, i32 %389, i32 %390)
  %392 = load i32, i32* %14, align 4
  %393 = add nsw i32 %392, %391
  store i32 %393, i32* %14, align 4
  %394 = load i32, i32* %10, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %416

396:                                              ; preds = %387
  %397 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %398 = load i32, i32* @DBG_GRC_PARAM_UNSTALL, align 4
  %399 = call i64 @qed_grc_get_param(%struct.qed_hwfn* %397, i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %396
  %402 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %403 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %404 = call i32 @qed_grc_stall_storms(%struct.qed_hwfn* %402, %struct.qed_ptt* %403, i32 0)
  br label %405

405:                                              ; preds = %401, %396
  %406 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %407 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %408 = call i32 @qed_grc_clear_all_prty(%struct.qed_hwfn* %406, %struct.qed_ptt* %407)
  %409 = load i32, i32* %13, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %405
  %412 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %413 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %414 = call i32 @qed_mcp_mask_parities(%struct.qed_hwfn* %412, %struct.qed_ptt* %413, i32 0)
  br label %415

415:                                              ; preds = %411, %405
  br label %416

416:                                              ; preds = %415, %387
  %417 = load i32, i32* %14, align 4
  %418 = load i32*, i32** %11, align 8
  store i32 %417, i32* %418, align 4
  %419 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %419, i32* %6, align 4
  br label %420

420:                                              ; preds = %416, %130
  %421 = load i32, i32* %6, align 4
  ret i32 %421
}

declare dso_local i32 @qed_update_blocks_reset_state(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_dump_common_global_params(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32) #1

declare dso_local i32 @qed_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @qed_dump_num_param(i32*, i32, i8*, i64) #1

declare dso_local i64 @qed_grc_get_param(%struct.qed_hwfn*, i32) #1

declare dso_local i64 @qed_grc_is_included(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_grc_dump_reset_regs(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_grc_unreset_blocks(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_mcp_mask_parities(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_grc_dump_modified_regs(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_grc_stall_storms(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @qed_grc_dump_registers(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @qed_grc_dump_special_regs(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @qed_grc_dump_memories(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_grc_dump_mcp(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_grc_dump_ctx(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_grc_dump_rss(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_grc_dump_big_ram(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32) #1

declare dso_local i32 @qed_grc_dump_iors(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_grc_dump_vfc(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_grc_dump_phy(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_grc_dump_static_debug(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_dump_last_section(i32*, i32, i32) #1

declare dso_local i32 @qed_grc_clear_all_prty(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
