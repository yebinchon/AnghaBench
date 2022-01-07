; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_parse_standard_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_parse_standard_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32, i32, i32, %struct.TYPE_7__*, %struct.usb_device* }
%struct.TYPE_7__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.uvc_entity = type { i32, i32, %struct.TYPE_12__, i32*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i8, i8, i32*, i32* }
%struct.TYPE_10__ = type { i8, i8, i32*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32*, i8*, i8*, i8* }
%struct.usb_interface = type { i32 }

@UVC_TRACE_DESCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"device %d videocontrol interface %d HEADER error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"device %d interface %d doesn't exists\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"device %d videocontrol interface %d INPUT_TERMINAL error\0A\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"device %d videocontrol interface %d INPUT_TERMINAL %d has invalid type 0x%04x, skipping\0A\00", align 1
@UVC_ITT_CAMERA = common dso_local global i32 0, align 4
@UVC_ITT_MEDIA_TRANSPORT_INPUT = common dso_local global i32 0, align 4
@UVC_TERM_INPUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Camera %u\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Media %u\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Input %u\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"device %d videocontrol interface %d OUTPUT_TERMINAL error\0A\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"device %d videocontrol interface %d OUTPUT_TERMINAL %d has invalid type 0x%04x, skipping\0A\00", align 1
@UVC_TERM_OUTPUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"Output %u\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"device %d videocontrol interface %d SELECTOR_UNIT error\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Selector %u\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"device %d videocontrol interface %d PROCESSING_UNIT error\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Processing %u\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"device %d videocontrol interface %d EXTENSION_UNIT error\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Extension %u\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Found an unknown CS_INTERFACE descriptor (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, i8*, i32)* @uvc_parse_standard_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_parse_standard_control(%struct.uvc_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.uvc_entity*, align 8
  %10 = alloca %struct.uvc_entity*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_host_interface*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %19 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %18, i32 0, i32 4
  %20 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  store %struct.usb_device* %20, %struct.usb_device** %8, align 8
  %21 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %22 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %24, align 8
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %12, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  switch i32 %29, label %831 [
    i32 132, label %30
    i32 131, label %101
    i32 130, label %377
    i32 128, label %466
    i32 129, label %554
    i32 133, label %685
  ]

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 12
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 11
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32 [ %37, %33 ], [ 0, %38 ]
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add i32 12, %42
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %47 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = trunc i32 %49 to i8
  %51 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %52 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8 zeroext %50, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %838

58:                                               ; preds = %39
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = call i8* @get_unaligned_le16(i8* %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %64 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 7
  %67 = call i32 @get_unaligned_le32(i8* %66)
  %68 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %69 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %97, %58
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add i32 12, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %75, i8 zeroext %81)
  store %struct.usb_interface* %82, %struct.usb_interface** %11, align 8
  %83 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %84 = icmp eq %struct.usb_interface* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %87 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = trunc i32 %89 to i8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %90, i32 %91)
  br label %97

93:                                               ; preds = %74
  %94 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %95 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %96 = call i32 @uvc_parse_streaming(%struct.uvc_device* %94, %struct.usb_interface* %95)
  br label %97

97:                                               ; preds = %93, %85
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %70

100:                                              ; preds = %70
  br label %837

101:                                              ; preds = %3
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 8
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %106 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = trunc i32 %108 to i8
  %110 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %111 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %105, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %109, i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %838

117:                                              ; preds = %101
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 4
  %120 = call i8* @get_unaligned_le16(i8* %119)
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = and i32 %122, 32512
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %17, align 4
  %127 = and i32 %126, 32768
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %125, %117
  %130 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %131 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %132 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = trunc i32 %133 to i8
  %135 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %136 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* %17, align 4
  %144 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %130, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %134, i32 %138, i32 %142, i32 %143)
  store i32 0, i32* %4, align 4
  br label %838

145:                                              ; preds = %125
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 8, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @UVC_ITT_CAMERA, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load i32, i32* %7, align 4
  %151 = icmp sge i32 %150, 15
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 14
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  br label %158

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157, %152
  %159 = phi i32 [ %156, %152 ], [ 0, %157 ]
  store i32 %159, i32* %14, align 4
  store i32 15, i32* %16, align 4
  br label %191

