; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_isoc_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_isoc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_4__, i32, %struct.au0828_dmaqueue }
%struct.TYPE_4__ = type { %struct.au0828_buffer*, %struct.au0828_buffer* }
%struct.au0828_buffer = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.au0828_dmaqueue = type { i64 }
%struct.urb = type { i32, i32, i8*, %struct.TYPE_5__*, %struct.au0828_dmaqueue* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"packet bigger than packet size\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Video frame %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_dev*, %struct.urb*)* @au0828_isoc_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_isoc_copy(%struct.au0828_dev* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au0828_dev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.au0828_buffer*, align 8
  %7 = alloca %struct.au0828_buffer*, align 8
  %8 = alloca %struct.au0828_dmaqueue*, align 8
  %9 = alloca %struct.au0828_dmaqueue*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 4
  %23 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %22, align 8
  store %struct.au0828_dmaqueue* %23, %struct.au0828_dmaqueue** %8, align 8
  %24 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %25 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %24, i32 0, i32 10
  store %struct.au0828_dmaqueue* %25, %struct.au0828_dmaqueue** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %26 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %27 = icmp ne %struct.au0828_dev* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %373

29:                                               ; preds = %2
  %30 = load i32, i32* @DEV_DISCONNECTED, align 4
  %31 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %32 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %31, i32 0, i32 9
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %37 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %38 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %37, i32 0, i32 9
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  store i32 0, i32* %3, align 4
  br label %373

42:                                               ; preds = %35
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %49 = load %struct.urb*, %struct.urb** %5, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @print_err_status(%struct.au0828_dev* %48, i32 -1, i32 %51)
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %373

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %63 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.au0828_buffer*, %struct.au0828_buffer** %64, align 8
  store %struct.au0828_buffer* %65, %struct.au0828_buffer** %6, align 8
  %66 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %67 = icmp ne %struct.au0828_buffer* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i8* @vb2_plane_vaddr(i32* %71, i32 0)
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %75 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.au0828_buffer*, %struct.au0828_buffer** %76, align 8
  store %struct.au0828_buffer* %77, %struct.au0828_buffer** %7, align 8
  %78 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %79 = icmp ne %struct.au0828_buffer* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %82 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = call i8* @vb2_plane_vaddr(i32* %83, i32 0)
  store i8* %84, i8** %11, align 8
  br label %85

85:                                               ; preds = %80, %73
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %368, %85
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.urb*, %struct.urb** %5, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %371

92:                                               ; preds = %86
  %93 = load %struct.urb*, %struct.urb** %5, align 8
  %94 = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 3
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %92
  %104 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @print_err_status(%struct.au0828_dev* %104, i32 %105, i32 %106)
  %108 = load %struct.urb*, %struct.urb** %5, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 3
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @EPROTO, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp ne i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  br label %368

120:                                              ; preds = %103
  br label %121

121:                                              ; preds = %120, %92
  %122 = load %struct.urb*, %struct.urb** %5, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 3
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %368

132:                                              ; preds = %121
  %133 = load %struct.urb*, %struct.urb** %5, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 3
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %142 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp sgt i32 %140, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %132
  %146 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %368

147:                                              ; preds = %132
  %148 = load %struct.urb*, %struct.urb** %5, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.urb*, %struct.urb** %5, align 8
  %152 = getelementptr inbounds %struct.urb, %struct.urb* %151, i32 0, i32 3
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %150, i64 %159
  store i8* %160, i8** %15, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  store i8 %163, i8* %16, align 1
  %164 = load %struct.urb*, %struct.urb** %5, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 3
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 4
  store i32 %172, i32* %13, align 4
  %173 = load i8*, i8** %15, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 4
  store i8* %174, i8** %15, align 8
  %175 = load i8, i8* %16, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 128
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %299

179:                                              ; preds = %147
  %180 = load i32, i32* %13, align 4
  %181 = sub nsw i32 %180, 4
  store i32 %181, i32* %13, align 4
  %182 = load i8*, i8** %15, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 4
  store i8* %183, i8** %15, align 8
  %184 = load i8, i8* %16, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 64
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %190 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %189)
  %191 = load i8, i8* %16, align 1
  %192 = zext i8 %191 to i32
  %193 = and i32 %192, 64
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %262

