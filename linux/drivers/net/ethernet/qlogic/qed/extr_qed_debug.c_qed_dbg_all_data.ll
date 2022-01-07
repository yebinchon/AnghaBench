; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_all_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_all_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.TYPE_3__, %struct.qed_hwfn* }
%struct.TYPE_3__ = type { i64 }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@MAX_DBG_GRC_PARAMS = common dso_local global i32 0, align 4
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"obtaining idle_chk and grcdump for current engine\0A\00", align 1
@REGDUMP_HEADER_SIZE = common dso_local global i32 0, align 4
@IDLE_CHK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"qed_dbg_idle_chk failed. rc = %d\0A\00", align 1
@REG_FIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"qed_dbg_reg_fifo failed. rc = %d\0A\00", align 1
@IGU_FIFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"qed_dbg_igu_fifo failed. rc = %d\00", align 1
@PROTECTION_OVERRIDE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"qed_dbg_protection_override failed. rc = %d\0A\00", align 1
@FW_ASSERTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"qed_dbg_fw_asserts failed. rc = %d\0A\00", align 1
@GRC_DUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"qed_dbg_grc failed. rc = %d\00", align 1
@MCP_TRACE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"qed_dbg_mcp_trace failed. rc = %d\0A\00", align 1
@QED_NVM_IMAGE_NVM_CFG1 = common dso_local global i32 0, align 4
@NVM_CFG1 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"qed_dbg_nvm_image failed for image  %d (%s), rc = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"QED_NVM_IMAGE_NVM_CFG1\00", align 1
@QED_NVM_IMAGE_DEFAULT_CFG = common dso_local global i32 0, align 4
@DEFAULT_CFG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [53 x i8] c"qed_dbg_nvm_image failed for image %d (%s), rc = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"QED_NVM_IMAGE_DEFAULT_CFG\00", align 1
@QED_NVM_IMAGE_NVM_META = common dso_local global i32 0, align 4
@NVM_META = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"QED_NVM_IMAGE_NVM_META\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dbg_all_data(%struct.qed_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.dbg_tools_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %6, align 8
  %16 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %16, i32 0, i32 2
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %17, align 8
  %19 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %20 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i64 %22
  store %struct.qed_hwfn* %23, %struct.qed_hwfn** %8, align 8
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  store %struct.dbg_tools_data* %25, %struct.dbg_tools_data** %9, align 8
  %26 = load i32, i32* @MAX_DBG_GRC_PARAMS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %46, %2
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @MAX_DBG_GRC_PARAMS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %36 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %29, i64 %44
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %51 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i64 1, i64* %6, align 8
  br label %55

55:                                               ; preds = %54, %49
  %56 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %57 = call i64 @qed_get_debug_engine(%struct.qed_dev* %56)
  store i64 %57, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %58

58:                                               ; preds = %330, %55
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %61 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %59, %63
  br i1 %64, label %65, label %333