160:                                              ; preds = %145
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @UVC_ITT_MEDIA_TRANSPORT_INPUT, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %160
  %165 = load i32, i32* %7, align 4
  %166 = icmp sge i32 %165, 9
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i8*, i8** %6, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 8
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  br label %173

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %167
  %174 = phi i32 [ %171, %167 ], [ 0, %172 ]
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %14, align 4
  %177 = add i32 10, %176
  %178 = icmp uge i32 %175, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %173
  %180 = load i8*, i8** %6, align 8
  %181 = load i32, i32* %14, align 4
  %182 = add i32 9, %181
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  br label %188

187:                                              ; preds = %173
  br label %188

188:                                              ; preds = %187, %179
  %189 = phi i32 [ %186, %179 ], [ 0, %187 ]
  store i32 %189, i32* %15, align 4
  store i32 10, i32* %16, align 4
  br label %190

190:                                              ; preds = %188, %160
  br label %191

191:                                              ; preds = %190, %158
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %14, align 4
  %195 = add i32 %193, %194
  %196 = load i32, i32* %15, align 4
  %197 = add i32 %195, %196
  %198 = icmp ult i32 %192, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %191
  %200 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %201 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %202 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = trunc i32 %203 to i8
  %205 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %206 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %200, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %204, i32 %208)
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %4, align 4
  br label %838

212:                                              ; preds = %191
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* @UVC_TERM_INPUT, align 4
  %215 = or i32 %213, %214
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 3
  %219 = load i8, i8* %218, align 1
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %15, align 4
  %222 = add i32 %220, %221
  %223 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %216, i8 zeroext %219, i32 1, i32 %222)
  store %struct.uvc_entity* %223, %struct.uvc_entity** %10, align 8
  %224 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %225 = icmp eq %struct.uvc_entity* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %212
  %227 = load i32, i32* @ENOMEM, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  br label %838

229:                                              ; preds = %212
  %230 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %231 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %230)
  %232 = load i32, i32* @UVC_ITT_CAMERA, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %271

234:                                              ; preds = %229
  %235 = load i32, i32* %14, align 4
  %236 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %237 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  store i32 %235, i32* %238, align 8
  %239 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %240 = bitcast %struct.uvc_entity* %239 to i32*
  %241 = getelementptr inbounds i32, i32* %240, i64 128
  %242 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %243 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  store i32* %241, i32** %244, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 8
  %247 = call i8* @get_unaligned_le16(i8* %246)
  %248 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %249 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %248, i32 0, i32 6
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 4
  store i8* %247, i8** %250, align 8
  %251 = load i8*, i8** %6, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 10
  %253 = call i8* @get_unaligned_le16(i8* %252)
  %254 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %255 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 3
  store i8* %253, i8** %256, align 8
  %257 = load i8*, i8** %6, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 12
  %259 = call i8* @get_unaligned_le16(i8* %258)
  %260 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %261 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  store i8* %259, i8** %262, align 8
  %263 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %264 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %263, i32 0, i32 6
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load i8*, i8** %6, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 15
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @memcpy(i32* %266, i8* %268, i32 %269)
  br label %320

271:                                              ; preds = %229
  %272 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %273 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %272)
  %274 = load i32, i32* @UVC_ITT_MEDIA_TRANSPORT_INPUT, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %319