195:                                              ; preds = %179
  %196 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %197 = icmp ne %struct.au0828_buffer* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %200 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %9, align 8
  %201 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %202 = call i32 @buffer_filled(%struct.au0828_dev* %199, %struct.au0828_dmaqueue* %200, %struct.au0828_buffer* %201)
  br label %203

203:                                              ; preds = %198, %195
  %204 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %9, align 8
  %205 = call i32 @vbi_get_next_buf(%struct.au0828_dmaqueue* %204, %struct.au0828_buffer** %7)
  %206 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %207 = icmp eq %struct.au0828_buffer* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i8* null, i8** %11, align 8
  br label %214

209:                                              ; preds = %203
  %210 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %211 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = call i8* @vb2_plane_vaddr(i32* %212, i32 0)
  store i8* %213, i8** %11, align 8
  br label %214

214:                                              ; preds = %209, %208
  %215 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %216 = icmp ne %struct.au0828_buffer* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %219 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %220 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %221 = call i32 @buffer_filled(%struct.au0828_dev* %218, %struct.au0828_dmaqueue* %219, %struct.au0828_buffer* %220)
  br label %222

222:                                              ; preds = %217, %214
  %223 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %224 = call i32 @get_next_buf(%struct.au0828_dmaqueue* %223, %struct.au0828_buffer** %6)
  %225 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %226 = icmp eq %struct.au0828_buffer* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  store i8* null, i8** %10, align 8
  br label %233

228:                                              ; preds = %222
  %229 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %230 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = call i8* @vb2_plane_vaddr(i32* %231, i32 0)
  store i8* %232, i8** %10, align 8
  br label %233

233:                                              ; preds = %228, %227
  %234 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %235 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %234, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %240 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %239, i32 0, i32 6
  %241 = load i64, i64* @jiffies, align 8
  %242 = load i32, i32* @HZ, align 4
  %243 = sdiv i32 %242, 10
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %241, %244
  %246 = call i32 @mod_timer(i32* %240, i64 %245)
  br label %247

247:                                              ; preds = %238, %233
  %248 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %249 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %248, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %247
  %253 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %254 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %253, i32 0, i32 4
  %255 = load i64, i64* @jiffies, align 8
  %256 = load i32, i32* @HZ, align 4
  %257 = sdiv i32 %256, 10
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %255, %258
  %260 = call i32 @mod_timer(i32* %254, i64 %259)
  br label %261

261:                                              ; preds = %252, %247
  br label %262

262:                                              ; preds = %261, %179
  %263 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %264 = icmp ne %struct.au0828_buffer* %263, null
  br i1 %264, label %265, label %277

265:                                              ; preds = %262
  %266 = load i8, i8* %16, align 1
  %267 = zext i8 %266 to i32
  %268 = and i32 %267, 64
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %272 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %271, i32 0, i32 0
  store i32 1, i32* %272, align 4
  br label %276

273:                                              ; preds = %265
  %274 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %275 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %274, i32 0, i32 0
  store i32 0, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %270
  br label %277

277:                                              ; preds = %276, %262
  %278 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %279 = icmp ne %struct.au0828_buffer* %278, null
  br i1 %279, label %280, label %292

280:                                              ; preds = %277
  %281 = load i8, i8* %16, align 1
  %282 = zext i8 %281 to i32
  %283 = and i32 %282, 64
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %287 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %286, i32 0, i32 0
  store i32 1, i32* %287, align 4
  br label %291

288:                                              ; preds = %280
  %289 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %290 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %289, i32 0, i32 0
  store i32 0, i32* %290, align 4
  br label %291

291:                                              ; preds = %288, %285
  br label %292

