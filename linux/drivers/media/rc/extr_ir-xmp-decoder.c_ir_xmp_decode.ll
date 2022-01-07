; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-xmp-decoder.c_ir_xmp_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-xmp-decoder.c_ir_xmp_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xmp_dec }
%struct.xmp_dec = type { i32, i32, i32* }
%struct.ir_raw_event = type { i32, i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"XMP decode started at state %d %d (%uus %s)\0A\00", align 1
@XMP_LEADER = common dso_local global i32 0, align 4
@XMP_UNIT = common dso_local global i32 0, align 4
@XMP_TRAILER_SPACE = common dso_local global i32 0, align 4
@XMP_NIBBLE_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"received TRAILER period at index %d: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"divider to small %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"checksum errors sum1=0x%X sum2=0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"subaddress nibbles mismatch 0x%02X != 0x%02X\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Warning: OEM nibbles 0x%02X. Expected 0x44\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"XMP scancode 0x%06x\0A\00", align 1
@RC_PROTO_XMP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Repeat last key\0A\00", align 1
@XMP_HALFFRAME_SPACE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [80 x i8] c"received half frame pulse at index %d. Probably a final frame key-up event: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"received half frame pulse at index %d: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"to many pulses (%d) ignoring: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"XMP decode failed at count %d state %d (%uus %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_xmp_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_xmp_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.xmp_dec*, align 8
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
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  store i64 %1, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  store i64 %2, i64* %23, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %24 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %25 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.xmp_dec* %27, %struct.xmp_dec** %7, align 8
  %28 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @is_timing_event(i64 %30, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %41 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %40, i32 0, i32 0
  store i32 130, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %35
  store i32 0, i32* %4, align 4
  br label %463

43:                                               ; preds = %3
  %44 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %45 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %44, i32 0, i32 0
  %46 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %47 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %50 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @TO_US(i32 %53)
  %55 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @TO_STR(i32 %56)
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54, i32 %57)
  %59 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %60 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %443 [
    i32 130, label %62
    i32 129, label %81
    i32 128, label %98
  ]

62:                                               ; preds = %43
  %63 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %443

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @XMP_LEADER, align 4
  %71 = load i32, i32* @XMP_UNIT, align 4
  %72 = sdiv i32 %71, 2
  %73 = call i32 @eq_margin(i32 %69, i32 %70, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %77 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %79 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %78, i32 0, i32 0
  store i32 128, i32* %79, align 8
  br label %80

80:                                               ; preds = %75, %67
  store i32 0, i32* %4, align 4
  br label %463

81:                                               ; preds = %43
  %82 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %443

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @XMP_LEADER, align 4
  %90 = load i32, i32* @XMP_UNIT, align 4
  %91 = sdiv i32 %90, 2
  %92 = call i32 @eq_margin(i32 %88, i32 %89, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %96 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %95, i32 0, i32 0
  store i32 128, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %86
  store i32 0, i32* %4, align 4
  br label %463

98:                                               ; preds = %43
  %99 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %443

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @XMP_TRAILER_SPACE, align 4
  %107 = load i32, i32* @XMP_NIBBLE_PREFIX, align 4
  %108 = call i32 @geq_margin(i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %357

110:                                              ; preds = %103
  %111 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %112 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 16
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %117 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %116, i32 0, i32 0
  %118 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %119 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %122)
  %124 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %125 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %124, i32 0, i32 0
  store i32 130, i32* %125, align 8
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %463

128:                                              ; preds = %110
  %129 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %130 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %19, align 8
  %132 = load i32*, i32** %19, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @XMP_NIBBLE_PREFIX, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sdiv i32 %136, 15
  %138 = sub nsw i32 %137, 2000
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 50
  br i1 %140, label %141, label %150

141:                                              ; preds = %128
  %142 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %143 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %8, align 4
  %145 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %147 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %146, i32 0, i32 0
  store i32 130, i32* %147, align 8
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %463

150:                                              ; preds = %128
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %168, %150
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 16
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load i32*, i32** %19, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @XMP_NIBBLE_PREFIX, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* %8, align 4
  %163 = sdiv i32 %161, %162
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %154
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %151

171:                                              ; preds = %151
  %172 = load i32*, i32** %19, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 15, %174
  %176 = load i32*, i32** %19, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %175, %178
  %180 = load i32*, i32** %19, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %179, %182
  %184 = load i32*, i32** %19, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %183, %186
  %188 = load i32*, i32** %19, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 4
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %187, %190
  %192 = load i32*, i32** %19, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 5
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %191, %194
  %196 = load i32*, i32** %19, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 6
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %195, %198
  %200 = load i32*, i32** %19, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 7
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %199, %202
  %204 = srem i32 %203, 16
  store i32 %204, i32* %17, align 4
  %205 = load i32*, i32** %19, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 8
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 15, %207
  %209 = load i32*, i32** %19, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 9
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %208, %211
  %213 = load i32*, i32** %19, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 10
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %212, %215
  %217 = load i32*, i32** %19, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 11
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %216, %219
  %221 = load i32*, i32** %19, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 12
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %220, %223
  %225 = load i32*, i32** %19, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 13
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %224, %227
  %229 = load i32*, i32** %19, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 14
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %228, %231
  %233 = load i32*, i32** %19, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 15
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %232, %235
  %237 = srem i32 %236, 16
  store i32 %237, i32* %18, align 4
  %238 = load i32, i32* %17, align 4
  %239 = icmp ne i32 %238, 15
  br i1 %239, label %243, label %240

240:                                              ; preds = %171
  %241 = load i32, i32* %18, align 4
  %242 = icmp ne i32 %241, 15
  br i1 %242, label %243, label %253

243:                                              ; preds = %240, %171
  %244 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %245 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %244, i32 0, i32 0
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %18, align 4
  %248 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %245, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %246, i32 %247)
  %249 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %250 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %249, i32 0, i32 0
  store i32 130, i32* %250, align 8
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %4, align 4
  br label %463

253:                                              ; preds = %240
  %254 = load i32*, i32** %19, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = shl i32 %256, 4
  %258 = load i32*, i32** %19, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %257, %260
  store i32 %261, i32* %11, align 4
  %262 = load i32*, i32** %19, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 8
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %264, 4
  %266 = load i32*, i32** %19, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 11
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %265, %268
  store i32 %269, i32* %12, align 4
  %270 = load i32*, i32** %19, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 4
  %272 = load i32, i32* %271, align 4
  %273 = shl i32 %272, 4
  %274 = load i32*, i32** %19, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 5
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %273, %276
  store i32 %277, i32* %14, align 4
  %278 = load i32*, i32** %19, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 6
  %280 = load i32, i32* %279, align 4
  %281 = shl i32 %280, 4
  %282 = load i32*, i32** %19, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 7
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %281, %284
  store i32 %285, i32* %10, align 4
  %286 = load i32*, i32** %19, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 10
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %13, align 4
  %289 = load i32*, i32** %19, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 12
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 %291, 4
  %293 = load i32*, i32** %19, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 13
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %292, %295
  store i32 %296, i32* %15, align 4
  %297 = load i32*, i32** %19, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 14
  %299 = load i32, i32* %298, align 4
  %300 = shl i32 %299, 4
  %301 = load i32*, i32** %19, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 15
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %300, %303
  store i32 %304, i32* %16, align 4
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* %12, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %318

308:                                              ; preds = %253
  %309 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %310 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %309, i32 0, i32 0
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* %12, align 4
  %313 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %310, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %311, i32 %312)
  %314 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %315 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %314, i32 0, i32 0
  store i32 130, i32* %315, align 8
  %316 = load i32, i32* @EINVAL, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %4, align 4
  br label %463

318:                                              ; preds = %253
  %319 = load i32, i32* %14, align 4
  %320 = icmp ne i32 %319, 68
  br i1 %320, label %321, label %326

321:                                              ; preds = %318
  %322 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %323 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %322, i32 0, i32 0
  %324 = load i32, i32* %14, align 4
  %325 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %323, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %321, %318
  %327 = load i32, i32* %10, align 4
  %328 = shl i32 %327, 24
  %329 = load i32, i32* %11, align 4
  %330 = shl i32 %329, 16
  %331 = or i32 %328, %330
  %332 = load i32, i32* %15, align 4
  %333 = shl i32 %332, 8
  %334 = or i32 %331, %333
  %335 = load i32, i32* %16, align 4
  %336 = or i32 %334, %335
  store i32 %336, i32* %20, align 4
  %337 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %338 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %337, i32 0, i32 0
  %339 = load i32, i32* %20, align 4
  %340 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %338, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %339)
  %341 = load i32, i32* %13, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %326
  %344 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %345 = load i32, i32* @RC_PROTO_XMP, align 4
  %346 = load i32, i32* %20, align 4
  %347 = call i32 @rc_keydown(%struct.rc_dev* %344, i32 %345, i32 %346, i32 0)
  br label %354

348:                                              ; preds = %326
  %349 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %350 = call i32 @rc_repeat(%struct.rc_dev* %349)
  %351 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %352 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %351, i32 0, i32 0
  %353 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %352, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %354

354:                                              ; preds = %348, %343
  %355 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %356 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %355, i32 0, i32 0
  store i32 130, i32* %356, align 8
  store i32 0, i32* %4, align 4
  br label %463

357:                                              ; preds = %103
  %358 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @XMP_HALFFRAME_SPACE, align 4
  %361 = load i32, i32* @XMP_NIBBLE_PREFIX, align 4
  %362 = call i32 @geq_margin(i32 %359, i32 %360, i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %398

364:                                              ; preds = %357
  %365 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %366 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = icmp eq i32 %367, 16
  br i1 %368, label %369, label %380

369:                                              ; preds = %364
  %370 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %371 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %370, i32 0, i32 0
  %372 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %373 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %371, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i64 0, i64 0), i32 %374, i32 %376)
  %378 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %379 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %378, i32 0, i32 1
  store i32 8, i32* %379, align 4
  br label %395

