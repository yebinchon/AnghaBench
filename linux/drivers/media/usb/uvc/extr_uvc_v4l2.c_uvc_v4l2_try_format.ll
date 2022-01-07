; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.uvc_format*, %struct.uvc_format* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.uvc_format = type { i64, i32, i32, i32, %struct.uvc_frame* }
%struct.uvc_frame = type { i32, i32, i32, i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.uvc_streaming_control = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UVC_TRACE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Trying format 0x%08x (%c%c%c%c): %ux%u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unsupported size %ux%u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Using default frame interval %u.%u us (%u.%u fps).\0A\00", align 1
@UVC_QUIRK_PROBE_EXTRAFIELDS = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.v4l2_format*, %struct.uvc_streaming_control*, %struct.uvc_format**, %struct.uvc_frame**)* @uvc_v4l2_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_try_format(%struct.uvc_streaming* %0, %struct.v4l2_format* %1, %struct.uvc_streaming_control* %2, %struct.uvc_format** %3, %struct.uvc_frame** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uvc_streaming*, align 8
  %8 = alloca %struct.v4l2_format*, align 8
  %9 = alloca %struct.uvc_streaming_control*, align 8
  %10 = alloca %struct.uvc_format**, align 8
  %11 = alloca %struct.uvc_frame**, align 8
  %12 = alloca %struct.uvc_format*, align 8
  %13 = alloca %struct.uvc_frame*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %7, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %8, align 8
  store %struct.uvc_streaming_control* %2, %struct.uvc_streaming_control** %9, align 8
  store %struct.uvc_format** %3, %struct.uvc_format*** %10, align 8
  store %struct.uvc_frame** %4, %struct.uvc_frame*** %11, align 8
  store %struct.uvc_format* null, %struct.uvc_format** %12, align 8
  store %struct.uvc_frame* null, %struct.uvc_frame** %13, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %28 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %319

34:                                               ; preds = %5
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = bitcast i64* %38 to i32*
  store i32* %39, i32** %21, align 8
  %40 = load i32, i32* @UVC_TRACE_FORMAT, align 4
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %21, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %21, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %21, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %21, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i32, i32, ...) @uvc_trace(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %63, i32 %68)
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %94, %34
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %73 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %70
  %77 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %78 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %77, i32 0, i32 6
  %79 = load %struct.uvc_format*, %struct.uvc_format** %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %79, i64 %81
  store %struct.uvc_format* %82, %struct.uvc_format** %12, align 8
  %83 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %84 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %85, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %97

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %18, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %18, align 4
  br label %70

97:                                               ; preds = %92, %70
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %100 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %105 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %104, i32 0, i32 5
  %106 = load %struct.uvc_format*, %struct.uvc_format** %105, align 8
  store %struct.uvc_format* %106, %struct.uvc_format** %12, align 8
  %107 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %108 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %111 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i64 %109, i64* %113, align 8
  br label %114

114:                                              ; preds = %103, %97
  %115 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %116 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %14, align 4
  %120 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %121 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %15, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %125

125:                                              ; preds = %181, %114
  %126 = load i32, i32* %18, align 4
  %127 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %128 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %184

131:                                              ; preds = %125
  %132 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %133 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %132, i32 0, i32 4
  %134 = load %struct.uvc_frame*, %struct.uvc_frame** %133, align 8
  %135 = load i32, i32* %18, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %134, i64 %136
  %138 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %22, align 4
  %140 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %141 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %140, i32 0, i32 4
  %142 = load %struct.uvc_frame*, %struct.uvc_frame** %141, align 8
  %143 = load i32, i32* %18, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %142, i64 %144
  %146 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @min(i32 %148, i32 %149)
  %151 = load i32, i32* %23, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @min(i32 %151, i32 %152)
  %154 = mul i32 %150, %153
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %23, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %15, align 4
  %160 = mul nsw i32 %158, %159
  %161 = add nsw i32 %157, %160
  %162 = load i32, i32* %16, align 4
  %163 = mul i32 2, %162
  %164 = sub i32 %161, %163
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %131
  %169 = load i32, i32* %16, align 4
  store i32 %169, i32* %17, align 4
  %170 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %171 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %170, i32 0, i32 4
  %172 = load %struct.uvc_frame*, %struct.uvc_frame** %171, align 8
  %173 = load i32, i32* %18, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %172, i64 %174
  store %struct.uvc_frame* %175, %struct.uvc_frame** %13, align 8
  br label %176

