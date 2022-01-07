; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rc6-decoder.c_ir_rc6_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rc6-decoder.c_ir_rc6_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rc6_dec }
%struct.rc6_dec = type { i32, i32, i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }

@RC6_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"RC6 decode started at state %i (%uus %s)\0A\00", align 1
@RC6_PREFIX_PULSE = common dso_local global i32 0, align 4
@RC6_PREFIX_SPACE = common dso_local global i32 0, align 4
@RC6_BIT_START = common dso_local global i32 0, align 4
@RC6_HEADER_NBITS = common dso_local global i32 0, align 4
@RC6_BIT_END = common dso_local global i32 0, align 4
@RC6_TOGGLE_START = common dso_local global i32 0, align 4
@RC6_STARTBIT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"RC6 invalid start bit\0A\00", align 1
@RC6_TOGGLE_END = common dso_local global i32 0, align 4
@RC6_0_NBITS = common dso_local global i32 0, align 4
@RC6_6A_NBITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"RC6 unknown mode\0A\00", align 1
@CHAR_BIT = common dso_local global i32 0, align 4
@RC6_SUFFIX_SPACE = common dso_local global i32 0, align 4
@RC_PROTO_RC6_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"RC6(0) scancode 0x%04x (toggle: %u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"RC6 too many (%u) data bits\0A\00", align 1
@RC_PROTO_RC6_6A_20 = common dso_local global i32 0, align 4
@RC_PROTO_RC6_6A_24 = common dso_local global i32 0, align 4
@RC6_6A_LCC_MASK = common dso_local global i32 0, align 4
@RC_PROTO_RC6_MCE = common dso_local global i32 0, align 4
@RC6_6A_MCE_TOGGLE_MASK = common dso_local global i32 0, align 4
@RC_PROTO_RC6_6A_32 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"RC6(6A) unsupported length\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"RC6(6A) proto 0x%04x, scancode 0x%08x (toggle: %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"RC6 decode failed at state %i (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_rc6_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rc6_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.rc6_dec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %14 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.rc6_dec* %17, %struct.rc6_dec** %7, align 8
  %18 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @is_timing_event(i64 %20, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %31 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %30, i32 0, i32 0
  store i32 131, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %25
  store i32 0, i32* %4, align 4
  br label %382

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RC6_UNIT, align 4
  %37 = load i32, i32* @RC6_UNIT, align 4
  %38 = sdiv i32 %37, 2
  %39 = call i64 @geq_margin(i32 %35, i32 %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %365

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %270, %251, %199, %146, %42
  %44 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %45 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %44, i32 0, i32 0
  %46 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %47 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @TO_US(i32 %50)
  %52 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @TO_STR(i32 %53)
  %55 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RC6_UNIT, align 4
  %59 = load i32, i32* @RC6_UNIT, align 4
  %60 = sdiv i32 %59, 2
  %61 = call i64 @geq_margin(i32 %57, i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %382

64:                                               ; preds = %43
  %65 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %66 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %364 [
    i32 131, label %68
    i32 130, label %86
    i32 132, label %105
    i32 133, label %134
    i32 128, label %149
    i32 129, label %165
    i32 135, label %200
    i32 136, label %256
    i32 134, label %273
  ]

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %364

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RC6_PREFIX_PULSE, align 4
  %77 = load i32, i32* @RC6_UNIT, align 4
  %78 = call i32 @eq_margin(i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %364

81:                                               ; preds = %73
  %82 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %83 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %82, i32 0, i32 0
  store i32 130, i32* %83, align 4
  %84 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %85 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  store i32 0, i32* %4, align 4
  br label %382

86:                                               ; preds = %64
  %87 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %364

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @RC6_PREFIX_SPACE, align 4
  %95 = load i32, i32* @RC6_UNIT, align 4
  %96 = sdiv i32 %95, 2
  %97 = call i32 @eq_margin(i32 %93, i32 %94, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %364

100:                                              ; preds = %91
  %101 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %102 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %101, i32 0, i32 0
  store i32 132, i32* %102, align 4
  %103 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %104 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %103, i32 0, i32 2
  store i32 0, i32* %104, align 4
  store i32 0, i32* %4, align 4
  br label %382

105:                                              ; preds = %64
  %106 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @RC6_BIT_START, align 4
  %109 = load i32, i32* @RC6_UNIT, align 4
  %110 = sdiv i32 %109, 2
  %111 = call i32 @eq_margin(i32 %107, i32 %108, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  br label %364

114:                                              ; preds = %105
  %115 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %116 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %124 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %114
  %128 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %129 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %133 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %132, i32 0, i32 0
  store i32 133, i32* %133, align 4
  store i32 0, i32* %4, align 4
  br label %382

134:                                              ; preds = %64
  %135 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %136 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @RC6_HEADER_NBITS, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %142 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %141, i32 0, i32 0
  store i32 128, i32* %142, align 4
  br label %146

143:                                              ; preds = %134
  %144 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %145 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %144, i32 0, i32 0
  store i32 132, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32, i32* @RC6_BIT_END, align 4
  %148 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %147)
  br label %43

149:                                              ; preds = %64
  %150 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @RC6_TOGGLE_START, align 4
  %153 = load i32, i32* @RC6_UNIT, align 4
  %154 = sdiv i32 %153, 2
  %155 = call i32 @eq_margin(i32 %151, i32 %152, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %149
  br label %364

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %162 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %164 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %163, i32 0, i32 0
  store i32 129, i32* %164, align 4
  store i32 0, i32* %4, align 4
  br label %382

165:                                              ; preds = %64
  %166 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %167 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @RC6_STARTBIT_MASK, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %165
  %173 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %174 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %173, i32 0, i32 0
  %175 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %364

176:                                              ; preds = %165
  %177 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %178 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %177, i32 0, i32 0
  store i32 135, i32* %178, align 4
  %179 = load i32, i32* @RC6_TOGGLE_END, align 4
  %180 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %179)
  %181 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %182 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %181, i32 0, i32 1
  store i32 0, i32* %182, align 4
  %183 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %184 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %183, i32 0, i32 4
  store i32 0, i32* %184, align 4
  %185 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %186 = call i32 @rc6_mode(%struct.rc6_dec* %185)
  switch i32 %186, label %195 [
    i32 138, label %187
    i32 137, label %191
  ]

187:                                              ; preds = %176
  %188 = load i32, i32* @RC6_0_NBITS, align 4
  %189 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %190 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  br label %199

191:                                              ; preds = %176
  %192 = load i32, i32* @RC6_6A_NBITS, align 4
  %193 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %194 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 4
  br label %199

195:                                              ; preds = %176
  %196 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %197 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %196, i32 0, i32 0
  %198 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %197, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %365

199:                                              ; preds = %191, %187
  br label %43

200:                                              ; preds = %64
  %201 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @RC6_BIT_START, align 4
  %204 = load i32, i32* @RC6_UNIT, align 4
  %205 = sdiv i32 %204, 2
  %206 = call i32 @eq_margin(i32 %202, i32 %203, i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %235

208:                                              ; preds = %200
  %209 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %210 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = sext i32 %211 to i64
  %214 = load i32, i32* @CHAR_BIT, align 4
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 4
  %217 = icmp ult i64 %213, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %208
  %219 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %220 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 1
  store i32 %222, i32* %220, align 4
  %223 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %218
  %227 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %228 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, 1
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %226, %218
  br label %232

232:                                              ; preds = %231, %208
  %233 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %234 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %233, i32 0, i32 0
  store i32 136, i32* %234, align 4
  store i32 0, i32* %4, align 4
  br label %382

235:                                              ; preds = %200
  %236 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %237 = call i32 @rc6_mode(%struct.rc6_dec* %236)
  %238 = icmp eq i32 137, %237
  br i1 %238, label %239, label %254

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %254, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @RC6_SUFFIX_SPACE, align 4
  %247 = load i32, i32* @RC6_UNIT, align 4
  %248 = sdiv i32 %247, 2
  %249 = call i64 @geq_margin(i32 %245, i32 %246, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %253 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %252, i32 0, i32 0
  store i32 134, i32* %253, align 4
  br label %43

254:                                              ; preds = %243, %239, %235
  br label %255

255:                                              ; preds = %254
  br label %364

256:                                              ; preds = %64
  %257 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %258 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %261 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %259, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %256
  %265 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %266 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %265, i32 0, i32 0
  store i32 134, i32* %266, align 4
  br label %270

267:                                              ; preds = %256
  %268 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %269 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %268, i32 0, i32 0
  store i32 135, i32* %269, align 4
  br label %270

270:                                              ; preds = %267, %264
  %271 = load i32, i32* @RC6_BIT_END, align 4
  %272 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %271)
  br label %43

273:                                              ; preds = %64
  %274 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  br label %364

278:                                              ; preds = %273
  %279 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %280 = call i32 @rc6_mode(%struct.rc6_dec* %279)
  switch i32 %280, label %352 [
    i32 138, label %281
    i32 137, label %294
  ]

281:                                              ; preds = %278
  %282 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %283 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %8, align 4
  %285 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %286 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %9, align 4
  %288 = load i32, i32* @RC_PROTO_RC6_0, align 4
  store i32 %288, i32* %10, align 4
  %289 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %290 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %289, i32 0, i32 0
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* %9, align 4
  %293 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %290, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %291, i32 %292)
  br label %356

294:                                              ; preds = %278
  %295 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %296 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = load i32, i32* @CHAR_BIT, align 4
  %300 = sext i32 %299 to i64
  %301 = mul i64 %300, 4
  %302 = icmp ugt i64 %298, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %294
  %304 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %305 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %304, i32 0, i32 0
  %306 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %307 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %305, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %308)
  br label %365

310:                                              ; preds = %294
  %311 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %312 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %8, align 4
  %314 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %315 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  switch i32 %316, label %341 [
    i32 20, label %317
    i32 24, label %319
    i32 32, label %321
  ]

317:                                              ; preds = %310
  %318 = load i32, i32* @RC_PROTO_RC6_6A_20, align 4
  store i32 %318, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %345

319:                                              ; preds = %310
  %320 = load i32, i32* @RC_PROTO_RC6_6A_24, align 4
  store i32 %320, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %345

321:                                              ; preds = %310
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @RC6_6A_LCC_MASK, align 4
  %324 = and i32 %322, %323
  switch i32 %324, label %338 [
    i32 140, label %325
    i32 141, label %325
    i32 139, label %325
  ]

325:                                              ; preds = %321, %321, %321
  %326 = load i32, i32* @RC_PROTO_RC6_MCE, align 4
  store i32 %326, i32* %10, align 4
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @RC6_6A_MCE_TOGGLE_MASK, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  %331 = xor i1 %330, true
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  store i32 %333, i32* %9, align 4
  %334 = load i32, i32* @RC6_6A_MCE_TOGGLE_MASK, align 4
  %335 = xor i32 %334, -1
  %336 = load i32, i32* %8, align 4
  %337 = and i32 %336, %335
  store i32 %337, i32* %8, align 4
  br label %340

338:                                              ; preds = %321
  %339 = load i32, i32* @RC_PROTO_RC6_6A_32, align 4
  store i32 %339, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %340

340:                                              ; preds = %338, %325
  br label %345

341:                                              ; preds = %310
  %342 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %343 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %342, i32 0, i32 0
  %344 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %343, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %365

345:                                              ; preds = %340, %319, %317
  %346 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %347 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %346, i32 0, i32 0
  %348 = load i32, i32* %10, align 4
  %349 = load i32, i32* %8, align 4
  %350 = load i32, i32* %9, align 4
  %351 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %347, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %348, i32 %349, i32 %350)
  br label %356

352:                                              ; preds = %278
  %353 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %354 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %353, i32 0, i32 0
  %355 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %354, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %365

356:                                              ; preds = %345, %281
  %357 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %358 = load i32, i32* %10, align 4
  %359 = load i32, i32* %8, align 4
  %360 = load i32, i32* %9, align 4
  %361 = call i32 @rc_keydown(%struct.rc_dev* %357, i32 %358, i32 %359, i32 %360)
  %362 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %363 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %362, i32 0, i32 0
  store i32 131, i32* %363, align 4
  store i32 0, i32* %4, align 4
  br label %382

364:                                              ; preds = %64, %277, %255, %172, %157, %113, %99, %90, %80, %72
  br label %365

365:                                              ; preds = %364, %352, %341, %303, %195, %41
  %366 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %367 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %366, i32 0, i32 0
  %368 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %369 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @TO_US(i32 %372)
  %374 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = call i32 @TO_STR(i32 %375)
  %377 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %367, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %370, i32 %373, i32 %376)
  %378 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %379 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %378, i32 0, i32 0
  store i32 131, i32* %379, align 4
  %380 = load i32, i32* @EINVAL, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %4, align 4
  br label %382

382:                                              ; preds = %365, %356, %232, %158, %127, %100, %81, %63, %32
  %383 = load i32, i32* %4, align 4
  ret i32 %383
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i64 @geq_margin(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @decrease_duration(%struct.ir_raw_event*, i32) #1

declare dso_local i32 @rc6_mode(%struct.rc6_dec*) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
