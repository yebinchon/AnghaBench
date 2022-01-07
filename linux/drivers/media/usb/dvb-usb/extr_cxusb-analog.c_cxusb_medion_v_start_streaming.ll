; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_8__*, %struct.cxusb_medion_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.cxusb_medion_dev = type { i32, %struct.TYPE_7__, %struct.urb**, %struct.TYPE_6__, i32*, i64, i64, i64, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.urb = type { i32, i32*, i32, i32, %struct.TYPE_5__*, i32, i32, i32, %struct.dvb_usb_device*, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, i32 }

@__const.cxusb_medion_v_start_streaming.streamon_params = private unnamed_addr constant [2 x i32] [i32 3, i32 0], align 4
@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"should start streaming\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to start stream (%d)\0A\00", align 1
@CMD_STREAMING_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to start streaming (%d)\0A\00", align 1
@CXUSB_VIDEO_URBS = common dso_local global i32 0, align 4
@CXUSB_VIDEO_PKT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@cxusb_medion_v_complete = common dso_local global i32 0, align 4
@NEW_FRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"URB %d submission failed (%d)\0A\00", align 1
@CMD_STREAMING_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @cxusb_medion_v_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_v_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.cxusb_medion_dev*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.urb*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %16 = call %struct.dvb_usb_device* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.dvb_usb_device* %16, %struct.dvb_usb_device** %6, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 1
  %19 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %18, align 8
  store %struct.cxusb_medion_dev* %19, %struct.cxusb_medion_dev** %7, align 8
  %20 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([2 x i32]* @__const.cxusb_medion_v_start_streaming.streamon_params to i8*), i64 8, i1 false)
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %22 = load i32, i32* @OPS, align 4
  %23 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %21, i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %25 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %248

31:                                               ; preds = %2
  %32 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %33 = call i32 @cxusb_medion_field_order(%struct.cxusb_medion_dev* %32)
  %34 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %35 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %37 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @video, align 4
  %40 = load i32, i32* @s_stream, align 4
  %41 = call i32 @v4l2_subdev_call(i32 %38, i32 %39, i32 %40, i32 1)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %248

51:                                               ; preds = %31
  %52 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %53 = load i32, i32* @CMD_STREAMING_ON, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %55 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %52, i32 %53, i32* %54, i32 2, i32* null, i32 0)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %241

65:                                               ; preds = %51
  %66 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %67 = call i32 @cxusb_medion_v_ss_auxbuf_alloc(%struct.cxusb_medion_dev* %66, i32* %9)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %237

71:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %170, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @CXUSB_VIDEO_URBS, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %173

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @CXUSB_VIDEO_PKT_SIZE, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32* @kmalloc(i32 %79, i32 %80)
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %231

90:                                               ; preds = %84
  br label %173

