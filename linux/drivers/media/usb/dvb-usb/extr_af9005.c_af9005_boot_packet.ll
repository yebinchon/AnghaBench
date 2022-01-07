; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_boot_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_boot_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@FW_BULKOUT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"boot packet invalid boot packet type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"boot packet bulk message failed: %d (%d/%d)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"boot packet recv bulk message failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"<<< \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"boot bad config header.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"boot bad config size.\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"boot bad config sequence.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"boot bad config subtype.\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"boot bad config checksum.\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"boot bad confirm header.\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"boot bad confirm size.\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"boot bad confirm sequence.\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"boot bad confirm subtype.\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"boot bad confirm checksum.\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"boot bad boot header.\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"boot bad boot size.\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"boot bad boot sequence.\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"boot bad boot pattern 01.\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"boot bad boot pattern 10.\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"boot bad boot checksum.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32*, i32*, i32)* @af9005_boot_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_boot_packet(%struct.usb_device* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @memset(i32* %16, i32 0, i32 %17)
  %19 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %20 = and i32 %19, 255
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %120 [
    i32 129, label %29
    i32 128, label %54
    i32 130, label %79
  ]

29:                                               ; preds = %5
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 17, i32* %31, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32 4, i32* %33, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 3, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, 255
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  store i32 %51, i32* %53, align 4
  br label %124

54:                                               ; preds = %5
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 17, i32* %56, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 4, i32* %58, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  store i32 1, i32* %62, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 6
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  store i32 %76, i32* %78, align 4
  br label %124

79:                                               ; preds = %5
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 16, i32* %81, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 8, i32* %83, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 0, i32* %85, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  store i32 151, i32* %87, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 6
  store i32 170, i32* %89, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 7
  store i32 85, i32* %91, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 8
  store i32 165, i32* %93, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 9
  store i32 90, i32* %95, align 4
  store i32 0, i32* %12, align 4
  store i32 4, i32* %14, align 4
  br label %96

96:                                               ; preds = %107, %79
  %97 = load i32, i32* %14, align 4
  %98 = icmp sle i32 %97, 9
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %96

110:                                              ; preds = %96
  %111 = load i32, i32* %12, align 4
  %112 = ashr i32 %111, 8
  %113 = and i32 %112, 255
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 10
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %116, 255
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 11
  store i32 %117, i32* %119, align 4
  br label %124

120:                                              ; preds = %5
  %121 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %6, align 4
  br label %396

124:                                              ; preds = %110, %54, %29
  %125 = call i32 @deb_fw(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %128 = add nsw i32 %127, 2
  %129 = call i32 @debug_dump(i32* %126, i32 %128, i32 (i8*)* @deb_fw)
  %130 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %131 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %132 = call i32 @usb_sndbulkpipe(%struct.usb_device* %131, i32 2)
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %135 = add nsw i32 %134, 2
  %136 = call i32 @usb_bulk_msg(%struct.usb_device* %130, i32 %132, i32* %133, i32 %135, i32* %13, i32 2000)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %124
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %142 = add nsw i32 %141, 2
  %143 = load i32, i32* %13, align 4
  %144 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %142, i32 %143)
  br label %152

145:                                              ; preds = %124
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %148 = add nsw i32 %147, 2
  %149 = icmp ne i32 %146, %148
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 -1, i32 0
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %145, %139
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %15, align 4
  store i32 %156, i32* %6, align 4
  br label %396

157:                                              ; preds = %152
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @memset(i32* %158, i32 0, i32 9)
  %160 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %161 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %162 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %161, i32 1)
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @usb_bulk_msg(%struct.usb_device* %160, i32 %162, i32* %163, i32 9, i32* %13, i32 2000)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = load i32, i32* %15, align 4
  %169 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %15, align 4
  store i32 %170, i32* %6, align 4
  br label %396

