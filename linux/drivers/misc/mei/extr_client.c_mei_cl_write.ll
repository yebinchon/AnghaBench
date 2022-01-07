; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i64, i32, %struct.mei_device* }
%struct.mei_device = type { i32, i32, i32, i32 }
%struct.mei_cl_cb = type { i32, i64, %struct.mei_msg_data }
%struct.mei_msg_data = type { i64, i8* }
%struct.mei_msg_hdr = type { i64, i32, i32 }

@ENODEV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"len=%zd\0A\00", align 1
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"rpm: get failed %zd\0A\00", align 1
@MEI_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"No flow control credentials: not sending.\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Cannot acquire the host buffer: not sending.\0A\00", align 1
@EOVERFLOW = common dso_local global i64 0, align 8
@MEI_WRITING = common dso_local global i64 0, align 8
@MEI_WRITE_COMPLETE = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"rpm: autosuspend\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mei_cl_write(%struct.mei_cl* %0, %struct.mei_cl_cb* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mei_cl*, align 8
  %5 = alloca %struct.mei_cl_cb*, align 8
  %6 = alloca %struct.mei_device*, align 8
  %7 = alloca %struct.mei_msg_data*, align 8
  %8 = alloca %struct.mei_msg_hdr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %4, align 8
  store %struct.mei_cl_cb* %1, %struct.mei_cl_cb** %5, align 8
  store i64 16, i64* %9, align 8
  %19 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %20 = icmp ne %struct.mei_cl* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %23 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %22, i32 0, i32 2
  %24 = load %struct.mei_device*, %struct.mei_device** %23, align 8
  %25 = icmp ne %struct.mei_device* %24, null
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i1 [ true, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* @ENODEV, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %3, align 8
  br label %289

35:                                               ; preds = %27
  %36 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %37 = icmp ne %struct.mei_cl_cb* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %3, align 8
  br label %289

45:                                               ; preds = %35
  %46 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %47 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %46, i32 0, i32 2
  %48 = load %struct.mei_device*, %struct.mei_device** %47, align 8
  store %struct.mei_device* %48, %struct.mei_device** %6, align 8
  %49 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %50 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %49, i32 0, i32 2
  store %struct.mei_msg_data* %50, %struct.mei_msg_data** %7, align 8
  %51 = load %struct.mei_msg_data*, %struct.mei_msg_data** %7, align 8
  %52 = getelementptr inbounds %struct.mei_msg_data, %struct.mei_msg_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %55 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 (%struct.mei_device*, %struct.mei_cl*, i8*, ...) @cl_dbg(%struct.mei_device* %54, %struct.mei_cl* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %59 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %17, align 4
  %61 = load %struct.mei_msg_data*, %struct.mei_msg_data** %7, align 8
  %62 = getelementptr inbounds %struct.mei_msg_data, %struct.mei_msg_data* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %18, align 8
  %64 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %65 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pm_runtime_get(i32 %66)
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %16, align 8
  %69 = icmp ult i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %45
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* @EINPROGRESS, align 8
  %73 = sub i64 0, %72
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %77 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pm_runtime_put_noidle(i32 %78)
  %80 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %81 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @cl_err(%struct.mei_device* %80, %struct.mei_cl* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  br label %285

84:                                               ; preds = %70, %45
  %85 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %86 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* @MEI_IDLE, align 8
  %88 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %89 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %91 = call i64 @mei_cl_tx_flow_ctrl_creds(%struct.mei_cl* %90)
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = icmp ult i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %273

95:                                               ; preds = %84
  %96 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %97 = call i32 @mei_msg_hdr_init(%struct.mei_msg_hdr* %8, %struct.mei_cl_cb* %96)
  %98 = load i64, i64* %16, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %102 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %103 = call i32 (%struct.mei_device*, %struct.mei_cl*, i8*, ...) @cl_dbg(%struct.mei_device* %101, %struct.mei_cl* %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i64, i64* %10, align 8
  store i64 %104, i64* %16, align 8
  br label %204

105:                                              ; preds = %95
  %106 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %107 = call i32 @mei_hbuf_acquire(%struct.mei_device* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %111 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %112 = call i32 (%struct.mei_device*, %struct.mei_cl*, i8*, ...) @cl_dbg(%struct.mei_device* %110, %struct.mei_cl* %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i64, i64* %10, align 8
  store i64 %113, i64* %16, align 8
  br label %204

114:                                              ; preds = %105
  %115 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %116 = call i32 @mei_hbuf_empty_slots(%struct.mei_device* %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i64, i64* @EOVERFLOW, align 8
  %121 = sub i64 0, %120
  store i64 %121, i64* %16, align 8
  br label %204

122:                                              ; preds = %114
  %123 = load i32, i32* %13, align 4
  %124 = call i64 @mei_slots2data(i32 %123)
  store i64 %124, i64* %11, align 8
  %125 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %126 = call i32 @mei_dma_ring_empty_slots(%struct.mei_device* %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i64 @mei_slots2data(i32 %127)
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %129, %130
  %132 = load i64, i64* %11, align 8
  %133 = icmp ule i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %122
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %8, i32 0, i32 0
  store i64 %135, i64* %136, align 8
  %137 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %8, i32 0, i32 1
  store i32 1, i32* %137, align 8
  br label %167

138:                                              ; preds = %122
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* %9, align 8
  %144 = add i64 %143, 4
  %145 = icmp uge i64 %142, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %8, i32 0, i32 2
  store i32 1, i32* %147, align 4
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %12, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i64, i64* %12, align 8
  store i64 %152, i64* %10, align 8
  br label %155

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %8, i32 0, i32 1
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %153, %151
  %156 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %8, i32 0, i32 0
  store i64 4, i64* %156, align 8
  %157 = load i64, i64* %10, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %15, align 4
  %159 = bitcast i32* %15 to i8*
  store i8* %159, i8** %18, align 8
  br label %166

160:                                              ; preds = %141, %138
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* %9, align 8
  %163 = sub i64 %161, %162
  store i64 %163, i64* %10, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %8, i32 0, i32 0
  store i64 %164, i64* %165, align 8
  br label %166

166:                                              ; preds = %160, %155
  br label %167

167:                                              ; preds = %166, %134
  %168 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %8, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %173 = load %struct.mei_msg_data*, %struct.mei_msg_data** %7, align 8
  %174 = getelementptr inbounds %struct.mei_msg_data, %struct.mei_msg_data* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load i64, i64* %10, align 8
  %177 = call i32 @mei_dma_ring_write(%struct.mei_device* %172, i8* %175, i64 %176)
  br label %178

178:                                              ; preds = %171, %167
  %179 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %180 = load i64, i64* %9, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %8, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @mei_write_message(%struct.mei_device* %179, %struct.mei_msg_hdr* %8, i64 %180, i8* %181, i64 %183)
  store i64 %184, i64* %16, align 8
  %185 = load i64, i64* %16, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %273

188:                                              ; preds = %178
  %189 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %190 = call i64 @mei_cl_tx_flow_ctrl_creds_reduce(%struct.mei_cl* %189)
  store i64 %190, i64* %16, align 8
  %191 = load i64, i64* %16, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %273

194:                                              ; preds = %188
  %195 = load i64, i64* @MEI_WRITING, align 8
  %196 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %197 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load i64, i64* %10, align 8
  %199 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %200 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = load %struct.mei_msg_data*, %struct.mei_msg_data** %7, align 8
  %202 = getelementptr inbounds %struct.mei_msg_data, %struct.mei_msg_data* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %10, align 8
  br label %204

204:                                              ; preds = %194, %119, %109, %100
  %205 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %8, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %210 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %211 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %210, i32 0, i32 3
  %212 = call i32 @mei_tx_cb_enqueue(%struct.mei_cl_cb* %209, i32* %211)
  br label %218

213:                                              ; preds = %204
  %214 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %215 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %216 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %215, i32 0, i32 2
  %217 = call i32 @mei_tx_cb_enqueue(%struct.mei_cl_cb* %214, i32* %216)
  br label %218

218:                                              ; preds = %213, %208
  store %struct.mei_cl_cb* null, %struct.mei_cl_cb** %5, align 8
  %219 = load i32, i32* %17, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %271

221:                                              ; preds = %218
  %222 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %223 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @MEI_WRITE_COMPLETE, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %271

227:                                              ; preds = %221
  %228 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %229 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %228, i32 0, i32 1
  %230 = call i32 @mutex_unlock(i32* %229)
  %231 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %232 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %235 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @MEI_WRITE_COMPLETE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %244, label %239

239:                                              ; preds = %227
  %240 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %241 = call i32 @mei_cl_is_connected(%struct.mei_cl* %240)
  %242 = icmp ne i32 %241, 0
  %243 = xor i1 %242, true
  br label %244

244:                                              ; preds = %239, %227
  %245 = phi i1 [ true, %227 ], [ %243, %239 ]
  %246 = zext i1 %245 to i32
  %247 = call i64 @wait_event_interruptible(i32 %233, i32 %246)
  store i64 %247, i64* %16, align 8
  %248 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %249 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %248, i32 0, i32 1
  %250 = call i32 @mutex_lock(i32* %249)
  %251 = load i64, i64* %16, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %244
  %254 = load i32, i32* @current, align 4
  %255 = call i64 @signal_pending(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load i64, i64* @EINTR, align 8
  %259 = sub i64 0, %258
  store i64 %259, i64* %16, align 8
  br label %260

260:                                              ; preds = %257, %253
  br label %273

261:                                              ; preds = %244
  %262 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %263 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @MEI_WRITE_COMPLETE, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = load i64, i64* @EFAULT, align 8
  %269 = sub i64 0, %268
  store i64 %269, i64* %16, align 8
  br label %273

270:                                              ; preds = %261
  br label %271

271:                                              ; preds = %270, %221, %218
  %272 = load i64, i64* %10, align 8
  store i64 %272, i64* %16, align 8
  br label %273

273:                                              ; preds = %271, %267, %260, %193, %187, %94
  %274 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %275 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %276 = call i32 (%struct.mei_device*, %struct.mei_cl*, i8*, ...) @cl_dbg(%struct.mei_device* %274, %struct.mei_cl* %275, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %277 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %278 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @pm_runtime_mark_last_busy(i32 %279)
  %281 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %282 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @pm_runtime_put_autosuspend(i32 %283)
  br label %285

285:                                              ; preds = %273, %75
  %286 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %287 = call i32 @mei_io_cb_free(%struct.mei_cl_cb* %286)
  %288 = load i64, i64* %16, align 8
  store i64 %288, i64* %3, align 8
  br label %289

289:                                              ; preds = %285, %42, %32
  %290 = load i64, i64* %3, align 8
  ret i64 %290
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*, ...) #1

declare dso_local i64 @pm_runtime_get(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @cl_err(%struct.mei_device*, %struct.mei_cl*, i8*, i64) #1

declare dso_local i64 @mei_cl_tx_flow_ctrl_creds(%struct.mei_cl*) #1

declare dso_local i32 @mei_msg_hdr_init(%struct.mei_msg_hdr*, %struct.mei_cl_cb*) #1

declare dso_local i32 @mei_hbuf_acquire(%struct.mei_device*) #1

declare dso_local i32 @mei_hbuf_empty_slots(%struct.mei_device*) #1

declare dso_local i64 @mei_slots2data(i32) #1

declare dso_local i32 @mei_dma_ring_empty_slots(%struct.mei_device*) #1

declare dso_local i32 @mei_dma_ring_write(%struct.mei_device*, i8*, i64) #1

declare dso_local i64 @mei_write_message(%struct.mei_device*, %struct.mei_msg_hdr*, i64, i8*, i64) #1

declare dso_local i64 @mei_cl_tx_flow_ctrl_creds_reduce(%struct.mei_cl*) #1

declare dso_local i32 @mei_tx_cb_enqueue(%struct.mei_cl_cb*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mei_io_cb_free(%struct.mei_cl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