65:                                               ; preds = %58
  %66 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %67 = load i32, i32* @QED_MSG_DEBUG, align 4
  %68 = call i32 @DP_VERBOSE(%struct.qed_dev* %66, i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @qed_set_debug_engine(%struct.qed_dev* %69, i64 %70)
  %72 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = bitcast i8* %73 to i64*
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = call i32 @qed_dbg_idle_chk(%struct.qed_dev* %72, i64* %80, i32* %14)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %65
  %85 = load i32, i32* @IDLE_CHK, align 4
  %86 = load i64, i64* %5, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @qed_calc_regdump_header(i32 %85, i64 %86, i32 %87, i64 %88)
  %90 = load i8*, i8** %4, align 8
  %91 = bitcast i8* %90 to i64*
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = bitcast i64* %94 to i32*
  store i32 %89, i32* %95, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %105

101:                                              ; preds = %65
  %102 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %84
  %106 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = bitcast i8* %107 to i64*
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = call i32 @qed_dbg_idle_chk(%struct.qed_dev* %106, i64* %114, i32* %14)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %135, label %118

118:                                              ; preds = %105
  %119 = load i32, i32* @IDLE_CHK, align 4
  %120 = load i64, i64* %5, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @qed_calc_regdump_header(i32 %119, i64 %120, i32 %121, i64 %122)
  %124 = load i8*, i8** %4, align 8
  %125 = bitcast i8* %124 to i64*
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = bitcast i64* %128 to i32*
  store i32 %123, i32* %129, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %13, align 4
  br label %139

135:                                              ; preds = %105
  %136 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %135, %118
  %140 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = bitcast i8* %141 to i64*
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = call i32 @qed_dbg_reg_fifo(%struct.qed_dev* %140, i64* %148, i32* %14)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %169, label %152

152:                                              ; preds = %139
  %153 = load i32, i32* @REG_FIFO, align 4
  %154 = load i64, i64* %5, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @qed_calc_regdump_header(i32 %153, i64 %154, i32 %155, i64 %156)
  %158 = load i8*, i8** %4, align 8
  %159 = bitcast i8* %158 to i64*
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = bitcast i64* %162 to i32*
  store i32 %157, i32* %163, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %13, align 4
  br label %173

169:                                              ; preds = %139
  %170 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %171 = load i32, i32* %15, align 4
  %172 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %169, %152
  %174 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = bitcast i8* %175 to i64*
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = call i32 @qed_dbg_igu_fifo(%struct.qed_dev* %174, i64* %182, i32* %14)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %203, label %186

186:                                              ; preds = %173
  %187 = load i32, i32* @IGU_FIFO, align 4
  %188 = load i64, i64* %5, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i64, i64* %6, align 8
  %191 = call i32 @qed_calc_regdump_header(i32 %187, i64 %188, i32 %189, i64 %190)
  %192 = load i8*, i8** %4, align 8
  %193 = bitcast i8* %192 to i64*
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = bitcast i64* %196 to i32*
  store i32 %191, i32* %197, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %13, align 4
  br label %207

203:                                              ; preds = %173
  %204 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %205 = load i32, i32* %15, align 4
  %206 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %204, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %203, %186
  %208 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %209 = load i8*, i8** %4, align 8
  %210 = bitcast i8* %209 to i64*
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = call i32 @qed_dbg_protection_override(%struct.qed_dev* %208, i64* %216, i32* %14)
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %237, label %220

220:                                              ; preds = %207
  %221 = load i32, i32* @PROTECTION_OVERRIDE, align 4
  %222 = load i64, i64* %5, align 8
  %223 = load i32, i32* %14, align 4
  %224 = load i64, i64* %6, align 8
  %225 = call i32 @qed_calc_regdump_header(i32 %221, i64 %222, i32 %223, i64 %224)
  %226 = load i8*, i8** %4, align 8
  %227 = bitcast i8* %226 to i64*
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  %231 = bitcast i64* %230 to i32*
  store i32 %225, i32* %231, align 4
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %234 = add nsw i32 %232, %233
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %13, align 4
  br label %241

237:                                              ; preds = %207
  %238 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %239 = load i32, i32* %15, align 4
  %240 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %238, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %237, %220
  %242 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %243 = load i8*, i8** %4, align 8
  %244 = bitcast i8* %243 to i64*
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = call i32 @qed_dbg_fw_asserts(%struct.qed_dev* %242, i64* %250, i32* %14)
  store i32 %251, i32* %15, align 4
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %271, label %254

254:                                              ; preds = %241
  %255 = load i32, i32* @FW_ASSERTS, align 4
  %256 = load i64, i64* %5, align 8
  %257 = load i32, i32* %14, align 4
  %258 = load i64, i64* %6, align 8
  %259 = call i32 @qed_calc_regdump_header(i32 %255, i64 %256, i32 %257, i64 %258)
  %260 = load i8*, i8** %4, align 8
  %261 = bitcast i8* %260 to i64*
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  %265 = bitcast i64* %264 to i32*
  store i32 %259, i32* %265, align 4
  %266 = load i32, i32* %14, align 4
  %267 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %268 = add nsw i32 %266, %267
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %13, align 4
  br label %275

271:                                              ; preds = %241
  %272 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %273 = load i32, i32* %15, align 4
  %274 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %272, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %273)
  br label %275

275:                                              ; preds = %271, %254
  store i32 0, i32* %12, align 4
  br label %276

276:                                              ; preds = %292, %275
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* @MAX_DBG_GRC_PARAMS, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %295

280:                                              ; preds = %276
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %29, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %286 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  store i32 %284, i32* %291, align 4
  br label %292

292:                                              ; preds = %280
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %12, align 4
  br label %276

295:                                              ; preds = %276
  %296 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %297 = load i8*, i8** %4, align 8
  %298 = bitcast i8* %297 to i64*
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = call i32 @qed_dbg_grc(%struct.qed_dev* %296, i64* %304, i32* %14)
  store i32 %305, i32* %15, align 4
  %306 = load i32, i32* %15, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %325, label %308

308:                                              ; preds = %295
  %309 = load i32, i32* @GRC_DUMP, align 4
  %310 = load i64, i64* %5, align 8
  %311 = load i32, i32* %14, align 4
  %312 = load i64, i64* %6, align 8
  %313 = call i32 @qed_calc_regdump_header(i32 %309, i64 %310, i32 %311, i64 %312)
  %314 = load i8*, i8** %4, align 8
  %315 = bitcast i8* %314 to i64*
  %316 = load i32, i32* %13, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %315, i64 %317
  %319 = bitcast i64* %318 to i32*
  store i32 %313, i32* %319, align 4
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %322 = add nsw i32 %320, %321
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %13, align 4
  br label %329

