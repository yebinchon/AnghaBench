; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_int_in_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_int_in_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, %struct.si470x_device* }
%struct.si470x_device = type { i32*, i64, i32, i32, i64, i64, %struct.TYPE_2__*, i32, i64, i32, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"non-zero urb status (%d)\0A\00", align 1
@RDS_REPORT_SIZE = common dso_local global i64 0, align 8
@STATUSRSSI = common dso_local global i64 0, align 8
@STATUSRSSI_STC = common dso_local global i32 0, align 4
@SYSCONFIG1 = common dso_local global i64 0, align 8
@SYSCONFIG1_RDS = common dso_local global i32 0, align 4
@RDS_REGISTER_NUM = common dso_local global i8 0, align 1
@RADIO_REGISTER_SIZE = common dso_local global i8 0, align 1
@STATUSRSSI_RDSR = common dso_local global i32 0, align 4
@STATUSRSSI_RDSS = common dso_local global i32 0, align 4
@STATUSRSSI_BLERA = common dso_local global i32 0, align 4
@RDSA = common dso_local global i64 0, align 8
@READCHAN = common dso_local global i64 0, align 8
@READCHAN_BLERB = common dso_local global i32 0, align 4
@RDSB = common dso_local global i64 0, align 8
@READCHAN_BLERC = common dso_local global i32 0, align 4
@RDSC = common dso_local global i64 0, align 8
@READCHAN_BLERD = common dso_local global i32 0, align 4
@RDSD = common dso_local global i64 0, align 8
@max_rds_errors = common dso_local global i16 0, align 2
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"resubmitting urb failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @si470x_int_in_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si470x_int_in_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca [3 x i8], align 1
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 2
  %12 = load %struct.si470x_device*, %struct.si470x_device** %11, align 8
  store %struct.si470x_device* %12, %struct.si470x_device** %3, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %1
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ECONNRESET, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ESHUTDOWN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %24, %17
  br label %363

39:                                               ; preds = %31
  %40 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %41 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %40, i32 0, i32 6
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %329

48:                                               ; preds = %1
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RDS_REPORT_SIZE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %329

55:                                               ; preds = %48
  %56 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %57 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %56, i32 0, i32 11
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i8* @get_unaligned_be16(i32* %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %63 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @STATUSRSSI, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %68 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @STATUSRSSI, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @STATUSRSSI_STC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %55
  %77 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %78 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %77, i32 0, i32 12
  %79 = call i32 @complete(i32* %78)
  br label %80

80:                                               ; preds = %76, %55
  %81 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %82 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @SYSCONFIG1, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SYSCONFIG1_RDS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %328

90:                                               ; preds = %80
  store i8 1, i8* %5, align 1
  br label %91

91:                                               ; preds = %119, %90
  %92 = load i8, i8* %5, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @RDS_REGISTER_NUM, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %91
  %98 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %99 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %98, i32 0, i32 11
  %100 = load i32*, i32** %99, align 8
  %101 = load i8, i8* %5, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @RADIO_REGISTER_SIZE, align 1
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 %102, %104
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %100, i64 %107
  %109 = call i8* @get_unaligned_be16(i32* %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %112 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @STATUSRSSI, align 8
  %115 = load i8, i8* %5, align 1
  %116 = zext i8 %115 to i64
  %117 = add i64 %114, %116
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  store i32 %110, i32* %118, align 4
  br label %119

119:                                              ; preds = %97
  %120 = load i8, i8* %5, align 1
  %121 = add i8 %120, 1
  store i8 %121, i8* %5, align 1
  br label %91

122:                                              ; preds = %91
  %123 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %124 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @STATUSRSSI, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @STATUSRSSI_RDSR, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %329

133:                                              ; preds = %122
  %134 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %135 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @STATUSRSSI, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @STATUSRSSI_RDSS, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %329

144:                                              ; preds = %133
  store i8 0, i8* %6, align 1
  br label %145

145:                                              ; preds = %311, %144
  %146 = load i8, i8* %6, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp slt i32 %147, 4
  br i1 %148, label %149, label %314

149:                                              ; preds = %145
  %150 = load i8, i8* %6, align 1
  %151 = zext i8 %150 to i32
  switch i32 %151, label %152 [
    i32 1, label %170
    i32 2, label %188
    i32 3, label %206
  ]

152:                                              ; preds = %149
  %153 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %154 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @STATUSRSSI, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @STATUSRSSI_BLERA, align 4
  %160 = and i32 %158, %159
  %161 = ashr i32 %160, 9
  %162 = trunc i32 %161 to i16
  store i16 %162, i16* %7, align 2
  %163 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %164 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @RDSA, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* %8, align 2
  br label %224

170:                                              ; preds = %149
  %171 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %172 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @READCHAN, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @READCHAN_BLERB, align 4
  %178 = and i32 %176, %177
  %179 = ashr i32 %178, 14
  %180 = trunc i32 %179 to i16
  store i16 %180, i16* %7, align 2
  %181 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %182 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @RDSB, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = trunc i32 %186 to i16
  store i16 %187, i16* %8, align 2
  br label %224

188:                                              ; preds = %149
  %189 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %190 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* @READCHAN, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @READCHAN_BLERC, align 4
  %196 = and i32 %194, %195
  %197 = ashr i32 %196, 12
  %198 = trunc i32 %197 to i16
  store i16 %198, i16* %7, align 2
  %199 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %200 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* @RDSC, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = trunc i32 %204 to i16
  store i16 %205, i16* %8, align 2
  br label %224

206:                                              ; preds = %149
  %207 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %208 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* @READCHAN, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @READCHAN_BLERD, align 4
  %214 = and i32 %212, %213
  %215 = ashr i32 %214, 10
  %216 = trunc i32 %215 to i16
  store i16 %216, i16* %7, align 2
  %217 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %218 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* @RDSD, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = trunc i32 %222 to i16
  store i16 %223, i16* %8, align 2
  br label %224

224:                                              ; preds = %206, %188, %170, %152
  %225 = load i16, i16* %8, align 2
  %226 = bitcast [3 x i8]* %9 to i8**
  %227 = call i32 @put_unaligned_le16(i16 zeroext %225, i8** %226)
  %228 = load i8, i8* %6, align 1
  %229 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  store i8 %228, i8* %229, align 1
  %230 = load i8, i8* %6, align 1
  %231 = zext i8 %230 to i32
  %232 = shl i32 %231, 3
  %233 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = or i32 %235, %232
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %233, align 1
  %238 = load i16, i16* %7, align 2
  %239 = zext i16 %238 to i32
  %240 = load i16, i16* @max_rds_errors, align 2
  %241 = zext i16 %240 to i32
  %242 = icmp sgt i32 %239, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %224
  %244 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = or i32 %246, 128
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %244, align 1
  br label %260

249:                                              ; preds = %224
  %250 = load i16, i16* %7, align 2
  %251 = zext i16 %250 to i32
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %249
  %254 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = or i32 %256, 64
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %254, align 1
  br label %259

259:                                              ; preds = %253, %249
  br label %260

260:                                              ; preds = %259, %243
  %261 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %262 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %261, i32 0, i32 10
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %265 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = bitcast [3 x i8]* %9 to i8**
  %269 = call i32 @memcpy(i32* %267, i8** %268, i32 3)
  %270 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %271 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = add i64 %272, 3
  store i64 %273, i64* %271, align 8
  %274 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %275 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %278 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = icmp uge i64 %276, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %260
  %283 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %284 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %283, i32 0, i32 1
  store i64 0, i64* %284, align 8
  br label %285

285:                                              ; preds = %282, %260
  %286 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %287 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %290 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = icmp eq i64 %288, %292
  br i1 %293, label %294, label %310

294:                                              ; preds = %285
  %295 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %296 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 3
  store i32 %298, i32* %296, align 4
  %299 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %300 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %303 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = icmp sge i32 %301, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %294
  %307 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %308 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %307, i32 0, i32 3
  store i32 0, i32* %308, align 4
  br label %309

309:                                              ; preds = %306, %294
  br label %310

310:                                              ; preds = %309, %285
  br label %311

311:                                              ; preds = %310
  %312 = load i8, i8* %6, align 1
  %313 = add i8 %312, 1
  store i8 %313, i8* %6, align 1
  br label %145

314:                                              ; preds = %145
  %315 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %316 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %319 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp ne i64 %317, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %314
  %324 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %325 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %324, i32 0, i32 9
  %326 = call i32 @wake_up_interruptible(i32* %325)
  br label %327

327:                                              ; preds = %323, %314
  br label %328

328:                                              ; preds = %327, %80
  br label %329

329:                                              ; preds = %328, %143, %132, %54, %39
  %330 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %331 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %357

334:                                              ; preds = %329
  %335 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %336 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %335, i32 0, i32 8
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %357

339:                                              ; preds = %334
  %340 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %341 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @GFP_ATOMIC, align 4
  %344 = call i32 @usb_submit_urb(i32 %342, i32 %343)
  store i32 %344, i32* %4, align 4
  %345 = load i32, i32* %4, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %356

347:                                              ; preds = %339
  %348 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %349 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %348, i32 0, i32 6
  %350 = load %struct.TYPE_2__*, %struct.TYPE_2__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 0
  %352 = load i32, i32* %4, align 4
  %353 = call i32 @dev_warn(i32* %351, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %352)
  %354 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %355 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %354, i32 0, i32 4
  store i64 0, i64* %355, align 8
  br label %356

356:                                              ; preds = %347, %339
  br label %357

357:                                              ; preds = %356, %334, %329
  %358 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %359 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %358, i32 0, i32 4
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %362 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %361, i32 0, i32 5
  store i64 %360, i64* %362, align 8
  br label %363

363:                                              ; preds = %357, %38
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i8* @get_unaligned_be16(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @put_unaligned_le16(i16 zeroext, i8**) #1

declare dso_local i32 @memcpy(i32*, i8**, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
