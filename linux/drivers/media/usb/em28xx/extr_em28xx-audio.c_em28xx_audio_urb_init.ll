; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_audio_urb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_audio_urb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_10__, %struct.TYPE_12__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i8**, %struct.urb** }
%struct.urb = type { i32, i32, i32, i32, %struct.TYPE_11__*, i32, i8*, i32, %struct.em28xx*, %struct.usb_device*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.usb_interface = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"alt %d doesn't exist on interface %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EM28XX_EP_AUDIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Couldn't find an audio endpoint\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Endpoint 0x%02x %s on intf %d alt %d interval = %d, size %d\0A\00", align 1
@EM28XX_MAX_AUDIO_BUFS = common dso_local global i32 0, align 4
@EM28XX_MIN_AUDIO_PACKETS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Number of URBs: %d, with %d packets and %d size\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"usb_alloc_coherent failed!\0A\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@em28xx_audio_isocirq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_audio_urb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_audio_urb_init(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.urb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %6, align 8
  %20 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = call %struct.usb_device* @interface_to_usbdev(%struct.TYPE_12__* %22)
  store %struct.usb_device* %23, %struct.usb_device** %7, align 8
  %24 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i64 1, i64* %15, align 8
  br label %30

29:                                               ; preds = %1
  store i64 7, i64* %15, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %32 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %31, i32 %34)
  store %struct.usb_interface* %35, %struct.usb_interface** %4, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %30
  %42 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %329

53:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %90, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %57 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i64, i64* %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %55, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %54
  %66 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %67 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i64, i64* %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %76, %struct.usb_endpoint_descriptor** %5, align 8
  %77 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %78 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %65
  br label %90

81:                                               ; preds = %65
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %83 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EM28XX_EP_AUDIO, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  store %struct.usb_endpoint_descriptor* %88, %struct.usb_endpoint_descriptor** %6, align 8
  br label %93

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %54

93:                                               ; preds = %87, %54
  %94 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %95 = icmp ne %struct.usb_endpoint_descriptor* %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %98 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %329