292:                                              ; preds = %291, %277
  %293 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %294 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %293, i32 0, i32 1
  store i32 0, i32* %294, align 4
  %295 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %9, align 8
  %296 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %295, i32 0, i32 0
  store i64 0, i64* %296, align 8
  %297 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %298 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %297, i32 0, i32 0
  store i64 0, i64* %298, align 8
  br label %299

299:                                              ; preds = %292, %147
  %300 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %301 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %304 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 %302, %305
  %307 = mul nsw i32 %306, 2
  store i32 %307, i32* %17, align 4
  %308 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %309 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %17, align 4
  %312 = icmp ult i32 %310, %311
  br i1 %312, label %313, label %350

313:                                              ; preds = %299
  %314 = load i32, i32* %17, align 4
  %315 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %316 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = sub i32 %314, %317
  store i32 %318, i32* %18, align 4
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* %18, align 4
  %321 = icmp ult i32 %319, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %313
  %323 = load i32, i32* %13, align 4
  store i32 %323, i32* %19, align 4
  br label %326

324:                                              ; preds = %313
  %325 = load i32, i32* %18, align 4
  store i32 %325, i32* %19, align 4
  br label %326

326:                                              ; preds = %324, %322
  %327 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %328 = icmp ne %struct.au0828_buffer* %327, null
  br i1 %328, label %329, label %337

329:                                              ; preds = %326
  %330 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %331 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %9, align 8
  %332 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %333 = load i8*, i8** %15, align 8
  %334 = load i8*, i8** %11, align 8
  %335 = load i32, i32* %13, align 4
  %336 = call i32 @au0828_copy_vbi(%struct.au0828_dev* %330, %struct.au0828_dmaqueue* %331, %struct.au0828_buffer* %332, i8* %333, i8* %334, i32 %335)
  br label %337

337:                                              ; preds = %329, %326
  %338 = load i32, i32* %19, align 4
  %339 = load i32, i32* %13, align 4
  %340 = sub i32 %339, %338
  store i32 %340, i32* %13, align 4
  %341 = load i32, i32* %19, align 4
  %342 = load i8*, i8** %15, align 8
  %343 = zext i32 %341 to i64
  %344 = getelementptr inbounds i8, i8* %342, i64 %343
  store i8* %344, i8** %15, align 8
  %345 = load i32, i32* %19, align 4
  %346 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %347 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = add i32 %348, %345
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %337, %299
  %351 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %352 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %17, align 4
  %355 = icmp uge i32 %353, %354
  br i1 %355, label %356, label %367

356:                                              ; preds = %350
  %357 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %358 = icmp ne %struct.au0828_buffer* %357, null
  br i1 %358, label %359, label %367

359:                                              ; preds = %356
  %360 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %361 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %362 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %363 = load i8*, i8** %15, align 8
  %364 = load i8*, i8** %10, align 8
  %365 = load i32, i32* %13, align 4
  %366 = call i32 @au0828_copy_video(%struct.au0828_dev* %360, %struct.au0828_dmaqueue* %361, %struct.au0828_buffer* %362, i8* %363, i8* %364, i32 %365)
  br label %367

367:                                              ; preds = %359, %356, %350
  br label %368

368:                                              ; preds = %367, %145, %131, %119
  %369 = load i32, i32* %12, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %12, align 4
  br label %86

371:                                              ; preds = %86
  %372 = load i32, i32* %14, align 4
  store i32 %372, i32* %3, align 4
  br label %373

373:                                              ; preds = %371, %59, %41, %28
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @print_err_status(%struct.au0828_dev*, i32, i32) #1

declare dso_local i8* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @au0828_isocdbg(i8*, ...) #1

declare dso_local i32 @buffer_filled(%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*) #1

declare dso_local i32 @vbi_get_next_buf(%struct.au0828_dmaqueue*, %struct.au0828_buffer**) #1

declare dso_local i32 @get_next_buf(%struct.au0828_dmaqueue*, %struct.au0828_buffer**) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @au0828_copy_vbi(%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*, i8*, i8*, i32) #1

declare dso_local i32 @au0828_copy_video(%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
