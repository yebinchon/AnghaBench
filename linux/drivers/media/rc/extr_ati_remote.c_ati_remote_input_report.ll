; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ati_remote.c_ati_remote_input_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ati_remote.c_ati_remote_input_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8, i32 }
%struct.urb = type { i32, %struct.TYPE_4__*, %struct.ati_remote* }
%struct.TYPE_4__ = type { i32 }
%struct.ati_remote = type { i8*, i64, i8, i32, i64, %struct.TYPE_5__*, i32, %struct.input_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.input_dev = type { i32 }

@KEY_RESERVED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"wrong checksum in input: %*ph\0A\00", align 1
@channel_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Masked input from channel 0x%02x: data %02x, mask= 0x%02lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"channel 0x%02x; key data %02x, scancode %02x\0A\00", align 1
@ati_remote_tbl = common dso_local global %struct.TYPE_6__* null, align 8
@KIND_END = common dso_local global i64 0, align 8
@KIND_LITERAL = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@KIND_FILTERED = common dso_local global i64 0, align 8
@repeat_filter = common dso_local global i32 0, align 4
@repeat_delay = common dso_local global i32 0, align 4
@RC_PROTO_OTHER = common dso_local global i32 0, align 4
@KIND_ACCEL = common dso_local global i64 0, align 8
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ati_remote kind=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ati_remote_input_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ati_remote_input_report(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ati_remote*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 2
  %18 = load %struct.ati_remote*, %struct.ati_remote** %17, align 8
  store %struct.ati_remote* %18, %struct.ati_remote** %3, align 8
  %19 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %20 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %4, align 8
  %22 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %23 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %22, i32 0, i32 7
  %24 = load %struct.input_dev*, %struct.input_dev** %23, align 8
  store %struct.input_dev* %24, %struct.input_dev** %5, align 8
  store i32 -1, i32* %6, align 4
  %25 = load i64, i64* @KEY_RESERVED, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %61, label %30

30:                                               ; preds = %1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 20
  br i1 %35, label %61, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %44, %48
  %50 = add nsw i32 %49, 213
  %51 = trunc i32 %50 to i8
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %40, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %36
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 15
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54, %36, %30, %1
  %62 = load %struct.urb*, %struct.urb** %2, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.urb*, %struct.urb** %2, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ati_remote_dump(i32* %65, i8* %66, i32 %69)
  br label %421

71:                                               ; preds = %54
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %79, %83
  %85 = add nsw i32 %84, 213
  %86 = and i32 %85, 255
  %87 = icmp ne i32 %75, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %71
  %89 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %90 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %89, i32 0, i32 5
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 (i32*, i8*, i32, ...) @dbginfo(i32* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 4, i8* %93)
  br label %421

95:                                               ; preds = %71
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = ashr i32 %99, 4
  %101 = and i32 %100, 15
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @channel_mask, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  %105 = shl i32 1, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %95
  %109 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %110 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %109, i32 0, i32 5
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i32, i32* @channel_mask, align 4
  %119 = call i32 (i32*, i8*, i32, ...) @dbginfo(i32* %112, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %117, i32 %118)
  br label %421

120:                                              ; preds = %95
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 127
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %8, align 1
  %127 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %128 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %127, i32 0, i32 5
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %7, align 4
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* %8, align 1
  %137 = zext i8 %136 to i32
  %138 = call i32 (i32*, i8*, i32, ...) @dbginfo(i32* %130, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %135, i32 %137)
  %139 = load i8, i8* %8, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp sge i32 %140, 112
  br i1 %141, label %142, label %183

142:                                              ; preds = %120
  %143 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %144 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load i8, i8* %8, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 120
  %149 = trunc i32 %148 to i8
  %150 = call i64 @rc_g_keycode_from_table(i32 %145, i8 zeroext %149)
  store i64 %150, i64* %9, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* @KEY_RESERVED, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %182

154:                                              ; preds = %142
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %178, %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @KIND_END, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %155
  %165 = load i8, i8* %8, align 1
  %166 = zext i8 %165 to i32
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i8, i8* %171, align 8
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %166, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %6, align 4
  br label %181

177:                                              ; preds = %164
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %155

181:                                              ; preds = %175, %155
  br label %182

182:                                              ; preds = %181, %142
  br label %183

183:                                              ; preds = %182, %120
  %184 = load i32, i32* %6, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %217

186:                                              ; preds = %183
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @KIND_LITERAL, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %217

195:                                              ; preds = %186
  %196 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %197 = load i32, i32* @EV_KEY, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %4, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 2
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = call i32 @input_event(%struct.input_dev* %196, i32 %197, i32 %203, i32 %211)
  %213 = load i8*, i8** @jiffies, align 8
  %214 = ptrtoint i8* %213 to i64
  %215 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %216 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  br label %412

217:                                              ; preds = %186, %183
  %218 = load i32, i32* %6, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %217
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @KIND_FILTERED, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %342

229:                                              ; preds = %220, %217
  %230 = load i8*, i8** @jiffies, align 8
  %231 = ptrtoint i8* %230 to i64
  store i64 %231, i64* %11, align 8
  %232 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %233 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %232, i32 0, i32 2
  %234 = load i8, i8* %233, align 8
  %235 = zext i8 %234 to i32
  %236 = load i8*, i8** %4, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 2
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp eq i32 %235, %239
  br i1 %240, label %241, label %256

241:                                              ; preds = %229
  %242 = load i64, i64* %11, align 8
  %243 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %244 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* @repeat_filter, align 4
  %247 = call i64 @msecs_to_jiffies(i32 %246)
  %248 = add i64 %245, %247
  %249 = call i64 @time_before(i64 %242, i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %241
  %252 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %253 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4
  br label %262

256:                                              ; preds = %241, %229
  %257 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %258 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %257, i32 0, i32 3
  store i32 0, i32* %258, align 4
  %259 = load i64, i64* %11, align 8
  %260 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %261 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %260, i32 0, i32 4
  store i64 %259, i64* %261, align 8
  br label %262

262:                                              ; preds = %256, %251
  %263 = load i64, i64* %11, align 8
  %264 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %265 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %264, i32 0, i32 1
  store i64 %263, i64* %265, align 8
  %266 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %267 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %286

270:                                              ; preds = %262
  %271 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %272 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %273, 5
  br i1 %274, label %285, label %275

275:                                              ; preds = %270
  %276 = load i64, i64* %11, align 8
  %277 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %278 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* @repeat_delay, align 4
  %281 = call i64 @msecs_to_jiffies(i32 %280)
  %282 = add i64 %279, %281
  %283 = call i64 @time_before(i64 %276, i64 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %275, %270
  br label %421

286:                                              ; preds = %275, %262
  %287 = load i32, i32* %6, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %308

289:                                              ; preds = %286
  %290 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %291 = load i32, i32* @EV_KEY, align 4
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @input_event(%struct.input_dev* %290, i32 %291, i32 %297, i32 1)
  %299 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %300 = load i32, i32* @EV_KEY, align 4
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @input_event(%struct.input_dev* %299, i32 %300, i32 %306, i32 0)
  br label %341

308:                                              ; preds = %286
  store i32 1, i32* %12, align 4
  %309 = load i64, i64* %9, align 8
  %310 = load i64, i64* @KEY_RESERVED, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %321

312:                                              ; preds = %308
  %313 = load i8, i8* %8, align 1
  %314 = zext i8 %313 to i32
  %315 = and i32 %314, 7
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %12, align 4
  %317 = load i8, i8* %8, align 1
  %318 = zext i8 %317 to i32
  %319 = and i32 %318, 120
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %8, align 1
  br label %321

321:                                              ; preds = %312, %308
  br label %322

322:                                              ; preds = %326, %321
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, -1
  store i32 %324, i32* %12, align 4
  %325 = icmp ne i32 %323, 0
  br i1 %325, label %326, label %340

326:                                              ; preds = %322
  %327 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %328 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @RC_PROTO_OTHER, align 4
  %331 = load i8, i8* %8, align 1
  %332 = load i8*, i8** %4, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 2
  %334 = load i8, i8* %333, align 1
  %335 = call i32 @rc_keydown_notimeout(i32 %329, i32 %330, i8 zeroext %331, i8 zeroext %334)
  %336 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %337 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @rc_keyup(i32 %338)
  br label %322

340:                                              ; preds = %322
  br label %415

341:                                              ; preds = %289
  br label %411

342:                                              ; preds = %220
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @KIND_ACCEL, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %398

351:                                              ; preds = %342
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %353 = load i32, i32* %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = ashr i32 %357, 8
  %359 = trunc i32 %358 to i8
  store i8 %359, i8* %13, align 1
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = and i32 %365, 255
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %14, align 1
  %368 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %369 = call i32 @ati_remote_compute_accel(%struct.ati_remote* %368)
  store i32 %369, i32* %15, align 4
  %370 = load i8, i8* %13, align 1
  %371 = icmp ne i8 %370, 0
  br i1 %371, label %372, label %381

372:                                              ; preds = %351
  %373 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %374 = load i32, i32* @REL_X, align 4
  %375 = load i8, i8* %13, align 1
  %376 = sext i8 %375 to i32
  %377 = load i32, i32* %15, align 4
  %378 = mul nsw i32 %376, %377
  %379 = trunc i32 %378 to i8
  %380 = call i32 @input_report_rel(%struct.input_dev* %373, i32 %374, i8 signext %379)
  br label %381

381:                                              ; preds = %372, %351
  %382 = load i8, i8* %14, align 1
  %383 = icmp ne i8 %382, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %381
  %385 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %386 = load i32, i32* @REL_Y, align 4
  %387 = load i8, i8* %14, align 1
  %388 = sext i8 %387 to i32
  %389 = load i32, i32* %15, align 4
  %390 = mul nsw i32 %388, %389
  %391 = trunc i32 %390 to i8
  %392 = call i32 @input_report_rel(%struct.input_dev* %385, i32 %386, i8 signext %391)
  br label %393

393:                                              ; preds = %384, %381
  %394 = load i8*, i8** @jiffies, align 8
  %395 = ptrtoint i8* %394 to i64
  %396 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %397 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %396, i32 0, i32 1
  store i64 %395, i64* %397, align 8
  br label %410

398:                                              ; preds = %342
  %399 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %400 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %399, i32 0, i32 5
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ati_remote_tbl, align 8
  %404 = load i32, i32* %6, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = call i32 @dev_dbg(i32* %402, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %408)
  br label %421

410:                                              ; preds = %393
  br label %411

411:                                              ; preds = %410, %341
  br label %412

412:                                              ; preds = %411, %195
  %413 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %414 = call i32 @input_sync(%struct.input_dev* %413)
  br label %415

415:                                              ; preds = %412, %340
  %416 = load i8*, i8** %4, align 8
  %417 = getelementptr inbounds i8, i8* %416, i64 2
  %418 = load i8, i8* %417, align 1
  %419 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %420 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %419, i32 0, i32 2
  store i8 %418, i8* %420, align 8
  br label %421

421:                                              ; preds = %415, %398, %285, %108, %88, %61
  ret void
}

declare dso_local i32 @ati_remote_dump(i32*, i8*, i32) #1

declare dso_local i32 @dbginfo(i32*, i8*, i32, ...) #1

declare dso_local i64 @rc_g_keycode_from_table(i32, i8 zeroext) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @rc_keydown_notimeout(i32, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @rc_keyup(i32) #1

declare dso_local i32 @ati_remote_compute_accel(%struct.ati_remote*) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 signext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