325:                                              ; preds = %295
  %326 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %327 = load i32, i32* %15, align 4
  %328 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %326, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %327)
  br label %329

329:                                              ; preds = %325, %308
  br label %330

330:                                              ; preds = %329
  %331 = load i64, i64* %5, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* %5, align 8
  br label %58

333:                                              ; preds = %58
  %334 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %335 = load i64, i64* %7, align 8
  %336 = call i32 @qed_set_debug_engine(%struct.qed_dev* %334, i64 %335)
  %337 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %338 = load i8*, i8** %4, align 8
  %339 = bitcast i8* %338 to i64*
  %340 = load i32, i32* %13, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, i64* %339, i64 %341
  %343 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %342, i64 %344
  %346 = call i32 @qed_dbg_mcp_trace(%struct.qed_dev* %337, i64* %345, i32* %14)
  store i32 %346, i32* %15, align 4
  %347 = load i32, i32* %15, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %366, label %349

349:                                              ; preds = %333
  %350 = load i32, i32* @MCP_TRACE, align 4
  %351 = load i64, i64* %5, align 8
  %352 = load i32, i32* %14, align 4
  %353 = load i64, i64* %6, align 8
  %354 = call i32 @qed_calc_regdump_header(i32 %350, i64 %351, i32 %352, i64 %353)
  %355 = load i8*, i8** %4, align 8
  %356 = bitcast i8* %355 to i64*
  %357 = load i32, i32* %13, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %356, i64 %358
  %360 = bitcast i64* %359 to i32*
  store i32 %354, i32* %360, align 4
  %361 = load i32, i32* %14, align 4
  %362 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %363 = add nsw i32 %361, %362
  %364 = load i32, i32* %13, align 4
  %365 = add nsw i32 %364, %363
  store i32 %365, i32* %13, align 4
  br label %370

366:                                              ; preds = %333
  %367 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %368 = load i32, i32* %15, align 4
  %369 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %367, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %368)
  br label %370

370:                                              ; preds = %366, %349
  %371 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %372 = load i8*, i8** %4, align 8
  %373 = bitcast i8* %372 to i64*
  %374 = load i32, i32* %13, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %373, i64 %375
  %377 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i64, i64* %376, i64 %378
  %380 = load i32, i32* @QED_NVM_IMAGE_NVM_CFG1, align 4
  %381 = call i32 @qed_dbg_nvm_image(%struct.qed_dev* %371, i64* %379, i32* %14, i32 %380)
  store i32 %381, i32* %15, align 4
  %382 = load i32, i32* %15, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %401, label %384

384:                                              ; preds = %370
  %385 = load i32, i32* @NVM_CFG1, align 4
  %386 = load i64, i64* %5, align 8
  %387 = load i32, i32* %14, align 4
  %388 = load i64, i64* %6, align 8
  %389 = call i32 @qed_calc_regdump_header(i32 %385, i64 %386, i32 %387, i64 %388)
  %390 = load i8*, i8** %4, align 8
  %391 = bitcast i8* %390 to i64*
  %392 = load i32, i32* %13, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i64, i64* %391, i64 %393
  %395 = bitcast i64* %394 to i32*
  store i32 %389, i32* %395, align 4
  %396 = load i32, i32* %14, align 4
  %397 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %398 = add nsw i32 %396, %397
  %399 = load i32, i32* %13, align 4
  %400 = add nsw i32 %399, %398
  store i32 %400, i32* %13, align 4
  br label %412

401:                                              ; preds = %370
  %402 = load i32, i32* %15, align 4
  %403 = load i32, i32* @ENOENT, align 4
  %404 = sub nsw i32 0, %403
  %405 = icmp ne i32 %402, %404
  br i1 %405, label %406, label %411

406:                                              ; preds = %401
  %407 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %408 = load i32, i32* @QED_NVM_IMAGE_NVM_CFG1, align 4
  %409 = load i32, i32* %15, align 4
  %410 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %407, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %409)
  br label %411

411:                                              ; preds = %406, %401
  br label %412

412:                                              ; preds = %411, %384
  %413 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %414 = load i8*, i8** %4, align 8
  %415 = bitcast i8* %414 to i64*
  %416 = load i32, i32* %13, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i64, i64* %415, i64 %417
  %419 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i64, i64* %418, i64 %420
  %422 = load i32, i32* @QED_NVM_IMAGE_DEFAULT_CFG, align 4
  %423 = call i32 @qed_dbg_nvm_image(%struct.qed_dev* %413, i64* %421, i32* %14, i32 %422)
  store i32 %423, i32* %15, align 4
  %424 = load i32, i32* %15, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %443, label %426

