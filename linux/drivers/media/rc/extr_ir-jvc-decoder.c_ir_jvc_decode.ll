; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-jvc-decoder.c_ir_jvc_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-jvc-decoder.c_ir_jvc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.jvc_dec }
%struct.jvc_dec = type { i32, i32, i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }

@JVC_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"JVC decode started at state %d (%uus %s)\0A\00", align 1
@JVC_HEADER_PULSE = common dso_local global i32 0, align 4
@JVC_HEADER_SPACE = common dso_local global i32 0, align 4
@JVC_BIT_PULSE = common dso_local global i32 0, align 4
@JVC_BIT_1_SPACE = common dso_local global i32 0, align 4
@JVC_BIT_0_SPACE = common dso_local global i32 0, align 4
@JVC_NBITS = common dso_local global i32 0, align 4
@JVC_TRAILER_PULSE = common dso_local global i32 0, align 4
@JVC_TRAILER_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"JVC scancode 0x%04x\0A\00", align 1
@RC_PROTO_JVC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"JVC repeat\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"JVC invalid repeat msg\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"JVC decode failed at state %d (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_jvc_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_jvc_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.jvc_dec*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %2, i64* %11, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %13 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.jvc_dec* %15, %struct.jvc_dec** %7, align 8
  %16 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @is_timing_event(i64 %18, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %29 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %28, i32 0, i32 0
  store i32 130, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %23
  store i32 0, i32* %4, align 4
  br label %306

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @JVC_UNIT, align 4
  %35 = load i32, i32* @JVC_UNIT, align 4
  %36 = sdiv i32 %35, 2
  %37 = call i32 @geq_margin(i32 %33, i32 %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %289

40:                                               ; preds = %31
  %41 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %42 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %41, i32 0, i32 0
  %43 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %44 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @TO_US(i32 %47)
  %49 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @TO_STR(i32 %50)
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %287, %40
  %54 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %55 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %288 [
    i32 130, label %57
    i32 131, label %86
    i32 134, label %103
    i32 133, label %120
    i32 129, label %174
    i32 128, label %191
    i32 132, label %268
  ]

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %288

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @JVC_HEADER_PULSE, align 4
  %66 = load i32, i32* @JVC_UNIT, align 4
  %67 = sdiv i32 %66, 2
  %68 = call i32 @eq_margin(i32 %64, i32 %65, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %288

71:                                               ; preds = %62
  %72 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %73 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %72, i32 0, i32 5
  store i32 0, i32* %73, align 4
  %74 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %75 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %77 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %83 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %85 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %84, i32 0, i32 0
  store i32 131, i32* %85, align 4
  store i32 0, i32* %4, align 4
  br label %306

86:                                               ; preds = %53
  %87 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %288

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @JVC_HEADER_SPACE, align 4
  %95 = load i32, i32* @JVC_UNIT, align 4
  %96 = sdiv i32 %95, 2
  %97 = call i32 @eq_margin(i32 %93, i32 %94, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %288

100:                                              ; preds = %91
  %101 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %102 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %101, i32 0, i32 0
  store i32 134, i32* %102, align 4
  store i32 0, i32* %4, align 4
  br label %306

103:                                              ; preds = %53
  %104 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %288

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @JVC_BIT_PULSE, align 4
  %112 = load i32, i32* @JVC_UNIT, align 4
  %113 = sdiv i32 %112, 2
  %114 = call i32 @eq_margin(i32 %110, i32 %111, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %288

117:                                              ; preds = %108
  %118 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %119 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %118, i32 0, i32 0
  store i32 133, i32* %119, align 4
  store i32 0, i32* %4, align 4
  br label %306

120:                                              ; preds = %53
  %121 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %288

125:                                              ; preds = %120
  %126 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %127 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @JVC_BIT_1_SPACE, align 4
  %133 = load i32, i32* @JVC_UNIT, align 4
  %134 = sdiv i32 %133, 2
  %135 = call i32 @eq_margin(i32 %131, i32 %132, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %125
  %138 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %139 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* @JVC_BIT_1_SPACE, align 4
  %143 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %142)
  br label %157

144:                                              ; preds = %125
  %145 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @JVC_BIT_0_SPACE, align 4
  %148 = load i32, i32* @JVC_UNIT, align 4
  %149 = sdiv i32 %148, 2
  %150 = call i32 @eq_margin(i32 %146, i32 %147, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* @JVC_BIT_0_SPACE, align 4
  %154 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %153)
  br label %156

155:                                              ; preds = %144
  br label %288

156:                                              ; preds = %152
  br label %157

157:                                              ; preds = %156, %137
  %158 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %159 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %163 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @JVC_NBITS, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %157
  %168 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %169 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %168, i32 0, i32 0
  store i32 129, i32* %169, align 4
  br label %173

170:                                              ; preds = %157
  %171 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %172 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %171, i32 0, i32 0
  store i32 134, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  store i32 0, i32* %4, align 4
  br label %306

174:                                              ; preds = %53
  %175 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  br label %288

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @JVC_TRAILER_PULSE, align 4
  %183 = load i32, i32* @JVC_UNIT, align 4
  %184 = sdiv i32 %183, 2
  %185 = call i32 @eq_margin(i32 %181, i32 %182, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %179
  br label %288

188:                                              ; preds = %179
  %189 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %190 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %189, i32 0, i32 0
  store i32 128, i32* %190, align 4
  store i32 0, i32* %4, align 4
  br label %306

191:                                              ; preds = %53
  %192 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %288

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @JVC_TRAILER_SPACE, align 4
  %200 = load i32, i32* @JVC_UNIT, align 4
  %201 = sdiv i32 %200, 2
  %202 = call i32 @geq_margin(i32 %198, i32 %199, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %196
  br label %288

205:                                              ; preds = %196
  %206 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %207 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %244

210:                                              ; preds = %205
  %211 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %212 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 8
  %215 = and i32 %214, 255
  %216 = call i32 @bitrev8(i32 %215)
  %217 = shl i32 %216, 8
  %218 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %219 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = ashr i32 %220, 0
  %222 = and i32 %221, 255
  %223 = call i32 @bitrev8(i32 %222)
  %224 = shl i32 %223, 0
  %225 = or i32 %217, %224
  store i32 %225, i32* %8, align 4
  %226 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %227 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %226, i32 0, i32 0
  %228 = load i32, i32* %8, align 4
  %229 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  %230 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %231 = load i32, i32* @RC_PROTO_JVC, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %234 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @rc_keydown(%struct.rc_dev* %230, i32 %231, i32 %232, i32 %235)
  %237 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %238 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %237, i32 0, i32 1
  store i32 0, i32* %238, align 4
  %239 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %240 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %243 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %242, i32 0, i32 4
  store i32 %241, i32* %243, align 4
  br label %263

244:                                              ; preds = %205
  %245 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %246 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %249 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %247, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %244
  %253 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %254 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %253, i32 0, i32 0
  %255 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %256 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %257 = call i32 @rc_repeat(%struct.rc_dev* %256)
  br label %262

258:                                              ; preds = %244
  %259 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %260 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %259, i32 0, i32 0
  %261 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %260, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %288

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %262, %210
  %264 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %265 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %264, i32 0, i32 5
  store i32 0, i32* %265, align 4
  %266 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %267 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %266, i32 0, i32 0
  store i32 132, i32* %267, align 4
  store i32 0, i32* %4, align 4
  br label %306

268:                                              ; preds = %53
  %269 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %268
  br label %288

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @JVC_HEADER_PULSE, align 4
  %277 = load i32, i32* @JVC_UNIT, align 4
  %278 = sdiv i32 %277, 2
  %279 = call i32 @eq_margin(i32 %275, i32 %276, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %273
  %282 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %283 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %282, i32 0, i32 0
  store i32 130, i32* %283, align 4
  br label %287

284:                                              ; preds = %273
  %285 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %286 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %285, i32 0, i32 0
  store i32 134, i32* %286, align 4
  br label %287

287:                                              ; preds = %284, %281
  br label %53

288:                                              ; preds = %53, %272, %258, %204, %195, %187, %178, %155, %124, %116, %107, %99, %90, %70, %61
  br label %289

289:                                              ; preds = %288, %39
  %290 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %291 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %290, i32 0, i32 0
  %292 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %293 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @TO_US(i32 %296)
  %298 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @TO_STR(i32 %299)
  %301 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %291, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %294, i32 %297, i32 %300)
  %302 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %303 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %302, i32 0, i32 0
  store i32 130, i32* %303, align 4
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %4, align 4
  br label %306

306:                                              ; preds = %289, %263, %188, %173, %117, %100, %71, %30
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i32 @geq_margin(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @decrease_duration(%struct.ir_raw_event*, i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

declare dso_local i32 @rc_repeat(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
