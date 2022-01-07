; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i32, i64, i64, %struct.TYPE_5__, i32, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@JOB_DIE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@JOB_SCAN_RESULTS = common dso_local global i32 0, align 4
@JOB_AUTOWEP = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@FLAG_FLASHING = common dso_local global i32 0, align 4
@JOB_XMIT = common dso_local global i32 0, align 4
@JOB_XMIT11 = common dso_local global i32 0, align 4
@JOB_STATS = common dso_local global i32 0, align 4
@JOB_WSTATS = common dso_local global i32 0, align 4
@JOB_PROMISC = common dso_local global i32 0, align 4
@JOB_MIC = common dso_local global i32 0, align 4
@JOB_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @airo_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airo_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.airo_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.airo_info*, %struct.airo_info** %11, align 8
  store %struct.airo_info* %12, %struct.airo_info** %4, align 8
  %13 = call i32 (...) @set_freezable()
  br label %14

14:                                               ; preds = %1, %150, %173, %270
  %15 = call i32 (...) @try_to_freeze()
  %16 = load i32, i32* @JOB_DIE, align 4
  %17 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %18 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %271

22:                                               ; preds = %14
  %23 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %24 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 0
  %30 = call i32 @down_interruptible(i32* %29)
  store i32 %30, i32* %5, align 4
  br label %147

31:                                               ; preds = %22
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %33 = call i32 @init_waitqueue_entry(i32* %6, %struct.TYPE_6__* %32)
  %34 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %35 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %34, i32 0, i32 4
  %36 = call i32 @add_wait_queue(i32* %35, i32* %6)
  br label %37

37:                                               ; preds = %136, %123, %31
  %38 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %39 = call i32 @set_current_state(i32 %38)
  %40 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %41 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %140

45:                                               ; preds = %37
  %46 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %47 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %52 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %129