380:                                              ; preds = %364
  %381 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %382 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 8
  br i1 %384, label %385, label %394

385:                                              ; preds = %380
  %386 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %387 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %386, i32 0, i32 0
  %388 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %389 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %387, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %390, i32 %392)
  br label %394

394:                                              ; preds = %385, %380
  br label %395

395:                                              ; preds = %394, %369
  %396 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %397 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %396, i32 0, i32 0
  store i32 129, i32* %397, align 8
  store i32 0, i32* %4, align 4
  br label %463

398:                                              ; preds = %357
  %399 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @XMP_NIBBLE_PREFIX, align 4
  %402 = load i32, i32* @XMP_UNIT, align 4
  %403 = call i32 @geq_margin(i32 %400, i32 %401, i32 %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %440

405:                                              ; preds = %398
  %406 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %407 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %408, 16
  br i1 %409, label %410, label %423

410:                                              ; preds = %405
  %411 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %412 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %411, i32 0, i32 0
  %413 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %414 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %412, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %415, i32 %417)
  %419 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %420 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %419, i32 0, i32 0
  store i32 130, i32* %420, align 8
  %421 = load i32, i32* @EINVAL, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %4, align 4
  br label %463

423:                                              ; preds = %405
  %424 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %427 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %426, i32 0, i32 2
  %428 = load i32*, i32** %427, align 8
  %429 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %430 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %428, i64 %432
  store i32 %425, i32* %433, align 4
  %434 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %435 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %435, align 4
  %438 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %439 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %438, i32 0, i32 0
  store i32 129, i32* %439, align 8
  store i32 0, i32* %4, align 4
  br label %463

440:                                              ; preds = %398
  br label %441

441:                                              ; preds = %440
  br label %442

442:                                              ; preds = %441
  br label %443

443:                                              ; preds = %43, %442, %102, %85, %66
  %444 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %445 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %444, i32 0, i32 0
  %446 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %447 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %450 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = call i32 @TO_US(i32 %453)
  %455 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @TO_STR(i32 %456)
  %458 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %445, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %448, i32 %451, i32 %454, i32 %457)
  %459 = load %struct.xmp_dec*, %struct.xmp_dec** %7, align 8
  %460 = getelementptr inbounds %struct.xmp_dec, %struct.xmp_dec* %459, i32 0, i32 0
  store i32 130, i32* %460, align 8
  %461 = load i32, i32* @EINVAL, align 4
  %462 = sub nsw i32 0, %461
  store i32 %462, i32* %4, align 4
  br label %463

463:                                              ; preds = %443, %423, %410, %395, %354, %308, %243, %141, %115, %97, %80, %42
  %464 = load i32, i32* %4, align 4
  ret i32 %464
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @geq_margin(i32, i32, i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

declare dso_local i32 @rc_repeat(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
