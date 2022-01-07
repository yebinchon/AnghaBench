; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_prepare_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_prepare_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { %struct.TYPE_5__*, i32, %struct.usb_device* }
%struct.TYPE_5__ = type { %struct.urb*, %struct.TYPE_5__* }
%struct.urb = type { i32, i32, %struct.TYPE_4__*, i64, %struct.stk_camera*, i32, i32, %struct.TYPE_5__*, i32, i32, %struct.usb_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"isobufs already allocated. Bad\0A\00", align 1
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to allocate iso buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ISO_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate iso buffer %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"isobuf data already allocated\0A\00", align 1
@ISO_FRAMES_PER_DESC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Killing URB\0A\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@stk_isoc_handler = common dso_local global i32 0, align 4
@ISO_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*)* @stk_prepare_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_prepare_iso(%struct.stk_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk_camera*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.usb_device*, align 8
  store %struct.stk_camera* %0, %struct.stk_camera** %3, align 8
  %9 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %10 = icmp eq %struct.stk_camera* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %262

14:                                               ; preds = %1
  %15 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %16 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %15, i32 0, i32 2
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %8, align 8
  %18 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %19 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %30

24:                                               ; preds = %14
  %25 = load i32, i32* @MAX_ISO_BUFS, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.TYPE_5__* @kcalloc(i32 %25, i32 16, i32 %26)
  %28 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %29 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %28, i32 0, i32 0
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %29, align 8
  br label %30

30:                                               ; preds = %24, %22
  %31 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %32 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp eq %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %262

39:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %187, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @MAX_ISO_BUFS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %190

44:                                               ; preds = %40
  %45 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %46 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp eq %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %44
  %55 = load i32, i32* @ISO_BUFFER_SIZE, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kzalloc(i32 %55, i32 %56)
  store i8* %57, i8** %4, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %193

63:                                               ; preds = %54
  %64 = load i8*, i8** %4, align 8
  %65 = bitcast i8* %64 to %struct.TYPE_5__*
  %66 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %67 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %72, align 8
  br label %75

73:                                               ; preds = %44
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %63
  %76 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %77 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.urb*, %struct.urb** %82, align 8
  %84 = icmp eq %struct.urb* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %75
  %86 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.urb* @usb_alloc_urb(i32 %86, i32 %87)
  store %struct.urb* %88, %struct.urb** %7, align 8
  %89 = load %struct.urb*, %struct.urb** %7, align 8
  %90 = icmp eq %struct.urb* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %193

92:                                               ; preds = %85
  %93 = load %struct.urb*, %struct.urb** %7, align 8
  %94 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %95 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store %struct.urb* %93, %struct.urb** %100, align 8
  br label %120

101:                                              ; preds = %75
  %102 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %104 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.urb*, %struct.urb** %109, align 8
  %111 = call i32 @usb_kill_urb(%struct.urb* %110)
  %112 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %113 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load %struct.urb*, %struct.urb** %118, align 8
  store %struct.urb* %119, %struct.urb** %7, align 8
  br label %120

120:                                              ; preds = %101, %92
  %121 = load %struct.urb*, %struct.urb** %7, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %124 = load %struct.urb*, %struct.urb** %7, align 8
  %125 = getelementptr inbounds %struct.urb, %struct.urb* %124, i32 0, i32 10
  store %struct.usb_device* %123, %struct.usb_device** %125, align 8
  %126 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %127 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %128 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @usb_rcvisocpipe(%struct.usb_device* %126, i32 %129)
  %131 = load %struct.urb*, %struct.urb** %7, align 8
  %132 = getelementptr inbounds %struct.urb, %struct.urb* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @URB_ISO_ASAP, align 4
  %134 = load %struct.urb*, %struct.urb** %7, align 8
  %135 = getelementptr inbounds %struct.urb, %struct.urb* %134, i32 0, i32 8
  store i32 %133, i32* %135, align 8
  %136 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %137 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load %struct.urb*, %struct.urb** %7, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 7
  store %struct.TYPE_5__* %143, %struct.TYPE_5__** %145, align 8
  %146 = load i32, i32* @ISO_BUFFER_SIZE, align 4
  %147 = load %struct.urb*, %struct.urb** %7, align 8
  %148 = getelementptr inbounds %struct.urb, %struct.urb* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @stk_isoc_handler, align 4
  %150 = load %struct.urb*, %struct.urb** %7, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  %152 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %153 = load %struct.urb*, %struct.urb** %7, align 8
  %154 = getelementptr inbounds %struct.urb, %struct.urb* %153, i32 0, i32 4
  store %struct.stk_camera* %152, %struct.stk_camera** %154, align 8
  %155 = load %struct.urb*, %struct.urb** %7, align 8
  %156 = getelementptr inbounds %struct.urb, %struct.urb* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %158 = load %struct.urb*, %struct.urb** %7, align 8
  %159 = getelementptr inbounds %struct.urb, %struct.urb* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %183, %120
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %186

164:                                              ; preds = %160
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load %struct.urb*, %struct.urb** %7, align 8
  %169 = getelementptr inbounds %struct.urb, %struct.urb* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i32 %167, i32* %174, align 4
  %175 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %176 = load %struct.urb*, %struct.urb** %7, align 8
  %177 = getelementptr inbounds %struct.urb, %struct.urb* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  store i32 %175, i32* %182, align 4
  br label %183

183:                                              ; preds = %164
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %160

186:                                              ; preds = %160
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %40

190:                                              ; preds = %40
  %191 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %192 = call i32 @set_memallocd(%struct.stk_camera* %191)
  store i32 0, i32* %2, align 4
  br label %262

193:                                              ; preds = %91, %60
  store i32 0, i32* %5, align 4
  br label %194

194:                                              ; preds = %220, %193
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @MAX_ISO_BUFS, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %200 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %199, i32 0, i32 0
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = icmp ne %struct.TYPE_5__* %206, null
  br label %208

208:                                              ; preds = %198, %194
  %209 = phi i1 [ false, %194 ], [ %207, %198 ]
  br i1 %209, label %210, label %223

210:                                              ; preds = %208
  %211 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %212 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %211, i32 0, i32 0
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = call i32 @kfree(%struct.TYPE_5__* %218)
  br label %220

220:                                              ; preds = %210
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %194

223:                                              ; preds = %208
  store i32 0, i32* %5, align 4
  br label %224

224:                                              ; preds = %250, %223
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* @MAX_ISO_BUFS, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %230 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %229, i32 0, i32 0
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load %struct.urb*, %struct.urb** %235, align 8
  %237 = icmp ne %struct.urb* %236, null
  br label %238

238:                                              ; preds = %228, %224
  %239 = phi i1 [ false, %224 ], [ %237, %228 ]
  br i1 %239, label %240, label %253

240:                                              ; preds = %238
  %241 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %242 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %241, i32 0, i32 0
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load %struct.urb*, %struct.urb** %247, align 8
  %249 = call i32 @usb_free_urb(%struct.urb* %248)
  br label %250

250:                                              ; preds = %240
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %224

253:                                              ; preds = %238
  %254 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %255 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %254, i32 0, i32 0
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = call i32 @kfree(%struct.TYPE_5__* %256)
  %258 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %259 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %258, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %259, align 8
  %260 = load i32, i32* @ENOMEM, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %253, %190, %35, %11
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.TYPE_5__* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @set_memallocd(%struct.stk_camera*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
