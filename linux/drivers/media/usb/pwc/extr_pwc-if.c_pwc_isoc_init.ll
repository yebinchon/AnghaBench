; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_pwc_isoc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_pwc_isoc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, %struct.urb**, i32, %struct.usb_device*, i32, i32, i32, i32, i64, i64, i32*, i64, i64 }
%struct.urb = type { i32, i32, i32, %struct.TYPE_8__*, i64, %struct.pwc_device*, i32, i32*, i32, i32, i32, %struct.usb_device* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ISO_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Failed to find packet size for video endpoint in current alternate setting.\0A\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Setting alternate interface %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@ISO_FRAMES_PER_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Allocated URB at 0x%p\0A\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ISO_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to allocate urb buffer %d\0A\00", align 1
@pwc_isoc_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"isoc_init() submit_urb %d failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"URB 0x%p submitted.\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"<< pwc_isoc_init()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*)* @pwc_isoc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_isoc_init(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  %11 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  store %struct.usb_host_interface* null, %struct.usb_host_interface** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %13 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %12, i32 0, i32 13
  store i64 0, i64* %13, align 8
  %14 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %15 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %14, i32 0, i32 12
  store i64 0, i64* %15, align 8
  %16 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %17 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %16, i32 0, i32 11
  store i32* null, i32** %17, align 8
  %18 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %19 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %21 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %23 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %22, i32 0, i32 4
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  store %struct.usb_device* %24, %struct.usb_device** %4, align 8
  br label %25

25:                                               ; preds = %273, %132, %1
  %26 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %27 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %28 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %31 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %34 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %37 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pwc_set_video_mode(%struct.pwc_device* %26, i32 %29, i32 %32, i32 %35, i32 %38, i32* %11, i32 1)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %41 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %40, i32 0)
  store %struct.usb_interface* %41, %struct.usb_interface** %9, align 8
  %42 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %43 = icmp ne %struct.usb_interface* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %25
  %45 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %46 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %47 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %45, i32 %48)
  store %struct.usb_host_interface* %49, %struct.usb_host_interface** %10, align 8
  br label %50

50:                                               ; preds = %44, %25
  %51 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %52 = icmp ne %struct.usb_host_interface* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %302

56:                                               ; preds = %50
  %57 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %58 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %57, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %95, %56
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %62 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %59
  %67 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %68 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 15
  %77 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %78 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %66
  %82 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %83 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %93 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %98

94:                                               ; preds = %66
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %59

98:                                               ; preds = %81, %59
  %99 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %100 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %105 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103, %98
  %110 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @ENFILE, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %302

113:                                              ; preds = %103
  %114 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %115 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %119 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %118, i32 0, i32 4
  %120 = load %struct.usb_device*, %struct.usb_device** %119, align 8
  %121 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %122 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @usb_set_interface(%struct.usb_device* %120, i32 0, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @ENOSPC, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %113
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %25

135:                                              ; preds = %129, %113
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %302

140:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %248, %140
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @MAX_ISO_BUFS, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %251

145:                                              ; preds = %141
  %146 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call %struct.urb* @usb_alloc_urb(i32 %146, i32 %147)
  store %struct.urb* %148, %struct.urb** %5, align 8
  %149 = load %struct.urb*, %struct.urb** %5, align 8
  %150 = icmp eq %struct.urb* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %153 = call i32 @pwc_isoc_cleanup(%struct.pwc_device* %152)
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %302

156:                                              ; preds = %145
  %157 = load %struct.urb*, %struct.urb** %5, align 8
  %158 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %159 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %158, i32 0, i32 2
  %160 = load %struct.urb**, %struct.urb*** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.urb*, %struct.urb** %160, i64 %162
  store %struct.urb* %157, %struct.urb** %163, align 8
  %164 = load %struct.urb*, %struct.urb** %5, align 8
  %165 = call i32 @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %164)
  %166 = load %struct.urb*, %struct.urb** %5, align 8
  %167 = getelementptr inbounds %struct.urb, %struct.urb* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  %168 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %169 = load %struct.urb*, %struct.urb** %5, align 8
  %170 = getelementptr inbounds %struct.urb, %struct.urb* %169, i32 0, i32 11
  store %struct.usb_device* %168, %struct.usb_device** %170, align 8
  %171 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %172 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %173 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @usb_rcvisocpipe(%struct.usb_device* %171, i32 %174)
  %176 = load %struct.urb*, %struct.urb** %5, align 8
  %177 = getelementptr inbounds %struct.urb, %struct.urb* %176, i32 0, i32 10
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @URB_ISO_ASAP, align 4
  %179 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.urb*, %struct.urb** %5, align 8
  %182 = getelementptr inbounds %struct.urb, %struct.urb* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @ISO_BUFFER_SIZE, align 4
  %184 = load %struct.urb*, %struct.urb** %5, align 8
  %185 = getelementptr inbounds %struct.urb, %struct.urb* %184, i32 0, i32 9
  store i32 %183, i32* %185, align 4
  %186 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %187 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %186, i32 0, i32 0
  %188 = load %struct.urb*, %struct.urb** %5, align 8
  %189 = getelementptr inbounds %struct.urb, %struct.urb* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.urb*, %struct.urb** %5, align 8
  %192 = getelementptr inbounds %struct.urb, %struct.urb* %191, i32 0, i32 8
  %193 = call i32* @pwc_alloc_urb_buffer(i32* %187, i32 %190, i32* %192)
  %194 = load %struct.urb*, %struct.urb** %5, align 8
  %195 = getelementptr inbounds %struct.urb, %struct.urb* %194, i32 0, i32 7
  store i32* %193, i32** %195, align 8
  %196 = load %struct.urb*, %struct.urb** %5, align 8
  %197 = getelementptr inbounds %struct.urb, %struct.urb* %196, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %156
  %201 = load i32, i32* %6, align 4
  %202 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  %203 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %204 = call i32 @pwc_isoc_cleanup(%struct.pwc_device* %203)
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %2, align 4
  br label %302