171:                                              ; preds = %157
  %172 = call i32 @deb_fw(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @debug_dump(i32* %173, i32 %174, i32 (i8*)* @deb_fw)
  store i32 0, i32* %12, align 4
  %176 = load i32, i32* %8, align 4
  switch i32 %176, label %395 [
    i32 129, label %177
    i32 128, label %248
    i32 130, label %319
  ]

177:                                              ; preds = %171
  %178 = load i32*, i32** %10, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 17
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %6, align 4
  br label %396

186:                                              ; preds = %177
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 5
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %6, align 4
  br label %396

195:                                              ; preds = %186
  %196 = load i32*, i32** %10, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %202 = load i32, i32* @EIO, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %6, align 4
  br label %396

204:                                              ; preds = %195
  %205 = load i32*, i32** %10, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 5
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 4
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %211 = load i32, i32* @EIO, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %6, align 4
  br label %396

213:                                              ; preds = %204
  store i32 4, i32* %14, align 4
  br label %214

214:                                              ; preds = %225, %213
  %215 = load i32, i32* %14, align 4
  %216 = icmp sle i32 %215, 6
  br i1 %216, label %217, label %228

217:                                              ; preds = %214
  %218 = load i32*, i32** %10, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %12, align 4
  br label %225

225:                                              ; preds = %217
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %214

228:                                              ; preds = %214
  %229 = load i32*, i32** %10, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 7
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %231, 256
  %233 = load i32*, i32** %10, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 8
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %232, %235
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %228
  %240 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %241 = load i32, i32* @EIO, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %6, align 4
  br label %396

243:                                              ; preds = %228
  %244 = load i32*, i32** %10, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 6
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %9, align 8
  store i32 %246, i32* %247, align 4
  br label %395

248:                                              ; preds = %171
  %249 = load i32*, i32** %10, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 17
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %255 = load i32, i32* @EIO, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %6, align 4
  br label %396

257:                                              ; preds = %248
  %258 = load i32*, i32** %10, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 3
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 5
  br i1 %261, label %262, label %266

262:                                              ; preds = %257
  %263 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %264 = load i32, i32* @EIO, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %6, align 4
  br label %396

266:                                              ; preds = %257
  %267 = load i32*, i32** %10, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 4
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %266
  %272 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %273 = load i32, i32* @EIO, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %6, align 4
  br label %396

275:                                              ; preds = %266
  %276 = load i32*, i32** %10, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 5
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 2
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %282 = load i32, i32* @EIO, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %6, align 4
  br label %396

284:                                              ; preds = %275
  store i32 4, i32* %14, align 4
  br label %285

285:                                              ; preds = %296, %284
  %286 = load i32, i32* %14, align 4
  %287 = icmp sle i32 %286, 6
  br i1 %287, label %288, label %299

288:                                              ; preds = %285
  %289 = load i32*, i32** %10, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %12, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %12, align 4
  br label %296

296:                                              ; preds = %288
  %297 = load i32, i32* %14, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %14, align 4
  br label %285

299:                                              ; preds = %285
  %300 = load i32*, i32** %10, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 7
  %302 = load i32, i32* %301, align 4
  %303 = mul nsw i32 %302, 256
  %304 = load i32*, i32** %10, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 8
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %303, %306
  %308 = load i32, i32* %12, align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %299
  %311 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %312 = load i32, i32* @EIO, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %6, align 4
  br label %396

314:                                              ; preds = %299
  %315 = load i32*, i32** %10, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 6
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %9, align 8
  store i32 %317, i32* %318, align 4
  br label %395

319:                                              ; preds = %171
  %320 = load i32*, i32** %10, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %322, 16
  br i1 %323, label %324, label %328

324:                                              ; preds = %319
  %325 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %326 = load i32, i32* @EIO, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %6, align 4
  br label %396

328:                                              ; preds = %319
  %329 = load i32*, i32** %10, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 3
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 5
  br i1 %332, label %333, label %337

333:                                              ; preds = %328
  %334 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %335 = load i32, i32* @EIO, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %6, align 4
  br label %396

337:                                              ; preds = %328
  %338 = load i32*, i32** %10, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 4
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %337
  %343 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %344 = load i32, i32* @EIO, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %6, align 4
  br label %396

346:                                              ; preds = %337
  %347 = load i32*, i32** %10, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 5
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 1
  br i1 %350, label %351, label %355

351:                                              ; preds = %346
  %352 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %353 = load i32, i32* @EIO, align 4
  %354 = sub nsw i32 0, %353
  store i32 %354, i32* %6, align 4
  br label %396

355:                                              ; preds = %346
  %356 = load i32*, i32** %10, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 6
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 16
  br i1 %359, label %360, label %364

360:                                              ; preds = %355
  %361 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %362 = load i32, i32* @EIO, align 4
  %363 = sub nsw i32 0, %362
  store i32 %363, i32* %6, align 4
  br label %396

364:                                              ; preds = %355
  store i32 4, i32* %14, align 4
  br label %365

365:                                              ; preds = %376, %364
  %366 = load i32, i32* %14, align 4
  %367 = icmp sle i32 %366, 6
  br i1 %367, label %368, label %379

368:                                              ; preds = %365
  %369 = load i32*, i32** %10, align 8
  %370 = load i32, i32* %14, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* %12, align 4
  %375 = add nsw i32 %374, %373
  store i32 %375, i32* %12, align 4
  br label %376

376:                                              ; preds = %368
  %377 = load i32, i32* %14, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %14, align 4
  br label %365

379:                                              ; preds = %365
  %380 = load i32*, i32** %10, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 7
  %382 = load i32, i32* %381, align 4
  %383 = mul nsw i32 %382, 256
  %384 = load i32*, i32** %10, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 8
  %386 = load i32, i32* %385, align 4
  %387 = add nsw i32 %383, %386
  %388 = load i32, i32* %12, align 4
  %389 = icmp ne i32 %387, %388
  br i1 %389, label %390, label %394

390:                                              ; preds = %379
  %391 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %392 = load i32, i32* @EIO, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %6, align 4
  br label %396

394:                                              ; preds = %379
  br label %395

395:                                              ; preds = %171, %394, %314, %243
  store i32 0, i32* %6, align 4
  br label %396

396:                                              ; preds = %395, %390, %360, %351, %342, %333, %324, %310, %280, %271, %262, %253, %239, %209, %200, %191, %182, %167, %155, %120
  %397 = load i32, i32* %6, align 4
  ret i32 %397
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @deb_fw(i8*) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
