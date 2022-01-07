; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_reg_fifo_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_reg_fifo_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_fifo_element = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"global_params\00", align 1
@DBG_STATUS_REG_FIFO_BAD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"reg_fifo_data\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@REG_FIFO_ELEMENT_DWORDS = common dso_local global i32 0, align 4
@REG_FIFO_ELEMENT_VF = common dso_local global i32 0, align 4
@REG_FIFO_ELEMENT_IS_PF_VF_VAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [133 x i8] c"raw: 0x%016llx, address: 0x%07x, access: %-5s, pf: %2d, vf: %s, port: %d, privilege: %-3s, protection: %-12s, master: %-4s, errors: \00", align 1
@REG_FIFO_ELEMENT_ADDRESS = common dso_local global i32 0, align 4
@REG_FIFO_ELEMENT_ADDR_FACTOR = common dso_local global i32 0, align 4
@s_access_strs = common dso_local global i32* null, align 8
@REG_FIFO_ELEMENT_ACCESS = common dso_local global i32 0, align 4
@REG_FIFO_ELEMENT_PF = common dso_local global i32 0, align 4
@REG_FIFO_ELEMENT_PORT = common dso_local global i32 0, align 4
@s_privilege_strs = common dso_local global i32* null, align 8
@REG_FIFO_ELEMENT_PRIVILEGE = common dso_local global i32 0, align 4
@s_protection_strs = common dso_local global i32* null, align 8
@REG_FIFO_ELEMENT_PROTECTION = common dso_local global i32 0, align 4
@s_master_strs = common dso_local global i32* null, align 8
@REG_FIFO_ELEMENT_MASTER = common dso_local global i32 0, align 4
@REG_FIFO_ELEMENT_ERROR = common dso_local global i32 0, align 4
@s_reg_fifo_error_strs = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"fifo contained %d elements\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @qed_parse_reg_fifo_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_parse_reg_fifo_dump(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.reg_fifo_element*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i8], align 1
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @qed_read_section_hdr(i32* %22, i8** %8, i32* %12)
  %24 = load i32*, i32** %5, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %5, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @DBG_STATUS_REG_FIFO_BAD_DATA, align 4
  store i32 %31, i32* %4, align 4
  br label %253

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @qed_print_section_params(i32* %33, i32 %34, i8* %35, i32* %19)
  %37 = load i32*, i32** %5, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @qed_read_section_hdr(i32* %40, i8** %8, i32* %12)
  %42 = load i32*, i32** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @DBG_STATUS_REG_FIFO_BAD_DATA, align 4
  store i32 %49, i32* %4, align 4
  br label %253

50:                                               ; preds = %32
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @qed_read_param(i32* %51, i8** %9, i8** %10, i32* %11)
  %53 = load i32*, i32** %5, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %5, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @DBG_STATUS_REG_FIFO_BAD_DATA, align 4
  store i32 %60, i32* %4, align 4
  br label %253

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @REG_FIFO_ELEMENT_DWORDS, align 4
  %64 = srem i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @DBG_STATUS_REG_FIFO_BAD_DATA, align 4
  store i32 %67, i32* %4, align 4
  br label %253

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @REG_FIFO_ELEMENT_DWORDS, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = bitcast i32* %72 to %struct.reg_fifo_element*
  store %struct.reg_fifo_element* %73, %struct.reg_fifo_element** %14, align 8
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %238, %68
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %241

