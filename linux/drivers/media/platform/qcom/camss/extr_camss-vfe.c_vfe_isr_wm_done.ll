; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_isr_wm_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_isr_wm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64*, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 (%struct.vfe_device*, i64)*, i32 (%struct.vfe_device*, i32, i32)*, i32 (%struct.vfe_device*, i32, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.vfe_output }
%struct.vfe_output = type { i64, i64, i32, %struct.camss_buffer*, i32*, %struct.camss_buffer**, i32 }
%struct.camss_buffer = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }

@VFE_LINE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Received wm done for unmapped index\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Active buffer mismatch!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Missing ready buf %d %d!\0A\00", align 1
@VFE_OUTPUT_STOPPING = common dso_local global i64 0, align 8
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i64)* @vfe_isr_wm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_isr_wm_done(%struct.vfe_device* %0, i64 %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.camss_buffer*, align 8
  %6 = alloca %struct.vfe_output*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = call i32 (...) @ktime_get_ns()
  store i32 %12, i32* %10, align 4
  %13 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %14 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64 (%struct.vfe_device*, i64)*, i64 (%struct.vfe_device*, i64)** %16, align 8
  %18 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 %17(%struct.vfe_device* %18, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %22 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %21, i32 0, i32 1
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %26 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VFE_LINE_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %35 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %239

40:                                               ; preds = %2
  %41 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %42 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %45 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store %struct.vfe_output* %51, %struct.vfe_output** %6, align 8
  %52 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %53 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %40
  %58 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %59 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %58, i32 0, i32 3
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %239

64:                                               ; preds = %40
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %67 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %69 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %68, i32 0, i32 5
  %70 = load %struct.camss_buffer**, %struct.camss_buffer*** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.camss_buffer*, %struct.camss_buffer** %70, i64 %75
  %77 = load %struct.camss_buffer*, %struct.camss_buffer** %76, align 8
  store %struct.camss_buffer* %77, %struct.camss_buffer** %5, align 8
  %78 = load %struct.camss_buffer*, %struct.camss_buffer** %5, align 8
  %79 = icmp ne %struct.camss_buffer* %78, null
  br i1 %79, label %94, label %80

80:                                               ; preds = %64
  %81 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %82 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %91 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %89, i64 %92)
  br label %239

94:                                               ; preds = %64
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.camss_buffer*, %struct.camss_buffer** %5, align 8
  %97 = getelementptr inbounds %struct.camss_buffer, %struct.camss_buffer* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  %100 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %101 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = sext i32 %102 to i64
  %105 = load %struct.camss_buffer*, %struct.camss_buffer** %5, align 8
  %106 = getelementptr inbounds %struct.camss_buffer, %struct.camss_buffer* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  store i64 %104, i64* %107, align 8
  %108 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %109 = call %struct.camss_buffer* @vfe_buf_get_pending(%struct.vfe_output* %108)
  %110 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %111 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %110, i32 0, i32 5
  %112 = load %struct.camss_buffer**, %struct.camss_buffer*** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = icmp ne i64 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.camss_buffer*, %struct.camss_buffer** %112, i64 %117
  store %struct.camss_buffer* %109, %struct.camss_buffer** %118, align 8
  %119 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %120 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %119, i32 0, i32 5
  %121 = load %struct.camss_buffer**, %struct.camss_buffer*** %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.camss_buffer*, %struct.camss_buffer** %121, i64 %126
  %128 = load %struct.camss_buffer*, %struct.camss_buffer** %127, align 8
  %129 = icmp ne %struct.camss_buffer* %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %94
  %131 = load %struct.camss_buffer*, %struct.camss_buffer** %5, align 8
  %132 = getelementptr inbounds %struct.camss_buffer, %struct.camss_buffer* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %7, align 8
  %134 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %135 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %136 = call i32 @vfe_buf_update_wm_on_last(%struct.vfe_device* %134, %struct.vfe_output* %135)
  br label %153

137:                                              ; preds = %94
  %138 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %139 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %138, i32 0, i32 5
  %140 = load %struct.camss_buffer**, %struct.camss_buffer*** %139, align 8
  %141 = load i64, i64* %9, align 8
  %142 = icmp ne i64 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.camss_buffer*, %struct.camss_buffer** %140, i64 %145
  %147 = load %struct.camss_buffer*, %struct.camss_buffer** %146, align 8
  %148 = getelementptr inbounds %struct.camss_buffer, %struct.camss_buffer* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %7, align 8
  %150 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %151 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %152 = call i32 @vfe_buf_update_wm_on_next(%struct.vfe_device* %150, %struct.vfe_output* %151)
  br label %153

153:                                              ; preds = %137, %130
  %154 = load i64, i64* %9, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %187

156:                                              ; preds = %153
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %183, %156
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %160 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ult i32 %158, %161
  br i1 %162, label %163, label %186

163:                                              ; preds = %157
  %164 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %165 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %164, i32 0, i32 2
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i32 (%struct.vfe_device*, i32, i32)*, i32 (%struct.vfe_device*, i32, i32)** %167, align 8
  %169 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %170 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %171 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* %11, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 %168(%struct.vfe_device* %169, i32 %176, i32 %181)
  br label %183

183:                                              ; preds = %163
  %184 = load i32, i32* %11, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %11, align 4
  br label %157

186:                                              ; preds = %157
  br label %218

187:                                              ; preds = %153
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %214, %187
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %191 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp ult i32 %189, %192
  br i1 %193, label %194, label %217

194:                                              ; preds = %188
  %195 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %196 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %195, i32 0, i32 2
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32 (%struct.vfe_device*, i32, i32)*, i32 (%struct.vfe_device*, i32, i32)** %198, align 8
  %200 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %201 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %202 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %11, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 %199(%struct.vfe_device* %200, i32 %207, i32 %212)
  br label %214

214:                                              ; preds = %194
  %215 = load i32, i32* %11, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %188

217:                                              ; preds = %188
  br label %218

218:                                              ; preds = %217, %186
  %219 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %220 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %219, i32 0, i32 1
  %221 = load i64, i64* %8, align 8
  %222 = call i32 @spin_unlock_irqrestore(i32* %220, i64 %221)
  %223 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %224 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @VFE_OUTPUT_STOPPING, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %218
  %229 = load %struct.camss_buffer*, %struct.camss_buffer** %5, align 8
  %230 = load %struct.vfe_output*, %struct.vfe_output** %6, align 8
  %231 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %230, i32 0, i32 3
  store %struct.camss_buffer* %229, %struct.camss_buffer** %231, align 8
  br label %238

232:                                              ; preds = %218
  %233 = load %struct.camss_buffer*, %struct.camss_buffer** %5, align 8
  %234 = getelementptr inbounds %struct.camss_buffer, %struct.camss_buffer* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %237 = call i32 @vb2_buffer_done(%struct.TYPE_10__* %235, i32 %236)
  br label %238

238:                                              ; preds = %232, %228
  br label %244

239:                                              ; preds = %80, %57, %33
  %240 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %241 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %240, i32 0, i32 1
  %242 = load i64, i64* %8, align 8
  %243 = call i32 @spin_unlock_irqrestore(i32* %241, i64 %242)
  br label %244

244:                                              ; preds = %239, %238
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, ...) #1

declare dso_local %struct.camss_buffer* @vfe_buf_get_pending(%struct.vfe_output*) #1

declare dso_local i32 @vfe_buf_update_wm_on_last(%struct.vfe_device*, %struct.vfe_output*) #1

declare dso_local i32 @vfe_buf_update_wm_on_next(%struct.vfe_device*, %struct.vfe_output*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
