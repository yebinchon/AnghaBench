; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_zilog_ir_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_zilog_ir_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.IR_i2c* }
%struct.IR_i2c = type { i32, i32 }
%struct.code_block = type { i32*, i32*, i32*, i8*, i8* }

@XTAL_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"IR too long, cannot transmit\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Too many different lengths spaces, cannot transmit\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Too many different lengths pulses, cannot transmit\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"generated %d codes\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"found trailing %d repeat\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"found no trailing repeat\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32, %struct.code_block*)* @zilog_ir_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zilog_ir_format(%struct.rc_dev* %0, i32* %1, i32 %2, %struct.code_block* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.code_block*, align 8
  %10 = alloca %struct.IR_i2c*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [174 x i32], align 16
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.code_block* %3, %struct.code_block** %9, align 8
  %21 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %22 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 1
  %23 = load %struct.IR_i2c*, %struct.IR_i2c** %22, align 8
  store %struct.IR_i2c* %23, %struct.IR_i2c** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.IR_i2c*, %struct.IR_i2c** %10, align 8
  %25 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XTAL_FREQ, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 1000
  %30 = load %struct.IR_i2c*, %struct.IR_i2c** %10, align 8
  %31 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @DIV_ROUND_CLOSEST(i32 %29, i32 %32)
  %34 = load %struct.code_block*, %struct.code_block** %9, align 8
  %35 = getelementptr inbounds %struct.code_block, %struct.code_block* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.IR_i2c*, %struct.IR_i2c** %10, align 8
  %37 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 100, %38
  %40 = load i32, i32* @XTAL_FREQ, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sdiv i32 %41, 1000
  %43 = load %struct.IR_i2c*, %struct.IR_i2c** %10, align 8
  %44 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @DIV_ROUND_CLOSEST(i32 %42, i32 %45)
  %47 = load %struct.code_block*, %struct.code_block** %9, align 8
  %48 = getelementptr inbounds %struct.code_block, %struct.code_block* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %136, %4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %139

53:                                               ; preds = %49
  %54 = load i32, i32* %16, align 4
  %55 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 0
  %56 = call i32 @ARRAY_SIZE(i32* %55)
  %57 = sub nsw i32 %56, 1
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %61 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %60, i32 0, i32 0
  %62 = call i32 @dev_warn(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %343

65:                                               ; preds = %53
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ugt i32 %70, 142220
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %343

75:                                               ; preds = %65
  %76 = load i32, i32* @XTAL_FREQ, align 4
  %77 = sdiv i32 %76, 1000
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = mul i32 %77, %82
  %84 = call i8* @DIV_ROUND_CLOSEST(i32 %83, i32 40000)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %75
  %90 = load %struct.code_block*, %struct.code_block** %9, align 8
  %91 = getelementptr inbounds %struct.code_block, %struct.code_block* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.code_block*, %struct.code_block** %9, align 8
  %94 = getelementptr inbounds %struct.code_block, %struct.code_block* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @ARRAY_SIZE(i32* %95)
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @find_slot(i32* %92, i32 %96, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %103 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %102, i32 0, i32 0
  %104 = call i32 @dev_warn(i32* %103, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %343

107:                                              ; preds = %89
  %108 = load i32, i32* %14, align 4
  %109 = shl i32 %108, 4
  %110 = load i32, i32* %15, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 %114
  store i32 %111, i32* %115, align 4
  br label %135

116:                                              ; preds = %75
  %117 = load %struct.code_block*, %struct.code_block** %9, align 8
  %118 = getelementptr inbounds %struct.code_block, %struct.code_block* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.code_block*, %struct.code_block** %9, align 8
  %121 = getelementptr inbounds %struct.code_block, %struct.code_block* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @ARRAY_SIZE(i32* %122)
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @find_slot(i32* %119, i32 %123, i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %134

128:                                              ; preds = %116
  %129 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %130 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %129, i32 0, i32 0
  %131 = call i32 @dev_warn(i32* %130, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %343

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %107
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %49

139:                                              ; preds = %49
  store i32 0, i32* %15, align 4
  store i32 1, i32* %12, align 4
  br label %140

140:                                              ; preds = %167, %139
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.code_block*, %struct.code_block** %9, align 8
  %143 = getelementptr inbounds %struct.code_block, %struct.code_block* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @ARRAY_SIZE(i32* %144)
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %170

147:                                              ; preds = %140
  %148 = load %struct.code_block*, %struct.code_block** %9, align 8
  %149 = getelementptr inbounds %struct.code_block, %struct.code_block* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = call i64 @get_unaligned_be16(i32* %153)
  store i64 %154, i64* %19, align 8
  %155 = load %struct.code_block*, %struct.code_block** %9, align 8
  %156 = getelementptr inbounds %struct.code_block, %struct.code_block* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = call i64 @get_unaligned_be16(i32* %160)
  %162 = load i64, i64* %19, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %147
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %15, align 4
  br label %166

166:                                              ; preds = %164, %147
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %140

170:                                              ; preds = %140
  %171 = load i32, i32* %14, align 4
  %172 = shl i32 %171, 4
  %173 = load i32, i32* %15, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %16, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 %177
  store i32 %174, i32* %178, align 4
  %179 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %180 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %179, i32 0, i32 0
  %181 = load i32, i32* %16, align 4
  %182 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  store i32 0, i32* %17, align 4
  %183 = load i32, i32* %16, align 4
  %184 = sdiv i32 %183, 3
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %221, %170
  %186 = load i32, i32* %11, align 4
  %187 = icmp sge i32 %186, 1
  br i1 %187, label %188, label %224

188:                                              ; preds = %185
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %11, align 4
  %191 = mul nsw i32 %190, 3
  %192 = sub nsw i32 %189, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 %193
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %11, align 4
  %197 = mul nsw i32 %196, 2
  %198 = sub nsw i32 %195, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 %199
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @memcmp(i32* %194, i32* %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %220, label %204

204:                                              ; preds = %188
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 %208
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %11, align 4
  %212 = mul nsw i32 %211, 2
  %213 = sub nsw i32 %210, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 %214
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @cmp_no_trail(i32* %209, i32* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %204
  store i32 1, i32* %17, align 4
  br label %224

220:                                              ; preds = %204, %188
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %11, align 4
  br label %185

224:                                              ; preds = %219, %185
  %225 = load i32, i32* %17, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %288

227:                                              ; preds = %224
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* %11, align 4
  %230 = mul nsw i32 %229, 3
  %231 = sub nsw i32 %228, %230
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %20, align 4
  %233 = load %struct.code_block*, %struct.code_block** %9, align 8
  %234 = getelementptr inbounds %struct.code_block, %struct.code_block* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @ARRAY_SIZE(i32* %235)
  %237 = sub nsw i32 %236, 3
  %238 = load i32, i32* %11, align 4
  %239 = sub nsw i32 %237, %238
  %240 = icmp sge i32 %232, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %227
  %242 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %243 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %242, i32 0, i32 0
  %244 = call i32 @dev_warn(i32* %243, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %245 = load i32, i32* @EINVAL, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %5, align 4
  br label %343

247:                                              ; preds = %227
  %248 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %249 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %248, i32 0, i32 0
  %250 = load i32, i32* %11, align 4
  %251 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %249, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  %252 = load %struct.code_block*, %struct.code_block** %9, align 8
  %253 = getelementptr inbounds %struct.code_block, %struct.code_block* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 0
  %256 = load i32, i32* %20, align 4
  %257 = call i32 @copy_codes(i32* %254, i32* %255, i32 %256)
  %258 = load %struct.code_block*, %struct.code_block** %9, align 8
  %259 = getelementptr inbounds %struct.code_block, %struct.code_block* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %20, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 130, i32* %263, align 4
  %264 = load %struct.code_block*, %struct.code_block** %9, align 8
  %265 = getelementptr inbounds %struct.code_block, %struct.code_block* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %20, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 0
  %272 = load i32, i32* %20, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %11, align 4
  %276 = call i32 @copy_codes(i32* %270, i32* %274, i32 %275)
  %277 = load i32, i32* %20, align 4
  %278 = add nsw i32 %277, 1
  %279 = load i32, i32* %11, align 4
  %280 = add nsw i32 %278, %279
  store i32 %280, i32* %16, align 4
  %281 = load %struct.code_block*, %struct.code_block** %9, align 8
  %282 = getelementptr inbounds %struct.code_block, %struct.code_block* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %16, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %16, align 4
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  store i32 192, i32* %287, align 4
  br label %326

288:                                              ; preds = %224
  %289 = load i32, i32* %16, align 4
  %290 = load %struct.code_block*, %struct.code_block** %9, align 8
  %291 = getelementptr inbounds %struct.code_block, %struct.code_block* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @ARRAY_SIZE(i32* %292)
  %294 = sub nsw i32 %293, 3
  %295 = icmp sge i32 %289, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %288
  %297 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %298 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %297, i32 0, i32 0
  %299 = call i32 @dev_warn(i32* %298, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %5, align 4
  br label %343

302:                                              ; preds = %288
  %303 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %304 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %303, i32 0, i32 0
  %305 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %306 = load %struct.code_block*, %struct.code_block** %9, align 8
  %307 = getelementptr inbounds %struct.code_block, %struct.code_block* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  store i32 130, i32* %309, align 4
  %310 = load %struct.code_block*, %struct.code_block** %9, align 8
  %311 = getelementptr inbounds %struct.code_block, %struct.code_block* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  %314 = getelementptr inbounds [174 x i32], [174 x i32]* %18, i64 0, i64 0
  %315 = load i32, i32* %16, align 4
  %316 = call i32 @copy_codes(i32* %313, i32* %314, i32 %315)
  %317 = load i32, i32* %16, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %16, align 4
  %319 = load %struct.code_block*, %struct.code_block** %9, align 8
  %320 = getelementptr inbounds %struct.code_block, %struct.code_block* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %16, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %16, align 4
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  store i32 196, i32* %325, align 4
  br label %326

326:                                              ; preds = %302, %247
  br label %327

327:                                              ; preds = %334, %326
  %328 = load i32, i32* %16, align 4
  %329 = load %struct.code_block*, %struct.code_block** %9, align 8
  %330 = getelementptr inbounds %struct.code_block, %struct.code_block* %329, i32 0, i32 2
  %331 = load i32*, i32** %330, align 8
  %332 = call i32 @ARRAY_SIZE(i32* %331)
  %333 = icmp slt i32 %328, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %327
  %335 = load %struct.code_block*, %struct.code_block** %9, align 8
  %336 = getelementptr inbounds %struct.code_block, %struct.code_block* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %16, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %16, align 4
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds i32, i32* %337, i64 %340
  store i32 131, i32* %341, align 4
  br label %327

342:                                              ; preds = %327
  store i32 0, i32* %5, align 4
  br label %343

343:                                              ; preds = %342, %296, %241, %128, %101, %72, %59
  %344 = load i32, i32* %5, align 4
  ret i32 %344
}

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @find_slot(i32*, i32, i32) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @cmp_no_trail(i32*, i32*, i32) #1

declare dso_local i32 @copy_codes(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
