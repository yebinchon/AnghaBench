; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rc5-decoder.c_ir_rc5_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rc5-decoder.c_ir_rc5_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rc5_dec }
%struct.rc5_dec = type { i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }

@RC5_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"RC5(x/sz) decode started at state %i (%uus %s)\0A\00", align 1
@RC5_BIT_START = common dso_local global i32 0, align 4
@RC5_TRAILER = common dso_local global i32 0, align 4
@CHECK_RC5X_NBITS = common dso_local global i32 0, align 4
@RC5_BIT_END = common dso_local global i32 0, align 4
@RC5X_SPACE = common dso_local global i32 0, align 4
@RC5X_NBITS = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC5X_20 = common dso_local global i32 0, align 4
@RC_PROTO_RC5X_20 = common dso_local global i32 0, align 4
@RC5_NBITS = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@RC5_SZ_NBITS = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC5_SZ = common dso_local global i32 0, align 4
@RC_PROTO_RC5_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"RC5(x/sz) scancode 0x%06x (p: %u, t: %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"RC5(x/sz) decode failed at state %i count %d (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_rc5_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rc5_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.rc5_dec*, align 8
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
  %18 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %1, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %2, i64* %20, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %21 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %22 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.rc5_dec* %24, %struct.rc5_dec** %7, align 8
  %25 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @is_timing_event(i64 %27, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %38 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %37, i32 0, i32 0
  store i32 128, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %32
  store i32 0, i32* %4, align 4
  br label %370

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RC5_UNIT, align 4
  %44 = load i32, i32* @RC5_UNIT, align 4
  %45 = sdiv i32 %44, 2
  %46 = call i64 @geq_margin(i32 %42, i32 %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %350

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %166, %143, %99, %80, %49
  %51 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %52 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %51, i32 0, i32 1
  %53 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %54 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TO_US(i32 %57)
  %59 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @TO_STR(i32 %60)
  %62 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_dbg(i32* %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  %63 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RC5_UNIT, align 4
  %66 = load i32, i32* @RC5_UNIT, align 4
  %67 = sdiv i32 %66, 2
  %68 = call i64 @geq_margin(i32 %64, i32 %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %370

71:                                               ; preds = %50
  %72 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %73 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %349 [
    i32 128, label %75
    i32 131, label %87
    i32 132, label %131
    i32 130, label %146
    i32 129, label %169
  ]

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %349

80:                                               ; preds = %75
  %81 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %82 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %81, i32 0, i32 0
  store i32 131, i32* %82, align 4
  %83 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %84 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* @RC5_BIT_START, align 4
  %86 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %85)
  br label %50

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @RC5_TRAILER, align 4
  %95 = load i32, i32* @RC5_UNIT, align 4
  %96 = sdiv i32 %95, 2
  %97 = call i64 @geq_margin(i32 %93, i32 %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %101 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %100, i32 0, i32 0
  store i32 129, i32* %101, align 4
  br label %50

102:                                              ; preds = %91, %87
  %103 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RC5_BIT_START, align 4
  %106 = load i32, i32* @RC5_UNIT, align 4
  %107 = sdiv i32 %106, 2
  %108 = call i32 @eq_margin(i32 %104, i32 %105, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %349

111:                                              ; preds = %102
  %112 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %113 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %111
  %120 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %121 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %111
  %125 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %126 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %130 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %129, i32 0, i32 0
  store i32 132, i32* %130, align 4
  store i32 0, i32* %4, align 4
  br label %370

131:                                              ; preds = %71
  %132 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %133 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CHECK_RC5X_NBITS, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %139 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %138, i32 0, i32 0
  store i32 130, i32* %139, align 4
  br label %143

140:                                              ; preds = %131
  %141 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %142 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %141, i32 0, i32 0
  store i32 131, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* @RC5_BIT_END, align 4
  %145 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %144)
  br label %50

146:                                              ; preds = %71
  %147 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @RC5X_SPACE, align 4
  %154 = load i32, i32* @RC5_UNIT, align 4
  %155 = sdiv i32 %154, 2
  %156 = call i64 @geq_margin(i32 %152, i32 %153, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %160 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %159, i32 0, i32 3
  store i32 1, i32* %160, align 4
  %161 = load i32, i32* @RC5X_SPACE, align 4
  %162 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %161)
  br label %166

163:                                              ; preds = %150, %146
  %164 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %165 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %164, i32 0, i32 3
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %158
  %167 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %168 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %167, i32 0, i32 0
  store i32 131, i32* %168, align 4
  br label %50

169:                                              ; preds = %71
  %170 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %349

174:                                              ; preds = %169
  %175 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %176 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %235

179:                                              ; preds = %174
  %180 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %181 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @RC5X_NBITS, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %235

185:                                              ; preds = %179
  %186 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %187 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @RC_PROTO_BIT_RC5X_20, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %185
  %193 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %194 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %193, i32 0, i32 0
  store i32 128, i32* %194, align 4
  store i32 0, i32* %4, align 4
  br label %370

195:                                              ; preds = %185
  %196 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %197 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 63
  %200 = ashr i32 %199, 0
  store i32 %200, i32* %11, align 4
  %201 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %202 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 4032
  %205 = ashr i32 %204, 6
  store i32 %205, i32* %12, align 4
  %206 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %207 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 126976
  %210 = ashr i32 %209, 12
  store i32 %210, i32* %13, align 4
  %211 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %212 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 131072
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 1, i32 0
  store i32 %217, i32* %8, align 4
  %218 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %219 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 262144
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 0, i32 64
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* %13, align 4
  %228 = shl i32 %227, 16
  %229 = load i32, i32* %12, align 4
  %230 = shl i32 %229, 8
  %231 = or i32 %228, %230
  %232 = load i32, i32* %11, align 4
  %233 = or i32 %231, %232
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* @RC_PROTO_RC5X_20, align 4
  store i32 %234, i32* %10, align 4
  br label %335

235:                                              ; preds = %179, %174
  %236 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %237 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %288, label %240

240:                                              ; preds = %235
  %241 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %242 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @RC5_NBITS, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %288

246:                                              ; preds = %240
  %247 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %248 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %246
  %254 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %255 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %254, i32 0, i32 0
  store i32 128, i32* %255, align 4
  store i32 0, i32* %4, align 4
  br label %370

256:                                              ; preds = %246
  %257 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %258 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, 63
  %261 = ashr i32 %260, 0
  store i32 %261, i32* %14, align 4
  %262 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %263 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, 1984
  %266 = ashr i32 %265, 6
  store i32 %266, i32* %15, align 4
  %267 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %268 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, 2048
  %271 = icmp ne i32 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 1, i32 0
  store i32 %273, i32* %8, align 4
  %274 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %275 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, 4096
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i32 0, i32 64
  %281 = load i32, i32* %14, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %15, align 4
  %284 = shl i32 %283, 8
  %285 = load i32, i32* %14, align 4
  %286 = or i32 %284, %285
  store i32 %286, i32* %9, align 4
  %287 = load i32, i32* @RC_PROTO_RC5, align 4
  store i32 %287, i32* %10, align 4
  br label %334

288:                                              ; preds = %240, %235
  %289 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %290 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %332, label %293

293:                                              ; preds = %288
  %294 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %295 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @RC5_SZ_NBITS, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %332

299:                                              ; preds = %293
  %300 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %301 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @RC_PROTO_BIT_RC5_SZ, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %299
  %307 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %308 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %307, i32 0, i32 0
  store i32 128, i32* %308, align 4
  store i32 0, i32* %4, align 4
  br label %370

309:                                              ; preds = %299
  %310 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %311 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, 63
  %314 = ashr i32 %313, 0
  store i32 %314, i32* %16, align 4
  %315 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %316 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, 12224
  %319 = ashr i32 %318, 6
  store i32 %319, i32* %17, align 4
  %320 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %321 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, 4096
  %324 = icmp ne i32 %323, 0
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i32 1, i32 0
  store i32 %326, i32* %8, align 4
  %327 = load i32, i32* %17, align 4
  %328 = shl i32 %327, 6
  %329 = load i32, i32* %16, align 4
  %330 = or i32 %328, %329
  store i32 %330, i32* %9, align 4
  %331 = load i32, i32* @RC_PROTO_RC5_SZ, align 4
  store i32 %331, i32* %10, align 4
  br label %333

332:                                              ; preds = %293, %288
  br label %349

333:                                              ; preds = %309
  br label %334

334:                                              ; preds = %333, %256
  br label %335

335:                                              ; preds = %334, %195
  %336 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %337 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %336, i32 0, i32 1
  %338 = load i32, i32* %9, align 4
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %8, align 4
  %341 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_dbg(i32* %337, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %338, i32 %339, i32 %340)
  %342 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* %9, align 4
  %345 = load i32, i32* %8, align 4
  %346 = call i32 @rc_keydown(%struct.rc_dev* %342, i32 %343, i32 %344, i32 %345)
  %347 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %348 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %347, i32 0, i32 0
  store i32 128, i32* %348, align 4
  store i32 0, i32* %4, align 4
  br label %370

349:                                              ; preds = %71, %332, %173, %110, %79
  br label %350

350:                                              ; preds = %349, %48
  %351 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %352 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %351, i32 0, i32 1
  %353 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %354 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %357 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @TO_US(i32 %360)
  %362 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @TO_STR(i32 %363)
  %365 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_dbg(i32* %352, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %355, i32 %358, i32 %361, i32 %364)
  %366 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %367 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %366, i32 0, i32 0
  store i32 128, i32* %367, align 4
  %368 = load i32, i32* @EINVAL, align 4
  %369 = sub nsw i32 0, %368
  store i32 %369, i32* %4, align 4
  br label %370

370:                                              ; preds = %350, %335, %306, %253, %192, %124, %70, %39
  %371 = load i32, i32* %4, align 4
  ret i32 %371
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i64 @geq_margin(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @decrease_duration(%struct.ir_raw_event*, i32) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
