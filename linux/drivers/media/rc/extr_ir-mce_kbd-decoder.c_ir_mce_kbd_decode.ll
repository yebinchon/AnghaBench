; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-mce_kbd-decoder.c_ir_mce_kbd_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-mce_kbd-decoder.c_ir_mce_kbd_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mce_kbd_dec }
%struct.mce_kbd_dec = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }
%struct.lirc_scancode = type { i32, i32 }

@MCIR2_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"started at state %i (%uus %s)\0A\00", align 1
@MCIR2_PREFIX_PULSE = common dso_local global i32 0, align 4
@MCIR2_MAX_LEN = common dso_local global i32 0, align 4
@MCIR2_BIT_END = common dso_local global i32 0, align 4
@MCIR2_HEADER_NBITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"not keyboard or mouse data\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"keyboard data 0x%08x\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@RC_PROTO_MCIR2_KBD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"mouse data 0x%06x\0A\00", align 1
@RC_PROTO_MCIR2_MSE = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed at state %i (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_mce_kbd_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_mce_kbd_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.mce_kbd_dec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.lirc_scancode, align 4
  %11 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %14 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.mce_kbd_dec* %17, %struct.mce_kbd_dec** %7, align 8
  %18 = bitcast %struct.lirc_scancode* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @is_timing_event(i64 %21, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %32 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %31, i32 0, i32 0
  store i32 128, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %26
  store i32 0, i32* %4, align 4
  br label %302

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MCIR2_UNIT, align 4
  %38 = load i32, i32* @MCIR2_UNIT, align 4
  %39 = sdiv i32 %38, 2
  %40 = call i64 @geq_margin(i32 %36, i32 %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %285

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %192, %142, %126, %43
  %45 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %46 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %45, i32 0, i32 0
  %47 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %48 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @TO_US(i32 %51)
  %53 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @TO_STR(i32 %54)
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  %57 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MCIR2_UNIT, align 4
  %60 = load i32, i32* @MCIR2_UNIT, align 4
  %61 = sdiv i32 %60, 2
  %62 = call i64 @geq_margin(i32 %58, i32 %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %302

65:                                               ; preds = %44
  %66 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %67 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %284 [
    i32 128, label %69
    i32 129, label %89
    i32 130, label %118
    i32 132, label %149
    i32 133, label %178
    i32 131, label %195
  ]

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %284

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MCIR2_PREFIX_PULSE, align 4
  %78 = load i32, i32* @MCIR2_UNIT, align 4
  %79 = call i32 @eq_margin(i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %284

82:                                               ; preds = %74
  %83 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %84 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %83, i32 0, i32 0
  store i32 129, i32* %84, align 4
  %85 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %86 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %88 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %87, i32 0, i32 2
  store i32 0, i32* %88, align 4
  store i32 0, i32* %4, align 4
  br label %302

89:                                               ; preds = %65
  %90 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MCIR2_MAX_LEN, align 4
  %93 = load i32, i32* @MCIR2_UNIT, align 4
  %94 = sdiv i32 %93, 2
  %95 = call i64 @geq_margin(i32 %91, i32 %92, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %284

98:                                               ; preds = %89
  %99 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %100 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %108 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %98
  %112 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %113 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %117 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %116, i32 0, i32 0
  store i32 130, i32* %117, align 4
  store i32 0, i32* %4, align 4
  br label %302

118:                                              ; preds = %65
  %119 = load i32, i32* @MCIR2_BIT_END, align 4
  %120 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %119)
  %121 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %122 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MCIR2_HEADER_NBITS, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %128 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %127, i32 0, i32 0
  store i32 129, i32* %128, align 4
  br label %44

129:                                              ; preds = %118
  %130 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %131 = call i32 @mce_kbd_mode(%struct.mce_kbd_dec* %130)
  switch i32 %131, label %138 [
    i32 136, label %132
    i32 135, label %135
  ]

132:                                              ; preds = %129
  %133 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %134 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %133, i32 0, i32 3
  store i32 137, i32* %134, align 4
  br label %142

135:                                              ; preds = %129
  %136 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %137 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %136, i32 0, i32 3
  store i32 134, i32* %137, align 4
  br label %142

138:                                              ; preds = %129
  %139 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %140 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %139, i32 0, i32 0
  %141 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %285

142:                                              ; preds = %135, %132
  %143 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %144 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  %145 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %146 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %145, i32 0, i32 4
  store i32 0, i32* %146, align 4
  %147 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %148 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %147, i32 0, i32 0
  store i32 132, i32* %148, align 4
  br label %44

149:                                              ; preds = %65
  %150 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @MCIR2_MAX_LEN, align 4
  %153 = load i32, i32* @MCIR2_UNIT, align 4
  %154 = sdiv i32 %153, 2
  %155 = call i64 @geq_margin(i32 %151, i32 %152, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %284

158:                                              ; preds = %149
  %159 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %160 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %168 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %166, %158
  %172 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %173 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %177 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %176, i32 0, i32 0
  store i32 133, i32* %177, align 4
  store i32 0, i32* %4, align 4
  br label %302

178:                                              ; preds = %65
  %179 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %180 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %183 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %181, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %188 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %187, i32 0, i32 0
  store i32 131, i32* %188, align 4
  br label %192

189:                                              ; preds = %178
  %190 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %191 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %190, i32 0, i32 0
  store i32 132, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32, i32* @MCIR2_BIT_END, align 4
  %194 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %193)
  br label %44

195:                                              ; preds = %65
  %196 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %284

200:                                              ; preds = %195
  %201 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %202 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %262 [
    i32 137, label %204
    i32 134, label %248
  ]

204:                                              ; preds = %200
  %205 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %206 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 16777215
  store i32 %208, i32* %8, align 4
  %209 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %210 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %209, i32 0, i32 0
  %211 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %212 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %210, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %213)
  %215 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %216 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %215, i32 0, i32 5
  %217 = call i32 @spin_lock(i32* %216)
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %204
  %221 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %222 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @nsecs_to_jiffies(i32 %223)
  %225 = call i64 @msecs_to_jiffies(i32 100)
  %226 = add i64 %224, %225
  store i64 %226, i64* %9, align 8
  %227 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %228 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %227, i32 0, i32 6
  %229 = load i32, i32* @jiffies, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %9, align 8
  %232 = add i64 %230, %231
  %233 = trunc i64 %232 to i32
  %234 = call i32 @mod_timer(i32* %228, i32 %233)
  br label %239

235:                                              ; preds = %204
  %236 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %237 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %236, i32 0, i32 6
  %238 = call i32 @del_timer(i32* %237)
  br label %239

239:                                              ; preds = %235, %220
  %240 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @ir_mce_kbd_process_keyboard_data(%struct.rc_dev* %240, i32 %241)
  %243 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %244 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %243, i32 0, i32 5
  %245 = call i32 @spin_unlock(i32* %244)
  %246 = load i32, i32* @RC_PROTO_MCIR2_KBD, align 4
  %247 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %10, i32 0, i32 1
  store i32 %246, i32* %247, align 4
  br label %266

248:                                              ; preds = %200
  %249 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %250 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 2097151
  store i32 %252, i32* %8, align 4
  %253 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %254 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %253, i32 0, i32 0
  %255 = load i32, i32* %8, align 4
  %256 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %254, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %255)
  %257 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @ir_mce_kbd_process_mouse_data(%struct.rc_dev* %257, i32 %258)
  %260 = load i32, i32* @RC_PROTO_MCIR2_MSE, align 4
  %261 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %10, i32 0, i32 1
  store i32 %260, i32* %261, align 4
  br label %266

262:                                              ; preds = %200
  %263 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %264 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %263, i32 0, i32 0
  %265 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %264, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %285

266:                                              ; preds = %248, %239
  %267 = load i32, i32* %8, align 4
  %268 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %10, i32 0, i32 0
  store i32 %267, i32* %268, align 4
  %269 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %270 = call i32 @ir_lirc_scancode_event(%struct.rc_dev* %269, %struct.lirc_scancode* %10)
  %271 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %272 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %271, i32 0, i32 0
  store i32 128, i32* %272, align 4
  %273 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %274 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @EV_MSC, align 4
  %277 = load i32, i32* @MSC_SCAN, align 4
  %278 = load i32, i32* %8, align 4
  %279 = call i32 @input_event(i32 %275, i32 %276, i32 %277, i32 %278)
  %280 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %281 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @input_sync(i32 %282)
  store i32 0, i32* %4, align 4
  br label %302

284:                                              ; preds = %65, %199, %157, %97, %81, %73
  br label %285

285:                                              ; preds = %284, %262, %138, %42
  %286 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %287 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %286, i32 0, i32 0
  %288 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %289 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @TO_US(i32 %292)
  %294 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @TO_STR(i32 %295)
  %297 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %287, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %290, i32 %293, i32 %296)
  %298 = load %struct.mce_kbd_dec*, %struct.mce_kbd_dec** %7, align 8
  %299 = getelementptr inbounds %struct.mce_kbd_dec, %struct.mce_kbd_dec* %298, i32 0, i32 0
  store i32 128, i32* %299, align 4
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %285, %266, %171, %111, %82, %64, %33
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_timing_event(i64, i64) #2

declare dso_local i64 @geq_margin(i32, i32, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @TO_US(i32) #2

declare dso_local i32 @TO_STR(i32) #2

declare dso_local i32 @eq_margin(i32, i32, i32) #2

declare dso_local i32 @decrease_duration(%struct.ir_raw_event*, i32) #2

declare dso_local i32 @mce_kbd_mode(%struct.mce_kbd_dec*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i64 @nsecs_to_jiffies(i32) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @mod_timer(i32*, i32) #2

declare dso_local i32 @del_timer(i32*) #2

declare dso_local i32 @ir_mce_kbd_process_keyboard_data(%struct.rc_dev*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @ir_mce_kbd_process_mouse_data(%struct.rc_dev*, i32) #2

declare dso_local i32 @ir_lirc_scancode_event(%struct.rc_dev*, %struct.lirc_scancode*) #2

declare dso_local i32 @input_event(i32, i32, i32, i32) #2

declare dso_local i32 @input_sync(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