176:                                              ; preds = %168, %131
  %177 = load i32, i32* %17, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %184

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %18, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %18, align 4
  br label %125

184:                                              ; preds = %179, %125
  %185 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %186 = icmp eq %struct.uvc_frame* %185, null
  br i1 %186, label %187, label %202

187:                                              ; preds = %184
  %188 = load i32, i32* @UVC_TRACE_FORMAT, align 4
  %189 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %190 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %195 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, i8*, i32, i32, ...) @uvc_trace(i32 %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %193, i32 %198)
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %6, align 4
  br label %319

202:                                              ; preds = %184
  %203 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %204 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %19, align 4
  %206 = load i32, i32* @UVC_TRACE_FORMAT, align 4
  %207 = load i32, i32* %19, align 4
  %208 = sdiv i32 %207, 10
  %209 = load i32, i32* %19, align 4
  %210 = srem i32 %209, 10
  %211 = load i32, i32* %19, align 4
  %212 = sdiv i32 10000000, %211
  %213 = load i32, i32* %19, align 4
  %214 = sdiv i32 100000000, %213
  %215 = srem i32 %214, 10
  %216 = call i32 (i32, i8*, i32, i32, ...) @uvc_trace(i32 %206, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %208, i32 %210, i32 %212, i32 %215)
  %217 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %218 = call i32 @memset(%struct.uvc_streaming_control* %217, i32 0, i32 20)
  %219 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %220 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %219, i32 0, i32 0
  store i32 1, i32* %220, align 4
  %221 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %222 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %225 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 4
  %226 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %227 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %230 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %232 = load i32, i32* %19, align 4
  %233 = call i32 @uvc_try_frame_interval(%struct.uvc_frame* %231, i32 %232)
  %234 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %235 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 4
  %236 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %237 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %236, i32 0, i32 2
  %238 = call i32 @mutex_lock(i32* %237)
  %239 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %240 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %239, i32 0, i32 4
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @UVC_QUIRK_PROBE_EXTRAFIELDS, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %202
  %248 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %249 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %253 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %247, %202
  %255 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %256 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %257 = call i32 @uvc_probe_video(%struct.uvc_streaming* %255, %struct.uvc_streaming_control* %256)
  store i32 %257, i32* %20, align 4
  %258 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %259 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %258, i32 0, i32 2
  %260 = call i32 @mutex_unlock(i32* %259)
  %261 = load i32, i32* %20, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %254
  br label %317

264:                                              ; preds = %254
  %265 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %266 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %269 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  store i32 %267, i32* %271, align 8
  %272 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %273 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %276 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 2
  store i32 %274, i32* %278, align 4
  %279 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %280 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %281 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 6
  store i32 %279, i32* %283, align 4
  %284 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %285 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %286 = call i32 @uvc_v4l2_get_bytesperline(%struct.uvc_format* %284, %struct.uvc_frame* %285)
  %287 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %288 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 5
  store i32 %286, i32* %290, align 8
  %291 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %292 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %295 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 4
  store i32 %293, i32* %297, align 4
  %298 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %299 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %302 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 3
  store i32 %300, i32* %304, align 8
  %305 = load %struct.uvc_format**, %struct.uvc_format*** %10, align 8
  %306 = icmp ne %struct.uvc_format** %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %264
  %308 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %309 = load %struct.uvc_format**, %struct.uvc_format*** %10, align 8
  store %struct.uvc_format* %308, %struct.uvc_format** %309, align 8
  br label %310

310:                                              ; preds = %307, %264
  %311 = load %struct.uvc_frame**, %struct.uvc_frame*** %11, align 8
  %312 = icmp ne %struct.uvc_frame** %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %315 = load %struct.uvc_frame**, %struct.uvc_frame*** %11, align 8
  store %struct.uvc_frame* %314, %struct.uvc_frame** %315, align 8
  br label %316

316:                                              ; preds = %313, %310
  br label %317

317:                                              ; preds = %316, %263
  %318 = load i32, i32* %20, align 4
  store i32 %318, i32* %6, align 4
  br label %319

319:                                              ; preds = %317, %187, %31
  %320 = load i32, i32* %6, align 4
  ret i32 %320
}

declare dso_local i32 @uvc_trace(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memset(%struct.uvc_streaming_control*, i32, i32) #1

declare dso_local i32 @uvc_try_frame_interval(%struct.uvc_frame*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uvc_probe_video(%struct.uvc_streaming*, %struct.uvc_streaming_control*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @uvc_v4l2_get_bytesperline(%struct.uvc_format*, %struct.uvc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