276:                                              ; preds = %271
  %277 = load i32, i32* %14, align 4
  %278 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %279 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  store i32 %277, i32* %280, align 8
  %281 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %282 = bitcast %struct.uvc_entity* %281 to i32*
  %283 = getelementptr inbounds i32, i32* %282, i64 128
  %284 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %285 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 3
  store i32* %283, i32** %286, align 8
  %287 = load i32, i32* %15, align 4
  %288 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %289 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  store i32 %287, i32* %290, align 4
  %291 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %292 = bitcast %struct.uvc_entity* %291 to i32*
  %293 = getelementptr inbounds i32, i32* %292, i64 128
  %294 = load i32, i32* %14, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %298 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %297, i32 0, i32 5
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 2
  store i32* %296, i32** %299, align 8
  %300 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %301 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 3
  %303 = load i32*, i32** %302, align 8
  %304 = load i8*, i8** %6, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 9
  %306 = load i32, i32* %14, align 4
  %307 = call i32 @memcpy(i32* %303, i8* %305, i32 %306)
  %308 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %309 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 2
  %311 = load i32*, i32** %310, align 8
  %312 = load i8*, i8** %6, align 8
  %313 = load i32, i32* %14, align 4
  %314 = add i32 10, %313
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %312, i64 %315
  %317 = load i32, i32* %15, align 4
  %318 = call i32 @memcpy(i32* %311, i8* %316, i32 %317)
  br label %319

319:                                              ; preds = %276, %271
  br label %320

320:                                              ; preds = %319, %234
  %321 = load i8*, i8** %6, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 7
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %335

326:                                              ; preds = %320
  %327 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %328 = load i8*, i8** %6, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 7
  %330 = load i8, i8* %329, align 1
  %331 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %332 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @usb_string(%struct.usb_device* %327, i8 zeroext %330, i32 %333, i32 4)
  br label %371

335:                                              ; preds = %320
  %336 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %337 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %336)
  %338 = load i32, i32* @UVC_ITT_CAMERA, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %348

340:                                              ; preds = %335
  %341 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %342 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i8*, i8** %6, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 3
  %346 = load i8, i8* %345, align 1
  %347 = call i32 @sprintf(i32 %343, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %346)
  br label %370

348:                                              ; preds = %335
  %349 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %350 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %349)
  %351 = load i32, i32* @UVC_ITT_MEDIA_TRANSPORT_INPUT, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %361

353:                                              ; preds = %348
  %354 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %355 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i8*, i8** %6, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 3
  %359 = load i8, i8* %358, align 1
  %360 = call i32 @sprintf(i32 %356, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8 zeroext %359)
  br label %369

361:                                              ; preds = %348
  %362 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %363 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load i8*, i8** %6, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 3
  %367 = load i8, i8* %366, align 1
  %368 = call i32 @sprintf(i32 %364, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8 zeroext %367)
  br label %369

369:                                              ; preds = %361, %353
  br label %370

370:                                              ; preds = %369, %340
  br label %371

371:                                              ; preds = %370, %326
  %372 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %373 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %372, i32 0, i32 0
  %374 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %375 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %374, i32 0, i32 1
  %376 = call i32 @list_add_tail(i32* %373, i32* %375)
  br label %837

377:                                              ; preds = %3
  %378 = load i32, i32* %7, align 4
  %379 = icmp slt i32 %378, 9
  br i1 %379, label %380, label %393

380:                                              ; preds = %377
  %381 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %382 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %383 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = trunc i32 %384 to i8
  %386 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %387 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %381, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8 zeroext %385, i32 %389)
  %391 = load i32, i32* @EINVAL, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %4, align 4
  br label %838

393:                                              ; preds = %377
  %394 = load i8*, i8** %6, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 4
  %396 = call i8* @get_unaligned_le16(i8* %395)
  %397 = ptrtoint i8* %396 to i32
  store i32 %397, i32* %17, align 4
  %398 = load i32, i32* %17, align 4
  %399 = and i32 %398, 65280
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %417

401:                                              ; preds = %393
  %402 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %403 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %404 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = trunc i32 %405 to i8
  %407 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %408 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = load i8*, i8** %6, align 8
  %412 = getelementptr inbounds i8, i8* %411, i64 3
  %413 = load i8, i8* %412, align 1
  %414 = zext i8 %413 to i32
  %415 = load i32, i32* %17, align 4
  %416 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %402, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i64 0, i64 0), i8 zeroext %406, i32 %410, i32 %414, i32 %415)
  store i32 0, i32* %4, align 4
  br label %838