91:                                               ; preds = %76
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.urb* @usb_alloc_urb(i32 %92, i32 %93)
  store %struct.urb* %94, %struct.urb** %14, align 8
  %95 = load %struct.urb*, %struct.urb** %14, align 8
  %96 = icmp ne %struct.urb* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @kfree(i32* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %11, align 4
  br label %228

102:                                              ; preds = %91
  %103 = load %struct.urb*, %struct.urb** %14, align 8
  %104 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %105 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %104, i32 0, i32 2
  %106 = load %struct.urb**, %struct.urb*** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.urb*, %struct.urb** %106, i64 %108
  store %struct.urb* %103, %struct.urb** %109, align 8
  %110 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %111 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load %struct.urb*, %struct.urb** %14, align 8
  %114 = getelementptr inbounds %struct.urb, %struct.urb* %113, i32 0, i32 9
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %114, align 8
  %115 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %116 = load %struct.urb*, %struct.urb** %14, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 8
  store %struct.dvb_usb_device* %115, %struct.dvb_usb_device** %117, align 8
  %118 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %119 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = call i32 @usb_rcvisocpipe(%struct.TYPE_8__* %120, i32 2)
  %122 = load %struct.urb*, %struct.urb** %14, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 8
  %124 = load %struct.urb*, %struct.urb** %14, align 8
  %125 = getelementptr inbounds %struct.urb, %struct.urb* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load i32, i32* @URB_ISO_ASAP, align 4
  %127 = load %struct.urb*, %struct.urb** %14, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 4
  %129 = load i32*, i32** %13, align 8
  %130 = load %struct.urb*, %struct.urb** %14, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 1
  store i32* %129, i32** %131, align 8
  %132 = load i32, i32* @cxusb_medion_v_complete, align 4
  %133 = load %struct.urb*, %struct.urb** %14, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.urb*, %struct.urb** %14, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @CXUSB_VIDEO_PKT_SIZE, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load %struct.urb*, %struct.urb** %14, align 8
  %142 = getelementptr inbounds %struct.urb, %struct.urb* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  store i32 0, i32* %12, align 4
  br label %143

143:                                              ; preds = %166, %102
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %143
  %148 = load i32, i32* @CXUSB_VIDEO_PKT_SIZE, align 4
  %149 = load i32, i32* %12, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load %struct.urb*, %struct.urb** %14, align 8
  %152 = getelementptr inbounds %struct.urb, %struct.urb* %151, i32 0, i32 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i32 %150, i32* %157, align 4
  %158 = load i32, i32* @CXUSB_VIDEO_PKT_SIZE, align 4
  %159 = load %struct.urb*, %struct.urb** %14, align 8
  %160 = getelementptr inbounds %struct.urb, %struct.urb* %159, i32 0, i32 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i32 %158, i32* %165, align 4
  br label %166

166:                                              ; preds = %147
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %143

169:                                              ; preds = %143
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %72

173:                                              ; preds = %90, %72
  %174 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %175 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %174, i32 0, i32 7
  store i64 0, i64* %175, align 8
  %176 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %177 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %176, i32 0, i32 6
  store i64 0, i64* %177, align 8
  %178 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %179 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %178, i32 0, i32 5
  store i64 0, i64* %179, align 8
  %180 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %181 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %180, i32 0, i32 4
  store i32* null, i32** %181, align 8
  %182 = load i32, i32* @NEW_FRAME, align 4
  %183 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %184 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 8
  %186 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %187 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i32* null, i32** %188, align 8
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %224, %173
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @CXUSB_VIDEO_URBS, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %227

193:                                              ; preds = %189
  %194 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %195 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %194, i32 0, i32 2
  %196 = load %struct.urb**, %struct.urb*** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.urb*, %struct.urb** %196, i64 %198
  %200 = load %struct.urb*, %struct.urb** %199, align 8
  %201 = icmp ne %struct.urb* %200, null
  br i1 %201, label %202, label %223

202:                                              ; preds = %193
  %203 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %204 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %203, i32 0, i32 2
  %205 = load %struct.urb**, %struct.urb*** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.urb*, %struct.urb** %205, i64 %207
  %209 = load %struct.urb*, %struct.urb** %208, align 8
  %210 = load i32, i32* @GFP_KERNEL, align 4
  %211 = call i32 @usb_submit_urb(%struct.urb* %209, i32 %210)
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %202
  %215 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %216 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %215, i32 0, i32 0
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %11, align 4
  %221 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %218, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %214, %202
  br label %223

223:                                              ; preds = %222, %193
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %189

227:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %252

228:                                              ; preds = %97
  %229 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %230 = call i32 @cxusb_medion_urbs_free(%struct.cxusb_medion_dev* %229)
  br label %231

231:                                              ; preds = %228, %87
  %232 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %233 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @vfree(i32 %235)
  br label %237

237:                                              ; preds = %231, %70
  %238 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %239 = load i32, i32* @CMD_STREAMING_OFF, align 4
  %240 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %238, i32 %239, i32* null, i32 0, i32* null, i32 0)
  br label %241

241:                                              ; preds = %237, %58
  %242 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %243 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @video, align 4
  %246 = load i32, i32* @s_stream, align 4
  %247 = call i32 @v4l2_subdev_call(i32 %244, i32 %245, i32 %246, i32 0)
  br label %248

248:                                              ; preds = %241, %44, %28
  %249 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %250 = call i32 @cxusb_medion_return_buffers(%struct.cxusb_medion_dev* %249, i32 1)
  %251 = load i32, i32* %11, align 4
  store i32 %251, i32* %3, align 4
  br label %252

252:                                              ; preds = %248, %227
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local %struct.dvb_usb_device* @vb2_get_drv_priv(%struct.vb2_queue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*) #1

declare dso_local i32 @cxusb_medion_field_order(%struct.cxusb_medion_dev*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @cxusb_medion_v_ss_auxbuf_alloc(%struct.cxusb_medion_dev*, i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @cxusb_medion_urbs_free(%struct.cxusb_medion_dev*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @cxusb_medion_return_buffers(%struct.cxusb_medion_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