78:                                               ; preds = %74
  store i32 0, i32* %21, align 4
  %79 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %79, i64 %81
  %83 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @REG_FIFO_ELEMENT_VF, align 4
  %86 = call i64 @GET_FIELD(i32 %84, i32 %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @REG_FIFO_ELEMENT_IS_PF_VF_VAL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %98

94:                                               ; preds = %78
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %96 = load i32, i32* %18, align 4
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %19, align 4
  %101 = call i8* @qed_get_buf_ptr(i8* %99, i32 %100)
  %102 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %102, i64 %104
  %106 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %108, i64 %110
  %112 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @REG_FIFO_ELEMENT_ADDRESS, align 4
  %115 = call i64 @GET_FIELD(i32 %113, i32 %114)
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @REG_FIFO_ELEMENT_ADDR_FACTOR, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32*, i32** @s_access_strs, align 8
  %120 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %120, i64 %122
  %124 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @REG_FIFO_ELEMENT_ACCESS, align 4
  %127 = call i64 @GET_FIELD(i32 %125, i32 %126)
  %128 = getelementptr inbounds i32, i32* %119, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %130, i64 %132
  %134 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @REG_FIFO_ELEMENT_PF, align 4
  %137 = call i64 @GET_FIELD(i32 %135, i32 %136)
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %140 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %140, i64 %142
  %144 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @REG_FIFO_ELEMENT_PORT, align 4
  %147 = call i64 @GET_FIELD(i32 %145, i32 %146)
  %148 = trunc i64 %147 to i32
  %149 = load i32*, i32** @s_privilege_strs, align 8
  %150 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %150, i64 %152
  %154 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @REG_FIFO_ELEMENT_PRIVILEGE, align 4
  %157 = call i64 @GET_FIELD(i32 %155, i32 %156)
  %158 = getelementptr inbounds i32, i32* %149, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** @s_protection_strs, align 8
  %161 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %161, i64 %163
  %165 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @REG_FIFO_ELEMENT_PROTECTION, align 4
  %168 = call i64 @GET_FIELD(i32 %166, i32 %167)
  %169 = getelementptr inbounds i32, i32* %160, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** @s_master_strs, align 8
  %172 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %172, i64 %174
  %176 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @REG_FIFO_ELEMENT_MASTER, align 4
  %179 = call i64 @GET_FIELD(i32 %177, i32 %178)
  %180 = getelementptr inbounds i32, i32* %171, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.6, i64 0, i64 0), i32 %107, i32 %118, i32 %129, i32 %138, i8* %139, i32 %148, i32 %159, i32 %170, i32 %181)
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %19, align 4
  store i32 0, i32* %16, align 4
  %185 = load %struct.reg_fifo_element*, %struct.reg_fifo_element** %14, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %185, i64 %187
  %189 = getelementptr inbounds %struct.reg_fifo_element, %struct.reg_fifo_element* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @REG_FIFO_ELEMENT_ERROR, align 4
  %192 = call i64 @GET_FIELD(i32 %190, i32 %191)
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %17, align 4
  br label %194

194:                                              ; preds = %226, %98
  %195 = load i32, i32* %16, align 4
  %196 = load i8**, i8*** @s_reg_fifo_error_strs, align 8
  %197 = call i32 @ARRAY_SIZE(i8** %196)
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %231

199:                                              ; preds = %194
  %200 = load i32, i32* %17, align 4
  %201 = and i32 %200, 1
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %225

203:                                              ; preds = %199
  %204 = load i32, i32* %21, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load i8*, i8** %6, align 8
  %208 = load i32, i32* %19, align 4
  %209 = call i8* @qed_get_buf_ptr(i8* %207, i32 %208)
  %210 = call i32 (i8*, i8*, ...) @sprintf(i8* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %19, align 4
  br label %213

213:                                              ; preds = %206, %203
  %214 = load i8*, i8** %6, align 8
  %215 = load i32, i32* %19, align 4
  %216 = call i8* @qed_get_buf_ptr(i8* %214, i32 %215)
  %217 = load i8**, i8*** @s_reg_fifo_error_strs, align 8
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 (i8*, i8*, ...) @sprintf(i8* %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %221)
  %223 = load i32, i32* %19, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %19, align 4
  store i32 1, i32* %21, align 4
  br label %225

225:                                              ; preds = %213, %199
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %16, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %16, align 4
  %229 = load i32, i32* %17, align 4
  %230 = ashr i32 %229, 1
  store i32 %230, i32* %17, align 4
  br label %194

231:                                              ; preds = %194
  %232 = load i8*, i8** %6, align 8
  %233 = load i32, i32* %19, align 4
  %234 = call i8* @qed_get_buf_ptr(i8* %232, i32 %233)
  %235 = call i32 (i8*, i8*, ...) @sprintf(i8* %234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %19, align 4
  br label %238

238:                                              ; preds = %231
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %15, align 4
  br label %74

241:                                              ; preds = %74
  %242 = load i8*, i8** %6, align 8
  %243 = load i32, i32* %19, align 4
  %244 = call i8* @qed_get_buf_ptr(i8* %242, i32 %243)
  %245 = load i32, i32* %13, align 4
  %246 = call i32 (i8*, i8*, ...) @sprintf(i8* %244, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %245)
  %247 = load i32, i32* %19, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %19, align 4
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %249, 1
  %251 = load i32*, i32** %7, align 8
  store i32 %250, i32* %251, align 4
  %252 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %252, i32* %4, align 4
  br label %253

253:                                              ; preds = %241, %66, %59, %48, %30
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @qed_read_section_hdr(i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @qed_print_section_params(i32*, i32, i8*, i32*) #1

declare dso_local i32 @qed_read_param(i32*, i8**, i8**, i32*) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @qed_get_buf_ptr(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