417:                                              ; preds = %393
  %418 = load i32, i32* %17, align 4
  %419 = load i32, i32* @UVC_TERM_OUTPUT, align 4
  %420 = or i32 %418, %419
  %421 = trunc i32 %420 to i8
  %422 = load i8*, i8** %6, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 3
  %424 = load i8, i8* %423, align 1
  %425 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %421, i8 zeroext %424, i32 1, i32 0)
  store %struct.uvc_entity* %425, %struct.uvc_entity** %10, align 8
  %426 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %427 = icmp eq %struct.uvc_entity* %426, null
  br i1 %427, label %428, label %431

428:                                              ; preds = %417
  %429 = load i32, i32* @ENOMEM, align 4
  %430 = sub nsw i32 0, %429
  store i32 %430, i32* %4, align 4
  br label %838

431:                                              ; preds = %417
  %432 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %433 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %432, i32 0, i32 3
  %434 = load i32*, i32** %433, align 8
  %435 = load i8*, i8** %6, align 8
  %436 = getelementptr inbounds i8, i8* %435, i64 7
  %437 = call i32 @memcpy(i32* %434, i8* %436, i32 1)
  %438 = load i8*, i8** %6, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 8
  %440 = load i8, i8* %439, align 1
  %441 = zext i8 %440 to i32
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %452

443:                                              ; preds = %431
  %444 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %445 = load i8*, i8** %6, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 8
  %447 = load i8, i8* %446, align 1
  %448 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %449 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @usb_string(%struct.usb_device* %444, i8 zeroext %447, i32 %450, i32 4)
  br label %460

452:                                              ; preds = %431
  %453 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %454 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load i8*, i8** %6, align 8
  %457 = getelementptr inbounds i8, i8* %456, i64 3
  %458 = load i8, i8* %457, align 1
  %459 = call i32 @sprintf(i32 %455, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8 zeroext %458)
  br label %460

460:                                              ; preds = %452, %443
  %461 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %462 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %461, i32 0, i32 0
  %463 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %464 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %463, i32 0, i32 1
  %465 = call i32 @list_add_tail(i32* %462, i32* %464)
  br label %837

466:                                              ; preds = %3
  %467 = load i32, i32* %7, align 4
  %468 = icmp sge i32 %467, 5
  br i1 %468, label %469, label %474

469:                                              ; preds = %466
  %470 = load i8*, i8** %6, align 8
  %471 = getelementptr inbounds i8, i8* %470, i64 4
  %472 = load i8, i8* %471, align 1
  %473 = zext i8 %472 to i32
  br label %475

474:                                              ; preds = %466
  br label %475

475:                                              ; preds = %474, %469
  %476 = phi i32 [ %473, %469 ], [ 0, %474 ]
  store i32 %476, i32* %15, align 4
  %477 = load i32, i32* %7, align 4
  %478 = icmp slt i32 %477, 5
  br i1 %478, label %484, label %479

479:                                              ; preds = %475
  %480 = load i32, i32* %7, align 4
  %481 = load i32, i32* %15, align 4
  %482 = add i32 6, %481
  %483 = icmp ult i32 %480, %482
  br i1 %483, label %484, label %497

484:                                              ; preds = %479, %475
  %485 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %486 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %487 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = trunc i32 %488 to i8
  %490 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %491 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %485, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i8 zeroext %489, i32 %493)
  %495 = load i32, i32* @EINVAL, align 4
  %496 = sub nsw i32 0, %495
  store i32 %496, i32* %4, align 4
  br label %838

497:                                              ; preds = %479
  %498 = load i8*, i8** %6, align 8
  %499 = getelementptr inbounds i8, i8* %498, i64 2
  %500 = load i8, i8* %499, align 1
  %501 = load i8*, i8** %6, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 3
  %503 = load i8, i8* %502, align 1
  %504 = load i32, i32* %15, align 4
  %505 = add i32 %504, 1
  %506 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %500, i8 zeroext %503, i32 %505, i32 0)
  store %struct.uvc_entity* %506, %struct.uvc_entity** %9, align 8
  %507 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %508 = icmp eq %struct.uvc_entity* %507, null
  br i1 %508, label %509, label %512