104:                                              ; preds = %93
  %105 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %106 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %107 = call i32 @em28xx_audio_ep_packet_size(%struct.usb_device* %105, %struct.usb_endpoint_descriptor* %106)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %109 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = shl i32 1, %111
  store i32 %112, i32* %10, align 4
  %113 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %114 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %113, i32 0, i32 1
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* @EM28XX_EP_AUDIO, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %120 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @usb_speed_string(i32 %121)
  %123 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %124 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %15, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_info(i32* %116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %122, i32 %125, i64 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = mul nsw i32 125, %130
  %132 = call i32 @DIV_ROUND_UP(i32 192000, i32 %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @DIV_ROUND_UP(i32 %133, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @EM28XX_MAX_AUDIO_BUFS, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %104
  %140 = load i32, i32* @EM28XX_MAX_AUDIO_BUFS, align 4
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %139, %104
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %11, align 4
  %144 = sdiv i32 %142, %143
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* @EM28XX_MIN_AUDIO_PACKETS, align 4
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %12, align 4
  %149 = mul nsw i32 %147, %148
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @DIV_ROUND_UP(i32 %152, i32 %153)
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %151, %141
  %156 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %157 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_info(i32* %159, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %161, i32 %162)
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %12, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %168 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call i8* @kcalloc(i32 %170, i32 8, i32 %171)
  %173 = bitcast i8* %172 to i8**
  %174 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %175 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  store i8** %173, i8*** %176, align 8
  %177 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %178 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load i8**, i8*** %179, align 8
  %181 = icmp ne i8** %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %155
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %329

185:                                              ; preds = %155
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call i8* @kcalloc(i32 %186, i32 8, i32 %187)
  %189 = bitcast i8* %188 to %struct.urb**
  %190 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %191 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 3
  store %struct.urb** %189, %struct.urb*** %192, align 8
  %193 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %194 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 3
  %196 = load %struct.urb**, %struct.urb*** %195, align 8
  %197 = icmp ne %struct.urb** %196, null
  br i1 %197, label %206, label %198

198:                                              ; preds = %185
  %199 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %200 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i8**, i8*** %201, align 8
  %203 = call i32 @kfree(i8** %202)
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %329

206:                                              ; preds = %185
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %209 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 4
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %325, %206
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %328

215:                                              ; preds = %211
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @GFP_KERNEL, align 4
  %218 = call %struct.urb* @usb_alloc_urb(i32 %216, i32 %217)
  store %struct.urb* %218, %struct.urb** %16, align 8
  %219 = load %struct.urb*, %struct.urb** %16, align 8
  %220 = icmp ne %struct.urb* %219, null
  br i1 %220, label %226, label %221

221:                                              ; preds = %215
  %222 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %223 = call i32 @em28xx_audio_free_urb(%struct.em28xx* %222)
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %2, align 4
  br label %329

226:                                              ; preds = %215
  %227 = load %struct.urb*, %struct.urb** %16, align 8
  %228 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %229 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 3
  %231 = load %struct.urb**, %struct.urb*** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.urb*, %struct.urb** %231, i64 %233
  store %struct.urb* %227, %struct.urb** %234, align 8
  %235 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %9, align 4
  %238 = mul nsw i32 %236, %237
  %239 = load i32, i32* @GFP_KERNEL, align 4
  %240 = load %struct.urb*, %struct.urb** %16, align 8
  %241 = getelementptr inbounds %struct.urb, %struct.urb* %240, i32 0, i32 10
  %242 = call i8* @usb_alloc_coherent(%struct.usb_device* %235, i32 %238, i32 %239, i32* %241)
  store i8* %242, i8** %19, align 8
  %243 = load i8*, i8** %19, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %255, label %245

245:                                              ; preds = %226
  %246 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %247 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %246, i32 0, i32 1
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = call i32 (i32*, i8*, ...) @dev_err(i32* %249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %251 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %252 = call i32 @em28xx_audio_free_urb(%struct.em28xx* %251)
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %2, align 4
  br label %329

255:                                              ; preds = %226
  %256 = load i8*, i8** %19, align 8
  %257 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %258 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 2
  %260 = load i8**, i8*** %259, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8*, i8** %260, i64 %262
  store i8* %256, i8** %263, align 8
  %264 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %265 = load %struct.urb*, %struct.urb** %16, align 8
  %266 = getelementptr inbounds %struct.urb, %struct.urb* %265, i32 0, i32 9
  store %struct.usb_device* %264, %struct.usb_device** %266, align 8
  %267 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %268 = load %struct.urb*, %struct.urb** %16, align 8
  %269 = getelementptr inbounds %struct.urb, %struct.urb* %268, i32 0, i32 8
  store %struct.em28xx* %267, %struct.em28xx** %269, align 8
  %270 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %271 = load i64, i64* @EM28XX_EP_AUDIO, align 8
  %272 = call i32 @usb_rcvisocpipe(%struct.usb_device* %270, i64 %271)
  %273 = load %struct.urb*, %struct.urb** %16, align 8
  %274 = getelementptr inbounds %struct.urb, %struct.urb* %273, i32 0, i32 7
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* @URB_ISO_ASAP, align 4
  %276 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %277 = or i32 %275, %276
  %278 = load %struct.urb*, %struct.urb** %16, align 8
  %279 = getelementptr inbounds %struct.urb, %struct.urb* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load i8*, i8** %19, align 8
  %281 = load %struct.urb*, %struct.urb** %16, align 8
  %282 = getelementptr inbounds %struct.urb, %struct.urb* %281, i32 0, i32 6
  store i8* %280, i8** %282, align 8
  %283 = load i32, i32* %10, align 4
  %284 = load %struct.urb*, %struct.urb** %16, align 8
  %285 = getelementptr inbounds %struct.urb, %struct.urb* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load i32, i32* @em28xx_audio_isocirq, align 4
  %287 = load %struct.urb*, %struct.urb** %16, align 8
  %288 = getelementptr inbounds %struct.urb, %struct.urb* %287, i32 0, i32 5
  store i32 %286, i32* %288, align 8
  %289 = load i32, i32* %12, align 4
  %290 = load %struct.urb*, %struct.urb** %16, align 8
  %291 = getelementptr inbounds %struct.urb, %struct.urb* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 8
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* %12, align 4
  %294 = mul nsw i32 %292, %293
  %295 = load %struct.urb*, %struct.urb** %16, align 8
  %296 = getelementptr inbounds %struct.urb, %struct.urb* %295, i32 0, i32 3
  store i32 %294, i32* %296, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %297

297:                                              ; preds = %318, %255
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %12, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %324

301:                                              ; preds = %297
  %302 = load i32, i32* %18, align 4
  %303 = load %struct.urb*, %struct.urb** %16, align 8
  %304 = getelementptr inbounds %struct.urb, %struct.urb* %303, i32 0, i32 4
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %304, align 8
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  store i32 %302, i32* %309, align 4
  %310 = load i32, i32* %9, align 4
  %311 = load %struct.urb*, %struct.urb** %16, align 8
  %312 = getelementptr inbounds %struct.urb, %struct.urb* %311, i32 0, i32 4
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %312, align 8
  %314 = load i32, i32* %17, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 1
  store i32 %310, i32* %317, align 4
  br label %318

318:                                              ; preds = %301
  %319 = load i32, i32* %17, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* %18, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %18, align 4
  br label %297

324:                                              ; preds = %297
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %8, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %8, align 4
  br label %211

328:                                              ; preds = %211
  store i32 0, i32* %2, align 4
  br label %329

329:                                              ; preds = %328, %245, %221, %198, %182, %96, %41
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.TYPE_12__*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @em28xx_audio_ep_packet_size(%struct.usb_device*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @usb_speed_string(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @em28xx_audio_free_urb(%struct.em28xx*) #1

declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
