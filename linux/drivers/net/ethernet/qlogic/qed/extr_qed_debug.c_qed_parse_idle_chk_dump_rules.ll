; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_idle_chk_dump_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_idle_chk_dump_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.dbg_idle_chk_rule_parsing_data = type { i32 }
%struct.dbg_idle_chk_result_hdr = type { i64, i64, i64, i64, i32 }
%struct.dbg_idle_chk_result_reg_hdr = type { i32, i64, i32 }

@s_user_dbg_arrays = common dso_local global %struct.TYPE_2__* null, align 8
@BIN_BUF_DBG_IDLE_CHK_PARSING_DATA = common dso_local global i64 0, align 8
@DBG_IDLE_CHK_RULE_PARSING_DATA_STR_OFFSET = common dso_local global i32 0, align 4
@DBG_IDLE_CHK_RULE_PARSING_DATA_HAS_FW_MSG = common dso_local global i32 0, align 4
@BIN_BUF_DBG_PARSING_STRINGS = common dso_local global i64 0, align 8
@MAX_DBG_IDLE_CHK_SEVERITY_TYPES = common dso_local global i64 0, align 8
@IDLE_CHK_SEVERITY_ERROR = common dso_local global i64 0, align 8
@IDLE_CHK_SEVERITY_ERROR_NO_TRAFFIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@s_idle_chk_severity_str = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" Registers:\00", align 1
@DBG_IDLE_CHK_RESULT_REG_HDR_IS_MEM = common dso_local global i32 0, align 4
@DBG_IDLE_CHK_RESULT_REG_HDR_REG_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i64, i32, i8*, i64*, i64*)* @qed_parse_idle_chk_dump_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_parse_idle_chk_dump_rules(i64* %0, i64* %1, i64 %2, i32 %3, i8* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.dbg_idle_chk_rule_parsing_data*, align 8
  %21 = alloca %struct.dbg_idle_chk_result_hdr*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca %struct.dbg_idle_chk_result_reg_hdr*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64 0, i64* %16, align 8
  %30 = load i64*, i64** %14, align 8
  store i64 0, i64* %30, align 8
  %31 = load i64*, i64** %15, align 8
  store i64 0, i64* %31, align 8
  store i64 0, i64* %17, align 8
  br label %32

32:                                               ; preds = %280, %7
  %33 = load i64, i64* %17, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64*, i64** %9, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = icmp ult i64* %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %283

42:                                               ; preds = %40
  %43 = load i64*, i64** %9, align 8
  %44 = bitcast i64* %43 to %struct.dbg_idle_chk_result_hdr*
  store %struct.dbg_idle_chk_result_hdr* %44, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_user_dbg_arrays, align 8
  %46 = load i64, i64* @BIN_BUF_DBG_IDLE_CHK_PARSING_DATA, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %51 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = bitcast i32* %53 to %struct.dbg_idle_chk_rule_parsing_data*
  store %struct.dbg_idle_chk_rule_parsing_data* %54, %struct.dbg_idle_chk_rule_parsing_data** %20, align 8
  %55 = load %struct.dbg_idle_chk_rule_parsing_data*, %struct.dbg_idle_chk_rule_parsing_data** %20, align 8
  %56 = getelementptr inbounds %struct.dbg_idle_chk_rule_parsing_data, %struct.dbg_idle_chk_rule_parsing_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DBG_IDLE_CHK_RULE_PARSING_DATA_STR_OFFSET, align 4
  %59 = call i8* @GET_FIELD(i32 %57, i32 %58)
  %60 = ptrtoint i8* %59 to i64
  store i64 %60, i64* %24, align 8
  %61 = load %struct.dbg_idle_chk_rule_parsing_data*, %struct.dbg_idle_chk_rule_parsing_data** %20, align 8
  %62 = getelementptr inbounds %struct.dbg_idle_chk_rule_parsing_data, %struct.dbg_idle_chk_rule_parsing_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DBG_IDLE_CHK_RULE_PARSING_DATA_HAS_FW_MSG, align 4
  %65 = call i8* @GET_FIELD(i32 %63, i32 %64)
  %66 = icmp ugt i8* %65, null
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %25, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_user_dbg_arrays, align 8
  %69 = load i64, i64* @BIN_BUF_DBG_PARSING_STRINGS, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = load i64, i64* %24, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %22, align 8
  %76 = load i8*, i8** %22, align 8
  store i8* %76, i8** %23, align 8
  store i8* null, i8** %26, align 8
  %77 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %78 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MAX_DBG_IDLE_CHK_SEVERITY_TYPES, align 8
  %81 = icmp uge i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %42
  store i64 0, i64* %8, align 8
  br label %290

83:                                               ; preds = %42
  %84 = call i32 @BYTES_TO_DWORDS(i32 40)
  %85 = load i64*, i64** %9, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64* %87, i64** %9, align 8
  %88 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %89 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IDLE_CHK_SEVERITY_ERROR, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %83
  %94 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %95 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IDLE_CHK_SEVERITY_ERROR_NO_TRAFFIC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93, %83
  %100 = load i64*, i64** %14, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  br label %107

103:                                              ; preds = %93
  %104 = load i64*, i64** %15, align 8
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i8*, i8** %13, align 8
  %109 = load i64, i64* %16, align 8
  %110 = call i32 @qed_get_buf_ptr(i8* %108, i64 %109)
  %111 = load i8**, i8*** @s_idle_chk_severity_str, align 8
  %112 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %113 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 (i32, i8*, ...) @sprintf(i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %116)
  %118 = load i64, i64* %16, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %16, align 8
  %120 = load i32, i32* %25, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %107
  %123 = load i8*, i8** %22, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = add nsw i64 %124, 1
  %126 = load i8*, i8** %22, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8* %127, i8** %22, align 8
  br label %128

128:                                              ; preds = %122, %107
  %129 = load i8*, i8** %13, align 8
  %130 = load i64, i64* %16, align 8
  %131 = call i32 @qed_get_buf_ptr(i8* %129, i64 %130)
  %132 = load i32, i32* %25, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i8*, i8** %22, align 8
  br label %141

139:                                              ; preds = %134, %128
  %140 = load i8*, i8** %23, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i8* [ %138, %137 ], [ %140, %139 ]
  %143 = call i64 (i32, i8*, ...) @sprintf(i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %142)
  %144 = load i64, i64* %16, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %16, align 8
  %146 = load i8*, i8** %22, align 8
  %147 = call i64 @strlen(i8* %146)
  %148 = add nsw i64 %147, 1
  %149 = load i8*, i8** %22, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 %148
  store i8* %150, i8** %22, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i64, i64* %16, align 8
  %153 = call i32 @qed_get_buf_ptr(i8* %151, i64 %152)
  %154 = call i64 (i32, i8*, ...) @sprintf(i32 %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i64, i64* %16, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %16, align 8
  store i64 0, i64* %18, align 8
  br label %157

157:                                              ; preds = %270, %141
  %158 = load i64, i64* %18, align 8
  %159 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %160 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %163 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %161, %164
  %166 = icmp slt i64 %158, %165
  br i1 %166, label %167, label %273

167:                                              ; preds = %157
  %168 = load i64*, i64** %9, align 8
  %169 = bitcast i64* %168 to %struct.dbg_idle_chk_result_reg_hdr*
  store %struct.dbg_idle_chk_result_reg_hdr* %169, %struct.dbg_idle_chk_result_reg_hdr** %27, align 8
  %170 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %27, align 8
  %171 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @DBG_IDLE_CHK_RESULT_REG_HDR_IS_MEM, align 4
  %174 = call i8* @GET_FIELD(i32 %172, i32 %173)
  %175 = ptrtoint i8* %174 to i32
  store i32 %175, i32* %28, align 4
  %176 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %27, align 8
  %177 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @DBG_IDLE_CHK_RESULT_REG_HDR_REG_ID, align 4
  %180 = call i8* @GET_FIELD(i32 %178, i32 %179)
  store i8* %180, i8** %29, align 8
  %181 = call i32 @BYTES_TO_DWORDS(i32 24)
  %182 = load i64*, i64** %9, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  store i64* %184, i64** %9, align 8
  br label %185

185:                                              ; preds = %190, %167
  %186 = load i8*, i8** %29, align 8
  %187 = load i8*, i8** %26, align 8
  %188 = icmp ugt i8* %186, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %189
  %191 = load i8*, i8** %26, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %26, align 8
  %193 = load i8*, i8** %22, align 8
  %194 = call i64 @strlen(i8* %193)
  %195 = add nsw i64 %194, 1
  %196 = load i8*, i8** %22, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 %195
  store i8* %197, i8** %22, align 8
  br label %185

198:                                              ; preds = %185
  %199 = load i8*, i8** %13, align 8
  %200 = load i64, i64* %16, align 8
  %201 = call i32 @qed_get_buf_ptr(i8* %199, i64 %200)
  %202 = load i8*, i8** %22, align 8
  %203 = call i64 (i32, i8*, ...) @sprintf(i32 %201, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %202)
  %204 = load i64, i64* %16, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, i64* %16, align 8
  %206 = load i64, i64* %18, align 8
  %207 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %208 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp slt i64 %206, %209
  br i1 %210, label %211, label %228

211:                                              ; preds = %198
  %212 = load i32, i32* %28, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %228

214:                                              ; preds = %211
  %215 = load i8*, i8** %13, align 8
  %216 = load i64, i64* %16, align 8
  %217 = call i32 @qed_get_buf_ptr(i8* %215, i64 %216)
  %218 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %21, align 8
  %219 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %27, align 8
  %222 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %220, %223
  %225 = call i64 (i32, i8*, ...) @sprintf(i32 %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %224)
  %226 = load i64, i64* %16, align 8
  %227 = add nsw i64 %226, %225
  store i64 %227, i64* %16, align 8
  br label %228

228:                                              ; preds = %214, %211, %198
  %229 = load i8*, i8** %13, align 8
  %230 = load i64, i64* %16, align 8
  %231 = call i32 @qed_get_buf_ptr(i8* %229, i64 %230)
  %232 = call i64 (i32, i8*, ...) @sprintf(i32 %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %233 = load i64, i64* %16, align 8
  %234 = add nsw i64 %233, %232
  store i64 %234, i64* %16, align 8
  store i64 0, i64* %19, align 8
  br label %235

235:                                              ; preds = %264, %228
  %236 = load i64, i64* %19, align 8
  %237 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %27, align 8
  %238 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp slt i64 %236, %239
  br i1 %240, label %241, label %269

241:                                              ; preds = %235
  %242 = load i8*, i8** %13, align 8
  %243 = load i64, i64* %16, align 8
  %244 = call i32 @qed_get_buf_ptr(i8* %242, i64 %243)
  %245 = load i64*, i64** %9, align 8
  %246 = load i64, i64* %245, align 8
  %247 = call i64 (i32, i8*, ...) @sprintf(i32 %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %246)
  %248 = load i64, i64* %16, align 8
  %249 = add nsw i64 %248, %247
  store i64 %249, i64* %16, align 8
  %250 = load i64, i64* %19, align 8
  %251 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %27, align 8
  %252 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %253, 1
  %255 = icmp slt i64 %250, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %241
  %257 = load i8*, i8** %13, align 8
  %258 = load i64, i64* %16, align 8
  %259 = call i32 @qed_get_buf_ptr(i8* %257, i64 %258)
  %260 = call i64 (i32, i8*, ...) @sprintf(i32 %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %261 = load i64, i64* %16, align 8
  %262 = add nsw i64 %261, %260
  store i64 %262, i64* %16, align 8
  br label %263

263:                                              ; preds = %256, %241
  br label %264

264:                                              ; preds = %263
  %265 = load i64, i64* %19, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %19, align 8
  %267 = load i64*, i64** %9, align 8
  %268 = getelementptr inbounds i64, i64* %267, i32 1
  store i64* %268, i64** %9, align 8
  br label %235

269:                                              ; preds = %235
  br label %270

270:                                              ; preds = %269
  %271 = load i64, i64* %18, align 8
  %272 = add nsw i64 %271, 1
  store i64 %272, i64* %18, align 8
  br label %157

273:                                              ; preds = %157
  %274 = load i8*, i8** %13, align 8
  %275 = load i64, i64* %16, align 8
  %276 = call i32 @qed_get_buf_ptr(i8* %274, i64 %275)
  %277 = call i64 (i32, i8*, ...) @sprintf(i32 %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %278 = load i64, i64* %16, align 8
  %279 = add nsw i64 %278, %277
  store i64 %279, i64* %16, align 8
  br label %280

280:                                              ; preds = %273
  %281 = load i64, i64* %17, align 8
  %282 = add nsw i64 %281, 1
  store i64 %282, i64* %17, align 8
  br label %32

283:                                              ; preds = %40
  %284 = load i64*, i64** %9, align 8
  %285 = load i64*, i64** %10, align 8
  %286 = icmp ugt i64* %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  store i64 0, i64* %8, align 8
  br label %290

288:                                              ; preds = %283
  %289 = load i64, i64* %16, align 8
  store i64 %289, i64* %8, align 8
  br label %290

290:                                              ; preds = %288, %287, %82
  %291 = load i64, i64* %8, align 8
  ret i64 %291
}

declare dso_local i8* @GET_FIELD(i32, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

declare dso_local i64 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @qed_get_buf_ptr(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