509:                                              ; preds = %497
  %510 = load i32, i32* @ENOMEM, align 4
  %511 = sub nsw i32 0, %510
  store i32 %511, i32* %4, align 4
  br label %838

512:                                              ; preds = %497
  %513 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %514 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %513, i32 0, i32 3
  %515 = load i32*, i32** %514, align 8
  %516 = load i8*, i8** %6, align 8
  %517 = getelementptr inbounds i8, i8* %516, i64 5
  %518 = load i32, i32* %15, align 4
  %519 = call i32 @memcpy(i32* %515, i8* %517, i32 %518)
  %520 = load i8*, i8** %6, align 8
  %521 = load i32, i32* %15, align 4
  %522 = add i32 5, %521
  %523 = zext i32 %522 to i64
  %524 = getelementptr inbounds i8, i8* %520, i64 %523
  %525 = load i8, i8* %524, align 1
  %526 = zext i8 %525 to i32
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %540

528:                                              ; preds = %512
  %529 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %530 = load i8*, i8** %6, align 8
  %531 = load i32, i32* %15, align 4
  %532 = add i32 5, %531
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds i8, i8* %530, i64 %533
  %535 = load i8, i8* %534, align 1
  %536 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %537 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = call i32 @usb_string(%struct.usb_device* %529, i8 zeroext %535, i32 %538, i32 4)
  br label %548

540:                                              ; preds = %512
  %541 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %542 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = load i8*, i8** %6, align 8
  %545 = getelementptr inbounds i8, i8* %544, i64 3
  %546 = load i8, i8* %545, align 1
  %547 = call i32 @sprintf(i32 %543, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8 zeroext %546)
  br label %548

548:                                              ; preds = %540, %528
  %549 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %550 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %549, i32 0, i32 0
  %551 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %552 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %551, i32 0, i32 1
  %553 = call i32 @list_add_tail(i32* %550, i32* %552)
  br label %837

554:                                              ; preds = %3
  %555 = load i32, i32* %7, align 4
  %556 = icmp sge i32 %555, 8
  br i1 %556, label %557, label %562

557:                                              ; preds = %554
  %558 = load i8*, i8** %6, align 8
  %559 = getelementptr inbounds i8, i8* %558, i64 7
  %560 = load i8, i8* %559, align 1
  %561 = zext i8 %560 to i32
  br label %563

562:                                              ; preds = %554
  br label %563

563:                                              ; preds = %562, %557
  %564 = phi i32 [ %561, %557 ], [ 0, %562 ]
  store i32 %564, i32* %14, align 4
  %565 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %566 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = icmp sge i32 %567, 272
  %569 = zext i1 %568 to i64
  %570 = select i1 %568, i32 10, i32 9
  store i32 %570, i32* %15, align 4
  %571 = load i32, i32* %7, align 4
  %572 = load i32, i32* %15, align 4
  %573 = load i32, i32* %14, align 4
  %574 = add i32 %572, %573
  %575 = icmp ult i32 %571, %574
  br i1 %575, label %576, label %589

576:                                              ; preds = %563
  %577 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %578 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %579 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 4
  %581 = trunc i32 %580 to i8
  %582 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %583 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %577, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i8 zeroext %581, i32 %585)
  %587 = load i32, i32* @EINVAL, align 4
  %588 = sub nsw i32 0, %587
  store i32 %588, i32* %4, align 4
  br label %838

589:                                              ; preds = %563
  %590 = load i8*, i8** %6, align 8
  %591 = getelementptr inbounds i8, i8* %590, i64 2
  %592 = load i8, i8* %591, align 1
  %593 = load i8*, i8** %6, align 8
  %594 = getelementptr inbounds i8, i8* %593, i64 3
  %595 = load i8, i8* %594, align 1
  %596 = load i32, i32* %14, align 4
  %597 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %592, i8 zeroext %595, i32 2, i32 %596)
  store %struct.uvc_entity* %597, %struct.uvc_entity** %9, align 8
  %598 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %599 = icmp eq %struct.uvc_entity* %598, null
  br i1 %599, label %600, label %603