55:                                               ; preds = %50, %45
  %56 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %57 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %63 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @time_after_eq(i64 %61, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, i32* @JOB_SCAN_RESULTS, align 4
  %69 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %70 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %69, i32 0, i32 1
  %71 = call i32 @set_bit(i32 %68, i64* %70)
  br label %140

72:                                               ; preds = %60, %55
  %73 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %74 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i64, i64* @jiffies, align 8
  %79 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %80 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @time_after_eq(i64 %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* @JOB_AUTOWEP, align 4
  %86 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %87 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %86, i32 0, i32 1
  %88 = call i32 @set_bit(i32 %85, i64* %87)
  br label %140

89:                                               ; preds = %77, %72
  br label %90

90:                                               ; preds = %89
  %91 = call i32 (...) @kthread_should_stop()
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %128, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %95 = call i32 @freezing(%struct.TYPE_6__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %128, label %97

97:                                               ; preds = %93
  %98 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %99 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %104 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %109 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %112 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @max(i64 %110, i64 %113)
  store i64 %114, i64* %7, align 8
  br label %123

115:                                              ; preds = %102
  %116 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %117 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %120 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @min(i64 %118, i64 %121)
  store i64 %122, i64* %7, align 8
  br label %123

123:                                              ; preds = %115, %107
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @jiffies, align 8
  %126 = sub i64 %124, %125
  %127 = call i32 @schedule_timeout(i64 %126)
  br label %37

128:                                              ; preds = %93, %90
  br label %139

129:                                              ; preds = %50
  %130 = call i32 (...) @kthread_should_stop()
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %134 = call i32 @freezing(%struct.TYPE_6__* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = call i32 (...) @schedule()
  br label %37

138:                                              ; preds = %132, %129
  br label %139

139:                                              ; preds = %138, %128
  br label %140

140:                                              ; preds = %139, %84, %67, %44
  %141 = load i32, i32* @TASK_RUNNING, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %145 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %144, i32 0, i32 4
  %146 = call i32 @remove_wait_queue(i32* %145, i32* %6)
  store i32 1, i32* %5, align 4
  br label %147

147:                                              ; preds = %140, %27
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %14

151:                                              ; preds = %147
  %152 = load i32, i32* @JOB_DIE, align 4
  %153 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %154 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %153, i32 0, i32 1
  %155 = call i64 @test_bit(i32 %152, i64* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %159 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %158, i32 0, i32 0
  %160 = call i32 @up(i32* %159)
  br label %271

161:                                              ; preds = %151
  %162 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %163 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* @FLAG_FLASHING, align 4
  %169 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %170 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %169, i32 0, i32 2
  %171 = call i64 @test_bit(i32 %168, i64* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %167, %161
  %174 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %175 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %174, i32 0, i32 0
  %176 = call i32 @up(i32* %175)
  br label %14

177:                                              ; preds = %167
  %178 = load i32, i32* @JOB_XMIT, align 4
  %179 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %180 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %179, i32 0, i32 1
  %181 = call i64 @test_bit(i32 %178, i64* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load %struct.net_device*, %struct.net_device** %3, align 8
  %185 = call i32 @airo_end_xmit(%struct.net_device* %184)
  br label %270

186:                                              ; preds = %177
  %187 = load i32, i32* @JOB_XMIT11, align 4
  %188 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %189 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %188, i32 0, i32 1
  %190 = call i64 @test_bit(i32 %187, i64* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load %struct.net_device*, %struct.net_device** %3, align 8
  %194 = call i32 @airo_end_xmit11(%struct.net_device* %193)
  br label %269

195:                                              ; preds = %186
  %196 = load i32, i32* @JOB_STATS, align 4
  %197 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %198 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %197, i32 0, i32 1
  %199 = call i64 @test_bit(i32 %196, i64* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.net_device*, %struct.net_device** %3, align 8
  %203 = call i32 @airo_read_stats(%struct.net_device* %202)
  br label %268

204:                                              ; preds = %195
  %205 = load i32, i32* @JOB_WSTATS, align 4
  %206 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %207 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %206, i32 0, i32 1
  %208 = call i64 @test_bit(i32 %205, i64* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %212 = call i32 @airo_read_wireless_stats(%struct.airo_info* %211)
  br label %267

213:                                              ; preds = %204
  %214 = load i32, i32* @JOB_PROMISC, align 4
  %215 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %216 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %215, i32 0, i32 1
  %217 = call i64 @test_bit(i32 %214, i64* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %221 = call i32 @airo_set_promisc(%struct.airo_info* %220)
  br label %266

222:                                              ; preds = %213
  %223 = load i32, i32* @JOB_MIC, align 4
  %224 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %225 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %224, i32 0, i32 1
  %226 = call i64 @test_bit(i32 %223, i64* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %230 = call i32 @micinit(%struct.airo_info* %229)
  br label %265

231:                                              ; preds = %222
  %232 = load i32, i32* @JOB_EVENT, align 4
  %233 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %234 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %233, i32 0, i32 1
  %235 = call i64 @test_bit(i32 %232, i64* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load %struct.net_device*, %struct.net_device** %3, align 8
  %239 = call i32 @airo_send_event(%struct.net_device* %238)
  br label %264

240:                                              ; preds = %231
  %241 = load i32, i32* @JOB_AUTOWEP, align 4
  %242 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %243 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %242, i32 0, i32 1
  %244 = call i64 @test_bit(i32 %241, i64* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load %struct.net_device*, %struct.net_device** %3, align 8
  %248 = call i32 @timer_func(%struct.net_device* %247)
  br label %263

249:                                              ; preds = %240
  %250 = load i32, i32* @JOB_SCAN_RESULTS, align 4
  %251 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %252 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %251, i32 0, i32 1
  %253 = call i64 @test_bit(i32 %250, i64* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %257 = call i32 @airo_process_scan_results(%struct.airo_info* %256)
  br label %262

258:                                              ; preds = %249
  %259 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %260 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %259, i32 0, i32 0
  %261 = call i32 @up(i32* %260)
  br label %262

262:                                              ; preds = %258, %255
  br label %263

263:                                              ; preds = %262, %246
  br label %264

264:                                              ; preds = %263, %237
  br label %265

265:                                              ; preds = %264, %228
  br label %266

266:                                              ; preds = %265, %219
  br label %267

267:                                              ; preds = %266, %210
  br label %268

268:                                              ; preds = %267, %201
  br label %269

269:                                              ; preds = %268, %192
  br label %270

270:                                              ; preds = %269, %183
  br label %14

271:                                              ; preds = %157, %21
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @init_waitqueue_entry(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @freezing(%struct.TYPE_6__*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @airo_end_xmit(%struct.net_device*) #1

declare dso_local i32 @airo_end_xmit11(%struct.net_device*) #1

declare dso_local i32 @airo_read_stats(%struct.net_device*) #1

declare dso_local i32 @airo_read_wireless_stats(%struct.airo_info*) #1

declare dso_local i32 @airo_set_promisc(%struct.airo_info*) #1

declare dso_local i32 @micinit(%struct.airo_info*) #1

declare dso_local i32 @airo_send_event(%struct.net_device*) #1

declare dso_local i32 @timer_func(%struct.net_device*) #1

declare dso_local i32 @airo_process_scan_results(%struct.airo_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