426:                                              ; preds = %412
  %427 = load i32, i32* @DEFAULT_CFG, align 4
  %428 = load i64, i64* %5, align 8
  %429 = load i32, i32* %14, align 4
  %430 = load i64, i64* %6, align 8
  %431 = call i32 @qed_calc_regdump_header(i32 %427, i64 %428, i32 %429, i64 %430)
  %432 = load i8*, i8** %4, align 8
  %433 = bitcast i8* %432 to i64*
  %434 = load i32, i32* %13, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i64, i64* %433, i64 %435
  %437 = bitcast i64* %436 to i32*
  store i32 %431, i32* %437, align 4
  %438 = load i32, i32* %14, align 4
  %439 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %440 = add nsw i32 %438, %439
  %441 = load i32, i32* %13, align 4
  %442 = add nsw i32 %441, %440
  store i32 %442, i32* %13, align 4
  br label %454

443:                                              ; preds = %412
  %444 = load i32, i32* %15, align 4
  %445 = load i32, i32* @ENOENT, align 4
  %446 = sub nsw i32 0, %445
  %447 = icmp ne i32 %444, %446
  br i1 %447, label %448, label %453

448:                                              ; preds = %443
  %449 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %450 = load i32, i32* @QED_NVM_IMAGE_DEFAULT_CFG, align 4
  %451 = load i32, i32* %15, align 4
  %452 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %449, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %450, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %451)
  br label %453

453:                                              ; preds = %448, %443
  br label %454

454:                                              ; preds = %453, %426
  %455 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %456 = load i8*, i8** %4, align 8
  %457 = bitcast i8* %456 to i64*
  %458 = load i32, i32* %13, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i64, i64* %457, i64 %459
  %461 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i64, i64* %460, i64 %462
  %464 = load i32, i32* @QED_NVM_IMAGE_NVM_META, align 4
  %465 = call i32 @qed_dbg_nvm_image(%struct.qed_dev* %455, i64* %463, i32* %14, i32 %464)
  store i32 %465, i32* %15, align 4
  %466 = load i32, i32* %15, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %485, label %468

468:                                              ; preds = %454
  %469 = load i32, i32* @NVM_META, align 4
  %470 = load i64, i64* %5, align 8
  %471 = load i32, i32* %14, align 4
  %472 = load i64, i64* %6, align 8
  %473 = call i32 @qed_calc_regdump_header(i32 %469, i64 %470, i32 %471, i64 %472)
  %474 = load i8*, i8** %4, align 8
  %475 = bitcast i8* %474 to i64*
  %476 = load i32, i32* %13, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i64, i64* %475, i64 %477
  %479 = bitcast i64* %478 to i32*
  store i32 %473, i32* %479, align 4
  %480 = load i32, i32* %14, align 4
  %481 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %482 = add nsw i32 %480, %481
  %483 = load i32, i32* %13, align 4
  %484 = add nsw i32 %483, %482
  store i32 %484, i32* %13, align 4
  br label %496

485:                                              ; preds = %454
  %486 = load i32, i32* %15, align 4
  %487 = load i32, i32* @ENOENT, align 4
  %488 = sub nsw i32 0, %487
  %489 = icmp ne i32 %486, %488
  br i1 %489, label %490, label %495

490:                                              ; preds = %485
  %491 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %492 = load i32, i32* @QED_NVM_IMAGE_NVM_META, align 4
  %493 = load i32, i32* %15, align 4
  %494 = call i32 (%struct.qed_dev*, i8*, i32, ...) @DP_ERR(%struct.qed_dev* %491, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %492, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %493)
  br label %495

495:                                              ; preds = %490, %485
  br label %496

496:                                              ; preds = %495, %468
  %497 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %497)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @qed_get_debug_engine(%struct.qed_dev*) #2

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*) #2

declare dso_local i32 @qed_set_debug_engine(%struct.qed_dev*, i64) #2

declare dso_local i32 @qed_dbg_idle_chk(%struct.qed_dev*, i64*, i32*) #2

declare dso_local i32 @qed_calc_regdump_header(i32, i64, i32, i64) #2

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*, i32, ...) #2

declare dso_local i32 @qed_dbg_reg_fifo(%struct.qed_dev*, i64*, i32*) #2

declare dso_local i32 @qed_dbg_igu_fifo(%struct.qed_dev*, i64*, i32*) #2

declare dso_local i32 @qed_dbg_protection_override(%struct.qed_dev*, i64*, i32*) #2

declare dso_local i32 @qed_dbg_fw_asserts(%struct.qed_dev*, i64*, i32*) #2

declare dso_local i32 @qed_dbg_grc(%struct.qed_dev*, i64*, i32*) #2

declare dso_local i32 @qed_dbg_mcp_trace(%struct.qed_dev*, i64*, i32*) #2

declare dso_local i32 @qed_dbg_nvm_image(%struct.qed_dev*, i64*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