600:                                              ; preds = %589
  %601 = load i32, i32* @ENOMEM, align 4
  %602 = sub nsw i32 0, %601
  store i32 %602, i32* %4, align 4
  br label %838

603:                                              ; preds = %589
  %604 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %605 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %604, i32 0, i32 3
  %606 = load i32*, i32** %605, align 8
  %607 = load i8*, i8** %6, align 8
  %608 = getelementptr inbounds i8, i8* %607, i64 4
  %609 = call i32 @memcpy(i32* %606, i8* %608, i32 1)
  %610 = load i8*, i8** %6, align 8
  %611 = getelementptr inbounds i8, i8* %610, i64 5
  %612 = call i8* @get_unaligned_le16(i8* %611)
  %613 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %614 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %613, i32 0, i32 4
  %615 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %614, i32 0, i32 3
  store i8* %612, i8** %615, align 8
  %616 = load i8*, i8** %6, align 8
  %617 = getelementptr inbounds i8, i8* %616, i64 7
  %618 = load i8, i8* %617, align 1
  %619 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %620 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %619, i32 0, i32 4
  %621 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %620, i32 0, i32 0
  store i8 %618, i8* %621, align 8
  %622 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %623 = bitcast %struct.uvc_entity* %622 to i32*
  %624 = getelementptr inbounds i32, i32* %623, i64 128
  %625 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %626 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %625, i32 0, i32 4
  %627 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %626, i32 0, i32 2
  store i32* %624, i32** %627, align 8
  %628 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %629 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %628, i32 0, i32 4
  %630 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %629, i32 0, i32 2
  %631 = load i32*, i32** %630, align 8
  %632 = load i8*, i8** %6, align 8
  %633 = getelementptr inbounds i8, i8* %632, i64 8
  %634 = load i32, i32* %14, align 4
  %635 = call i32 @memcpy(i32* %631, i8* %633, i32 %634)
  %636 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %637 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = icmp sge i32 %638, 272
  br i1 %639, label %640, label %650

640:                                              ; preds = %603
  %641 = load i8*, i8** %6, align 8
  %642 = load i32, i32* %14, align 4
  %643 = add i32 9, %642
  %644 = zext i32 %643 to i64
  %645 = getelementptr inbounds i8, i8* %641, i64 %644
  %646 = load i8, i8* %645, align 1
  %647 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %648 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %647, i32 0, i32 4
  %649 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %648, i32 0, i32 1
  store i8 %646, i8* %649, align 1
  br label %650

650:                                              ; preds = %640, %603
  %651 = load i8*, i8** %6, align 8
  %652 = load i32, i32* %14, align 4
  %653 = add i32 8, %652
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds i8, i8* %651, i64 %654
  %656 = load i8, i8* %655, align 1
  %657 = zext i8 %656 to i32
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %671

659:                                              ; preds = %650
  %660 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %661 = load i8*, i8** %6, align 8
  %662 = load i32, i32* %14, align 4
  %663 = add i32 8, %662
  %664 = zext i32 %663 to i64
  %665 = getelementptr inbounds i8, i8* %661, i64 %664
  %666 = load i8, i8* %665, align 1
  %667 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %668 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 4
  %670 = call i32 @usb_string(%struct.usb_device* %660, i8 zeroext %666, i32 %669, i32 4)
  br label %679

671:                                              ; preds = %650
  %672 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %673 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = load i8*, i8** %6, align 8
  %676 = getelementptr inbounds i8, i8* %675, i64 3
  %677 = load i8, i8* %676, align 1
  %678 = call i32 @sprintf(i32 %674, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8 zeroext %677)
  br label %679

679:                                              ; preds = %671, %659
  %680 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %681 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %680, i32 0, i32 0
  %682 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %683 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %682, i32 0, i32 1
  %684 = call i32 @list_add_tail(i32* %681, i32* %683)
  br label %837

685:                                              ; preds = %3
  %686 = load i32, i32* %7, align 4
  %687 = icmp sge i32 %686, 22
  br i1 %687, label %688, label %693

688:                                              ; preds = %685
  %689 = load i8*, i8** %6, align 8
  %690 = getelementptr inbounds i8, i8* %689, i64 21
  %691 = load i8, i8* %690, align 1
  %692 = zext i8 %691 to i32
  br label %694