207:                                              ; preds = %156
  %208 = load i32, i32* @pwc_isoc_handler, align 4
  %209 = load %struct.urb*, %struct.urb** %5, align 8
  %210 = getelementptr inbounds %struct.urb, %struct.urb* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 8
  %211 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %212 = load %struct.urb*, %struct.urb** %5, align 8
  %213 = getelementptr inbounds %struct.urb, %struct.urb* %212, i32 0, i32 5
  store %struct.pwc_device* %211, %struct.pwc_device** %213, align 8
  %214 = load %struct.urb*, %struct.urb** %5, align 8
  %215 = getelementptr inbounds %struct.urb, %struct.urb* %214, i32 0, i32 4
  store i64 0, i64* %215, align 8
  %216 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %217 = load %struct.urb*, %struct.urb** %5, align 8
  %218 = getelementptr inbounds %struct.urb, %struct.urb* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  store i32 0, i32* %7, align 4
  br label %219

219:                                              ; preds = %244, %207
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %247

223:                                              ; preds = %219
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load %struct.urb*, %struct.urb** %5, align 8
  %228 = getelementptr inbounds %struct.urb, %struct.urb* %227, i32 0, i32 3
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  store i32 %226, i32* %233, align 4
  %234 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %235 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.urb*, %struct.urb** %5, align 8
  %238 = getelementptr inbounds %struct.urb, %struct.urb* %237, i32 0, i32 3
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  store i32 %236, i32* %243, align 4
  br label %244

244:                                              ; preds = %223
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %219

247:                                              ; preds = %219
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %6, align 4
  br label %141

251:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  br label %252

252:                                              ; preds = %297, %251
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* @MAX_ISO_BUFS, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %300

256:                                              ; preds = %252
  %257 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %258 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %257, i32 0, i32 2
  %259 = load %struct.urb**, %struct.urb*** %258, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.urb*, %struct.urb** %259, i64 %261
  %263 = load %struct.urb*, %struct.urb** %262, align 8
  %264 = load i32, i32* @GFP_KERNEL, align 4
  %265 = call i32 @usb_submit_urb(%struct.urb* %263, i32 %264)
  store i32 %265, i32* %8, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @ENOSPC, align 4
  %268 = sub nsw i32 0, %267
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %270, label %278

270:                                              ; preds = %256
  %271 = load i32, i32* %11, align 4
  %272 = icmp slt i32 %271, 3
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i32, i32* %11, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %11, align 4
  %276 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %277 = call i32 @pwc_isoc_cleanup(%struct.pwc_device* %276)
  br label %25

278:                                              ; preds = %270, %256
  %279 = load i32, i32* %8, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* %8, align 4
  %284 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %282, i32 %283)
  %285 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %286 = call i32 @pwc_isoc_cleanup(%struct.pwc_device* %285)
  %287 = load i32, i32* %8, align 4
  store i32 %287, i32* %2, align 4
  br label %302

288:                                              ; preds = %278
  %289 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %290 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %289, i32 0, i32 2
  %291 = load %struct.urb**, %struct.urb*** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.urb*, %struct.urb** %291, i64 %293
  %295 = load %struct.urb*, %struct.urb** %294, align 8
  %296 = call i32 @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.urb* %295)
  br label %297

297:                                              ; preds = %288
  %298 = load i32, i32* %6, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %6, align 4
  br label %252

300:                                              ; preds = %252
  %301 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %302

302:                                              ; preds = %300, %281, %200, %151, %138, %109, %53
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @pwc_set_video_mode(%struct.pwc_device*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @PWC_ERROR(i8*, ...) #1

declare dso_local i32 @PWC_DEBUG_OPEN(i8*, ...) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @pwc_isoc_cleanup(%struct.pwc_device*) #1

declare dso_local i32 @PWC_DEBUG_MEMORY(i8*, %struct.urb*) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32* @pwc_alloc_urb_buffer(i32*, i32, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
