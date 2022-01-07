; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-sharp-decoder.c_ir_sharp_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-sharp-decoder.c_ir_sharp_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sharp_dec }
%struct.sharp_dec = type { i32, i32, i32, i64 }
%struct.ir_raw_event = type { i32, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"Sharp decode started at state %d (%uus %s)\0A\00", align 1
@SHARP_BIT_PULSE = common dso_local global i32 0, align 4
@SHARP_BIT_1_PERIOD = common dso_local global i32 0, align 4
@SHARP_BIT_0_PERIOD = common dso_local global i32 0, align 4
@SHARP_NBITS = common dso_local global i32 0, align 4
@SHARP_ECHO_SPACE = common dso_local global i32 0, align 4
@SHARP_TRAILER_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Sharp checksum error: received 0x%04x, 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Sharp scancode 0x%04x\0A\00", align 1
@RC_PROTO_SHARP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Sharp decode failed at count %d state %d (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.ir_raw_event*)* @ir_sharp_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_sharp_decode(%struct.rc_dev* %0, %struct.ir_raw_event* byval(%struct.ir_raw_event) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.sharp_dec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  %11 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.sharp_dec* %14, %struct.sharp_dec** %5, align 8
  %15 = call i32 @is_timing_event(%struct.ir_raw_event* byval(%struct.ir_raw_event) align 8 %1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %23 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %22, i32 0, i32 0
  store i32 130, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %17
  store i32 0, i32* %3, align 4
  br label %283

25:                                               ; preds = %2
  %26 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %27 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %26, i32 0, i32 0
  %28 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %29 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @TO_US(i64 %32)
  %34 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @TO_STR(i32 %35)
  %37 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %36)
  %38 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %39 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %263 [
    i32 130, label %41
    i32 133, label %64
    i32 132, label %85
    i32 129, label %149
    i32 131, label %189
    i32 128, label %206
  ]

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %263

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @SHARP_BIT_PULSE, align 4
  %50 = load i32, i32* @SHARP_BIT_PULSE, align 4
  %51 = sdiv i32 %50, 2
  %52 = call i32 @eq_margin(i64 %48, i32 %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %263

55:                                               ; preds = %46
  %56 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %57 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %61 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %63 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %62, i32 0, i32 0
  store i32 132, i32* %63, align 8
  store i32 0, i32* %3, align 4
  br label %283

64:                                               ; preds = %25
  %65 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %263

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @SHARP_BIT_PULSE, align 4
  %73 = load i32, i32* @SHARP_BIT_PULSE, align 4
  %74 = sdiv i32 %73, 2
  %75 = call i32 @eq_margin(i64 %71, i32 %72, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %263

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %82 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %84 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %83, i32 0, i32 0
  store i32 132, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %283

85:                                               ; preds = %25
  %86 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %263

90:                                               ; preds = %85
  %91 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %92 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %96 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %97, %99
  %101 = load i32, i32* @SHARP_BIT_1_PERIOD, align 4
  %102 = load i32, i32* @SHARP_BIT_PULSE, align 4
  %103 = mul nsw i32 %102, 2
  %104 = call i32 @eq_margin(i64 %100, i32 %101, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %90
  %107 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %108 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %125

111:                                              ; preds = %90
  %112 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %113 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %114, %116
  %118 = load i32, i32* @SHARP_BIT_0_PERIOD, align 4
  %119 = load i32, i32* @SHARP_BIT_PULSE, align 4
  %120 = mul nsw i32 %119, 2
  %121 = call i32 @eq_margin(i64 %117, i32 %118, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %111
  br label %263

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %106
  %126 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %127 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %131 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SHARP_NBITS, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %142, label %135

135:                                              ; preds = %125
  %136 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %137 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SHARP_NBITS, align 4
  %140 = mul nsw i32 %139, 2
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %135, %125
  %143 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %144 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %143, i32 0, i32 0
  store i32 129, i32* %144, align 8
  br label %148

145:                                              ; preds = %135
  %146 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %147 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %146, i32 0, i32 0
  store i32 133, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %142
  store i32 0, i32* %3, align 4
  br label %283

149:                                              ; preds = %25
  %150 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  br label %263

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @SHARP_BIT_PULSE, align 4
  %158 = load i32, i32* @SHARP_BIT_PULSE, align 4
  %159 = sdiv i32 %158, 2
  %160 = call i32 @eq_margin(i64 %156, i32 %157, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %154
  br label %263

163:                                              ; preds = %154
  %164 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %165 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @SHARP_NBITS, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %163
  %170 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %171 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, 3
  %174 = icmp ne i32 %173, 2
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %177 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 3
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %263

182:                                              ; preds = %175, %169
  %183 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %184 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %183, i32 0, i32 0
  store i32 131, i32* %184, align 8
  br label %188

185:                                              ; preds = %163
  %186 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %187 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %186, i32 0, i32 0
  store i32 128, i32* %187, align 8
  br label %188

188:                                              ; preds = %185, %182
  store i32 0, i32* %3, align 4
  br label %283

189:                                              ; preds = %25
  %190 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %263

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* @SHARP_ECHO_SPACE, align 4
  %198 = load i32, i32* @SHARP_ECHO_SPACE, align 4
  %199 = sdiv i32 %198, 4
  %200 = call i32 @eq_margin(i64 %196, i32 %197, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %194
  br label %263

203:                                              ; preds = %194
  %204 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %205 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %204, i32 0, i32 0
  store i32 133, i32* %205, align 8
  store i32 0, i32* %3, align 4
  br label %283

206:                                              ; preds = %25
  %207 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %263

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* @SHARP_TRAILER_SPACE, align 4
  %215 = load i32, i32* @SHARP_BIT_PULSE, align 4
  %216 = sdiv i32 %215, 2
  %217 = call i32 @geq_margin(i64 %213, i32 %214, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %211
  br label %263

220:                                              ; preds = %211
  %221 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %222 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = ashr i32 %223, 15
  %225 = and i32 %224, 32767
  store i32 %225, i32* %6, align 4
  %226 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %227 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = and i32 %228, 32767
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %7, align 4
  %232 = xor i32 %230, %231
  %233 = icmp ne i32 %232, 1023
  br i1 %233, label %234, label %240

234:                                              ; preds = %220
  %235 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %236 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %235, i32 0, i32 0
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %7, align 4
  %239 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %236, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %237, i32 %238)
  br label %263

240:                                              ; preds = %220
  %241 = load i32, i32* %6, align 4
  %242 = ashr i32 %241, 7
  %243 = and i32 %242, 248
  %244 = call i32 @bitrev8(i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %6, align 4
  %246 = ashr i32 %245, 2
  %247 = and i32 %246, 255
  %248 = call i32 @bitrev8(i32 %247)
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %8, align 4
  %250 = shl i32 %249, 8
  %251 = load i32, i32* %9, align 4
  %252 = or i32 %250, %251
  store i32 %252, i32* %10, align 4
  %253 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %254 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %253, i32 0, i32 0
  %255 = load i32, i32* %10, align 4
  %256 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %254, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  %257 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %258 = load i32, i32* @RC_PROTO_SHARP, align 4
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @rc_keydown(%struct.rc_dev* %257, i32 %258, i32 %259, i32 0)
  %261 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %262 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %261, i32 0, i32 0
  store i32 130, i32* %262, align 8
  store i32 0, i32* %3, align 4
  br label %283

263:                                              ; preds = %25, %234, %219, %210, %202, %193, %181, %162, %153, %123, %89, %77, %68, %54, %45
  %264 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %265 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %264, i32 0, i32 0
  %266 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %267 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %270 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @TO_US(i64 %273)
  %275 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @TO_STR(i32 %276)
  %278 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %265, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %268, i32 %271, i32 %274, i32 %277)
  %279 = load %struct.sharp_dec*, %struct.sharp_dec** %5, align 8
  %280 = getelementptr inbounds %struct.sharp_dec, %struct.sharp_dec* %279, i32 0, i32 0
  store i32 130, i32* %280, align 8
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %263, %240, %203, %188, %148, %78, %55, %24
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @is_timing_event(%struct.ir_raw_event* byval(%struct.ir_raw_event) align 8) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @TO_US(i64) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @eq_margin(i64, i32, i32) #1

declare dso_local i32 @geq_margin(i64, i32, i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