693:                                              ; preds = %685
  br label %694

694:                                              ; preds = %693, %688
  %695 = phi i32 [ %692, %688 ], [ 0, %693 ]
  store i32 %695, i32* %15, align 4
  %696 = load i32, i32* %7, align 4
  %697 = load i32, i32* %15, align 4
  %698 = add i32 24, %697
  %699 = icmp uge i32 %696, %698
  br i1 %699, label %700, label %708

700:                                              ; preds = %694
  %701 = load i8*, i8** %6, align 8
  %702 = load i32, i32* %15, align 4
  %703 = add i32 22, %702
  %704 = zext i32 %703 to i64
  %705 = getelementptr inbounds i8, i8* %701, i64 %704
  %706 = load i8, i8* %705, align 1
  %707 = zext i8 %706 to i32
  br label %709

708:                                              ; preds = %694
  br label %709

709:                                              ; preds = %708, %700
  %710 = phi i32 [ %707, %700 ], [ 0, %708 ]
  store i32 %710, i32* %14, align 4
  %711 = load i32, i32* %7, align 4
  %712 = load i32, i32* %15, align 4
  %713 = add i32 24, %712
  %714 = load i32, i32* %14, align 4
  %715 = add i32 %713, %714
  %716 = icmp ult i32 %711, %715
  br i1 %716, label %717, label %730

717:                                              ; preds = %709
  %718 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %719 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %720 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 4
  %722 = trunc i32 %721 to i8
  %723 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %724 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %723, i32 0, i32 0
  %725 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 4
  %727 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %718, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0), i8 zeroext %722, i32 %726)
  %728 = load i32, i32* @EINVAL, align 4
  %729 = sub nsw i32 0, %728
  store i32 %729, i32* %4, align 4
  br label %838

730:                                              ; preds = %709
  %731 = load i8*, i8** %6, align 8
  %732 = getelementptr inbounds i8, i8* %731, i64 2
  %733 = load i8, i8* %732, align 1
  %734 = load i8*, i8** %6, align 8
  %735 = getelementptr inbounds i8, i8* %734, i64 3
  %736 = load i8, i8* %735, align 1
  %737 = load i32, i32* %15, align 4
  %738 = add i32 %737, 1
  %739 = load i32, i32* %14, align 4
  %740 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %733, i8 zeroext %736, i32 %738, i32 %739)
  store %struct.uvc_entity* %740, %struct.uvc_entity** %9, align 8
  %741 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %742 = icmp eq %struct.uvc_entity* %741, null
  br i1 %742, label %743, label %746

743:                                              ; preds = %730
  %744 = load i32, i32* @ENOMEM, align 4
  %745 = sub nsw i32 0, %744
  store i32 %745, i32* %4, align 4
  br label %838

746:                                              ; preds = %730
  %747 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %748 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %747, i32 0, i32 2
  %749 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %748, i32 0, i32 3
  %750 = load i32*, i32** %749, align 8
  %751 = load i8*, i8** %6, align 8
  %752 = getelementptr inbounds i8, i8* %751, i64 4
  %753 = call i32 @memcpy(i32* %750, i8* %752, i32 16)
  %754 = load i8*, i8** %6, align 8
  %755 = getelementptr inbounds i8, i8* %754, i64 20
  %756 = load i8, i8* %755, align 1
  %757 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %758 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %757, i32 0, i32 2
  %759 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %758, i32 0, i32 0
  store i8 %756, i8* %759, align 8
  %760 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %761 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %760, i32 0, i32 3
  %762 = load i32*, i32** %761, align 8
  %763 = load i8*, i8** %6, align 8
  %764 = getelementptr inbounds i8, i8* %763, i64 22
  %765 = load i32, i32* %15, align 4
  %766 = call i32 @memcpy(i32* %762, i8* %764, i32 %765)
  %767 = load i8*, i8** %6, align 8
  %768 = load i32, i32* %15, align 4
  %769 = add i32 22, %768
  %770 = zext i32 %769 to i64
  %771 = getelementptr inbounds i8, i8* %767, i64 %770
  %772 = load i8, i8* %771, align 1
  %773 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %774 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %773, i32 0, i32 2
  %775 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %774, i32 0, i32 1
  store i8 %772, i8* %775, align 1
  %776 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %777 = bitcast %struct.uvc_entity* %776 to i32*
  %778 = getelementptr inbounds i32, i32* %777, i64 128
  %779 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %780 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %779, i32 0, i32 2
  %781 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %780, i32 0, i32 2
  store i32* %778, i32** %781, align 8
  %782 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %783 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %782, i32 0, i32 2
  %784 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %783, i32 0, i32 2
  %785 = load i32*, i32** %784, align 8
  %786 = load i8*, i8** %6, align 8
  %787 = load i32, i32* %15, align 4
  %788 = add i32 23, %787
  %789 = zext i32 %788 to i64
  %790 = getelementptr inbounds i8, i8* %786, i64 %789
  %791 = load i32, i32* %14, align 4
  %792 = call i32 @memcpy(i32* %785, i8* %790, i32 %791)
  %793 = load i8*, i8** %6, align 8
  %794 = load i32, i32* %15, align 4
  %795 = add i32 23, %794
  %796 = load i32, i32* %14, align 4
  %797 = add i32 %795, %796
  %798 = zext i32 %797 to i64
  %799 = getelementptr inbounds i8, i8* %793, i64 %798
  %800 = load i8, i8* %799, align 1
  %801 = zext i8 %800 to i32
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %803, label %817

803:                                              ; preds = %746
  %804 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %805 = load i8*, i8** %6, align 8
  %806 = load i32, i32* %15, align 4
  %807 = add i32 23, %806
  %808 = load i32, i32* %14, align 4
  %809 = add i32 %807, %808
  %810 = zext i32 %809 to i64
  %811 = getelementptr inbounds i8, i8* %805, i64 %810
  %812 = load i8, i8* %811, align 1
  %813 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %814 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %813, i32 0, i32 1
  %815 = load i32, i32* %814, align 4
  %816 = call i32 @usb_string(%struct.usb_device* %804, i8 zeroext %812, i32 %815, i32 4)
  br label %825

817:                                              ; preds = %746
  %818 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %819 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %818, i32 0, i32 1
  %820 = load i32, i32* %819, align 4
  %821 = load i8*, i8** %6, align 8
  %822 = getelementptr inbounds i8, i8* %821, i64 3
  %823 = load i8, i8* %822, align 1
  %824 = call i32 @sprintf(i32 %820, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8 zeroext %823)
  br label %825

825:                                              ; preds = %817, %803
  %826 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %827 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %826, i32 0, i32 0
  %828 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %829 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %828, i32 0, i32 1
  %830 = call i32 @list_add_tail(i32* %827, i32* %829)
  br label %837

831:                                              ; preds = %3
  %832 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %833 = load i8*, i8** %6, align 8
  %834 = getelementptr inbounds i8, i8* %833, i64 2
  %835 = load i8, i8* %834, align 1
  %836 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %832, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i8 zeroext %835)
  br label %837

837:                                              ; preds = %831, %825, %679, %548, %460, %371, %100
  store i32 0, i32* %4, align 4
  br label %838

838:                                              ; preds = %837, %743, %717, %600, %576, %509, %484, %428, %401, %380, %226, %199, %129, %104, %45
  %839 = load i32, i32* %4, align 4
  ret i32 %839
}

declare dso_local i32 @uvc_trace(i32, i8*, i8 zeroext, ...) #1

declare dso_local i8* @get_unaligned_le16(i8*) #1

declare dso_local i32 @get_unaligned_le32(i8*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i8 zeroext) #1

declare dso_local i32 @uvc_parse_streaming(%struct.uvc_device*, %struct.usb_interface*) #1

declare dso_local %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext, i8 zeroext, i32, i32) #1

declare dso_local i32 @UVC_ENTITY_TYPE(%struct.uvc_entity*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i8 zeroext, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8 zeroext) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
