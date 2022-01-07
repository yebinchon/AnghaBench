; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_usb_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_usb_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.usb_device_id = type { i32, i32 }
%struct.si470x_device = type { i32, i32*, i32, i32, i32, %struct.si470x_device*, %struct.si470x_device*, i32, %struct.TYPE_14__, %struct.TYPE_15__, %struct.si470x_device*, %struct.TYPE_13__, i32, i64, i64, i32, i32, %struct.usb_endpoint_descriptor*, i32, i32, i32, i32, i32, i32, %struct.usb_interface* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_REPORT_SIZE = common dso_local global i32 0, align 4
@si470x_get_register = common dso_local global i32 0, align 4
@si470x_set_register = common dso_local global i32 0, align 4
@si470x_fops_open = common dso_local global i32 0, align 4
@si470x_fops_release = common dso_local global i32 0, align 4
@si470x_vidioc_querycap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not find interrupt in endpoint\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not allocate int_in_buffer\00", align 1
@si470x_usb_release = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"this is not a si470x device.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@si470x_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"couldn't register control\0A\00", align 1
@si470x_viddev_template = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_HW_FREQ_SEEK = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_RDS_CAPTURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"DeviceID=0x%4.4hx ChipID=0x%4.4hx\0A\00", align 1
@DEVICEID = common dso_local global i64 0, align 8
@SI_CHIPID = common dso_local global i64 0, align 8
@SI_CHIPID_FIRMWARE = common dso_local global i32 0, align 4
@RADIO_FW_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"This driver is known to work with firmware version %hu,\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"but the device has firmware version %hu.\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"software version %d, hardware version %d\0A\00", align 1
@RADIO_HW_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [57 x i8] c"This driver is known to work with hardware version %hu,\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"but the device has hardware version %hu.\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"If you have some trouble using this driver,\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"please report to V4L ML at linux-media@vger.kernel.org\0A\00", align 1
@BLINK_GREEN_LED = common dso_local global i32 0, align 4
@rds_buf = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global double 0.000000e+00, align 8
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@radio_nr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"Could not register video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @si470x_usb_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_usb_driver_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.si470x_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.si470x_device* @kzalloc(i32 176, i32 %13)
  store %struct.si470x_device* %14, %struct.si470x_device** %6, align 8
  %15 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %16 = icmp ne %struct.si470x_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %449

20:                                               ; preds = %2
  %21 = load i32, i32* @MAX_REPORT_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.si470x_device*
  %25 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %26 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %25, i32 0, i32 5
  store %struct.si470x_device* %24, %struct.si470x_device** %26, align 8
  %27 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %28 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %27, i32 0, i32 5
  %29 = load %struct.si470x_device*, %struct.si470x_device** %28, align 8
  %30 = icmp eq %struct.si470x_device* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %446

34:                                               ; preds = %20
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = call i32 @interface_to_usbdev(%struct.usb_interface* %35)
  %37 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %38 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %37, i32 0, i32 16
  store i32 %36, i32* %38, align 4
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %41 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %40, i32 0, i32 24
  store %struct.usb_interface* %39, %struct.usb_interface** %41, align 8
  %42 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %43 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %45 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %44, i32 0, i32 15
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %48 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %47, i32 0, i32 23
  %49 = call i32 @init_completion(i32* %48)
  %50 = load i32, i32* @si470x_get_register, align 4
  %51 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %52 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %51, i32 0, i32 22
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @si470x_set_register, align 4
  %54 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %55 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %54, i32 0, i32 21
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @si470x_fops_open, align 4
  %57 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %58 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %57, i32 0, i32 20
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @si470x_fops_release, align 4
  %60 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %61 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %60, i32 0, i32 19
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @si470x_vidioc_querycap, align 4
  %63 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %64 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %63, i32 0, i32 18
  store i32 %62, i32* %64, align 8
  %65 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %65, i32 0, i32 1
  %67 = load %struct.usb_host_interface*, %struct.usb_host_interface** %66, align 8
  store %struct.usb_host_interface* %67, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %91, %34
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %71 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %68
  %76 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %77 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %82, %struct.usb_endpoint_descriptor** %8, align 8
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %84 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %88 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %89 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %88, i32 0, i32 17
  store %struct.usb_endpoint_descriptor* %87, %struct.usb_endpoint_descriptor** %89, align 8
  br label %90

90:                                               ; preds = %86, %75
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %68

94:                                               ; preds = %68
  %95 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %96 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %95, i32 0, i32 17
  %97 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %96, align 8
  %98 = icmp ne %struct.usb_endpoint_descriptor* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %101 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %100, i32 0, i32 0
  %102 = call i32 (i32*, i8*, ...) @dev_info(i32* %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %11, align 4
  br label %441

105:                                              ; preds = %94
  %106 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %107 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %106, i32 0, i32 17
  %108 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %107, align 8
  %109 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le16_to_cpu(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call i8* @kmalloc(i32 %112, i32 %113)
  %115 = bitcast i8* %114 to %struct.si470x_device*
  %116 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %117 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %116, i32 0, i32 6
  store %struct.si470x_device* %115, %struct.si470x_device** %117, align 8
  %118 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %119 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %118, i32 0, i32 6
  %120 = load %struct.si470x_device*, %struct.si470x_device** %119, align 8
  %121 = icmp ne %struct.si470x_device* %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %105
  %123 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %124 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %123, i32 0, i32 0
  %125 = call i32 (i32*, i8*, ...) @dev_info(i32* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %11, align 4
  br label %441

128:                                              ; preds = %105
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i32 @usb_alloc_urb(i32 0, i32 %129)
  %131 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %132 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 8
  %133 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %134 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %128
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %11, align 4
  br label %436

140:                                              ; preds = %128
  %141 = load i32, i32* @si470x_usb_release, align 4
  %142 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %143 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  %145 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %146 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 4292
  br i1 %148, label %149, label %189

149:                                              ; preds = %140
  %150 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %151 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 33162
  br i1 %153, label %154, label %189

154:                                              ; preds = %149
  %155 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %156 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %155, i32 0, i32 16
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %159 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %158, i32 0, i32 16
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @usb_rcvctrlpipe(i32 %160, i32 0)
  %162 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %163 = load i32, i32* @USB_TYPE_CLASS, align 4
  %164 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @USB_DIR_IN, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %169 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %168, i32 0, i32 5
  %170 = load %struct.si470x_device*, %struct.si470x_device** %169, align 8
  %171 = call i32 @usb_control_msg(i32 %157, i32 %161, i32 %162, i32 %167, i32 1, i32 2, %struct.si470x_device* %170, i32 3, i32 500)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 3
  br i1 %173, label %182, label %174

174:                                              ; preds = %154
  %175 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %176 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %175, i32 0, i32 5
  %177 = load %struct.si470x_device*, %struct.si470x_device** %176, align 8
  %178 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %177, i64 1
  %179 = call i32 @get_unaligned_be16(%struct.si470x_device* %178)
  %180 = and i32 %179, 4095
  %181 = icmp ne i32 %180, 578
  br i1 %181, label %182, label %188

182:                                              ; preds = %174, %154
  %183 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %184 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %183, i32 0, i32 0
  %185 = call i32 (i32*, i8*, ...) @dev_info(i32* %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %186 = load i32, i32* @ENODEV, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %11, align 4
  br label %431

188:                                              ; preds = %174
  br label %189

189:                                              ; preds = %188, %149, %140
  %190 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %191 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %190, i32 0, i32 0
  %192 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %193 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %192, i32 0, i32 8
  %194 = call i32 @v4l2_device_register(i32* %191, %struct.TYPE_14__* %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %199 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %198, i32 0, i32 0
  %200 = call i32 @dev_err(i32* %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %431

201:                                              ; preds = %189
  %202 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %203 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %202, i32 0, i32 9
  %204 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_15__* %203, i32 2)
  %205 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %206 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %205, i32 0, i32 9
  %207 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %208 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_15__* %206, i32* @si470x_ctrl_ops, i32 %207, i32 0, i32 1, i32 1, i32 1)
  %209 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %210 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %209, i32 0, i32 9
  %211 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %212 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_15__* %210, i32* @si470x_ctrl_ops, i32 %211, i32 0, i32 15, i32 1, i32 15)
  %213 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %214 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %213, i32 0, i32 9
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %201
  %219 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %220 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %219, i32 0, i32 9
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %11, align 4
  %223 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %224 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %223, i32 0, i32 0
  %225 = call i32 @dev_err(i32* %224, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %427

226:                                              ; preds = %201
  %227 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %228 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %227, i32 0, i32 11
  %229 = bitcast %struct.TYPE_13__* %228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %229, i8* align 8 bitcast (%struct.TYPE_13__* @si470x_viddev_template to i8*), i64 32, i1 false)
  %230 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %231 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %230, i32 0, i32 9
  %232 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %233 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %232, i32 0, i32 11
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 4
  store %struct.TYPE_15__* %231, %struct.TYPE_15__** %234, align 8
  %235 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %236 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %235, i32 0, i32 15
  %237 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %238 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %237, i32 0, i32 11
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 3
  store i32* %236, i32** %239, align 8
  %240 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %241 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %240, i32 0, i32 8
  %242 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %243 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %242, i32 0, i32 11
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 2
  store %struct.TYPE_14__* %241, %struct.TYPE_14__** %244, align 8
  %245 = load i32, i32* @video_device_release_empty, align 4
  %246 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %247 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %246, i32 0, i32 11
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 4
  %249 = load i32, i32* @V4L2_CAP_HW_FREQ_SEEK, align 4
  %250 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @V4L2_CAP_RDS_CAPTURE, align 4
  %257 = or i32 %255, %256
  %258 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %259 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %258, i32 0, i32 11
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  store i32 %257, i32* %260, align 8
  %261 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %262 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %261, i32 0, i32 11
  %263 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %264 = call i32 @video_set_drvdata(%struct.TYPE_13__* %262, %struct.si470x_device* %263)
  %265 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %266 = call i64 @si470x_get_all_registers(%struct.si470x_device* %265)
  %267 = icmp slt i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %226
  %269 = load i32, i32* @EIO, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %11, align 4
  br label %423

271:                                              ; preds = %226
  %272 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %273 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %272, i32 0, i32 0
  %274 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %275 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @DEVICEID, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %281 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @SI_CHIPID, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (i32*, i8*, ...) @dev_info(i32* %273, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %279, i32 %285)
  %287 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %288 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @SI_CHIPID, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @SI_CHIPID_FIRMWARE, align 4
  %294 = and i32 %292, %293
  %295 = load i32, i32* @RADIO_FW_VERSION, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %313

297:                                              ; preds = %271
  %298 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %299 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %298, i32 0, i32 0
  %300 = load i32, i32* @RADIO_FW_VERSION, align 4
  %301 = call i32 (i32*, i8*, ...) @dev_warn(i32* %299, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %300)
  %302 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %303 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %302, i32 0, i32 0
  %304 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %305 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* @SI_CHIPID, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @SI_CHIPID_FIRMWARE, align 4
  %311 = and i32 %309, %310
  %312 = call i32 (i32*, i8*, ...) @dev_warn(i32* %303, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %311)
  store i8 1, i8* %12, align 1
  br label %313

313:                                              ; preds = %297, %271
  %314 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %315 = call i64 @si470x_get_scratch_page_versions(%struct.si470x_device* %314)
  %316 = icmp slt i64 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %313
  %318 = load i32, i32* @EIO, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %11, align 4
  br label %423

320:                                              ; preds = %313
  %321 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %322 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %321, i32 0, i32 0
  %323 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %324 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %327 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i32*, i8*, ...) @dev_info(i32* %322, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %325, i32 %328)
  %330 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %331 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @RADIO_HW_VERSION, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %346

335:                                              ; preds = %320
  %336 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %337 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %336, i32 0, i32 0
  %338 = load i32, i32* @RADIO_HW_VERSION, align 4
  %339 = call i32 (i32*, i8*, ...) @dev_warn(i32* %337, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 %338)
  %340 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %341 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %340, i32 0, i32 0
  %342 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %343 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = call i32 (i32*, i8*, ...) @dev_warn(i32* %341, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %344)
  store i8 1, i8* %12, align 1
  br label %346

346:                                              ; preds = %335, %320
  %347 = load i8, i8* %12, align 1
  %348 = zext i8 %347 to i32
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %350, label %357

350:                                              ; preds = %346
  %351 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %352 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %351, i32 0, i32 0
  %353 = call i32 (i32*, i8*, ...) @dev_warn(i32* %352, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %354 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %355 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %354, i32 0, i32 0
  %356 = call i32 (i32*, i8*, ...) @dev_warn(i32* %355, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  br label %357

357:                                              ; preds = %350, %346
  %358 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %359 = load i32, i32* @BLINK_GREEN_LED, align 4
  %360 = call i32 @si470x_set_led_state(%struct.si470x_device* %358, i32 %359)
  %361 = load i32, i32* @rds_buf, align 4
  %362 = mul nsw i32 %361, 3
  %363 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %364 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %363, i32 0, i32 4
  store i32 %362, i32* %364, align 8
  %365 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %366 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @GFP_KERNEL, align 4
  %369 = call i8* @kmalloc(i32 %367, i32 %368)
  %370 = bitcast i8* %369 to %struct.si470x_device*
  %371 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %372 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %371, i32 0, i32 10
  store %struct.si470x_device* %370, %struct.si470x_device** %372, align 8
  %373 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %374 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %373, i32 0, i32 10
  %375 = load %struct.si470x_device*, %struct.si470x_device** %374, align 8
  %376 = icmp ne %struct.si470x_device* %375, null
  br i1 %376, label %380, label %377

377:                                              ; preds = %357
  %378 = load i32, i32* @EIO, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %11, align 4
  br label %423

380:                                              ; preds = %357
  %381 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %382 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %381, i32 0, i32 14
  store i64 0, i64* %382, align 8
  %383 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %384 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %383, i32 0, i32 13
  store i64 0, i64* %384, align 8
  %385 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %386 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %385, i32 0, i32 12
  %387 = call i32 @init_waitqueue_head(i32* %386)
  %388 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %389 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %390 = call i32 @usb_set_intfdata(%struct.usb_interface* %388, %struct.si470x_device* %389)
  %391 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %392 = call i32 @si470x_start_usb(%struct.si470x_device* %391)
  store i32 %392, i32* %11, align 4
  %393 = load i32, i32* %11, align 4
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %380
  br label %418

396:                                              ; preds = %380
  %397 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %398 = load double, double* @FREQ_MUL, align 8
  %399 = fmul double 8.750000e+01, %398
  %400 = call i32 @si470x_set_freq(%struct.si470x_device* %397, double %399)
  %401 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %402 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %401, i32 0, i32 11
  %403 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %404 = load i32, i32* @radio_nr, align 4
  %405 = call i32 @video_register_device(%struct.TYPE_13__* %402, i32 %403, i32 %404)
  store i32 %405, i32* %11, align 4
  %406 = load i32, i32* %11, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %396
  %409 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %410 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %409, i32 0, i32 0
  %411 = call i32 @dev_err(i32* %410, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %413

412:                                              ; preds = %396
  store i32 0, i32* %3, align 4
  br label %451

413:                                              ; preds = %408
  %414 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %415 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %414, i32 0, i32 7
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @usb_kill_urb(i32 %416)
  br label %418

418:                                              ; preds = %413, %395
  %419 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %420 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %419, i32 0, i32 10
  %421 = load %struct.si470x_device*, %struct.si470x_device** %420, align 8
  %422 = call i32 @kfree(%struct.si470x_device* %421)
  br label %423

423:                                              ; preds = %418, %377, %317, %268
  %424 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %425 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %424, i32 0, i32 9
  %426 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_15__* %425)
  br label %427

427:                                              ; preds = %423, %218
  %428 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %429 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %428, i32 0, i32 8
  %430 = call i32 @v4l2_device_unregister(%struct.TYPE_14__* %429)
  br label %431

431:                                              ; preds = %427, %197, %182
  %432 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %433 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @usb_free_urb(i32 %434)
  br label %436

436:                                              ; preds = %431, %137
  %437 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %438 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %437, i32 0, i32 6
  %439 = load %struct.si470x_device*, %struct.si470x_device** %438, align 8
  %440 = call i32 @kfree(%struct.si470x_device* %439)
  br label %441

441:                                              ; preds = %436, %122, %99
  %442 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %443 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %442, i32 0, i32 5
  %444 = load %struct.si470x_device*, %struct.si470x_device** %443, align 8
  %445 = call i32 @kfree(%struct.si470x_device* %444)
  br label %446

446:                                              ; preds = %441, %31
  %447 = load %struct.si470x_device*, %struct.si470x_device** %6, align 8
  %448 = call i32 @kfree(%struct.si470x_device* %447)
  br label %449

449:                                              ; preds = %446, %17
  %450 = load i32, i32* %11, align 4
  store i32 %450, i32* %3, align 4
  br label %451

451:                                              ; preds = %449, %412
  %452 = load i32, i32* %3, align 4
  ret i32 %452
}

declare dso_local %struct.si470x_device* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.si470x_device*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @get_unaligned_be16(%struct.si470x_device*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_13__*, %struct.si470x_device*) #1

declare dso_local i64 @si470x_get_all_registers(%struct.si470x_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i64 @si470x_get_scratch_page_versions(%struct.si470x_device*) #1

declare dso_local i32 @si470x_set_led_state(%struct.si470x_device*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.si470x_device*) #1

declare dso_local i32 @si470x_start_usb(%struct.si470x_device*) #1

declare dso_local i32 @si470x_set_freq(%struct.si470x_device*, double) #1

declare dso_local i32 @video_register_device(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @kfree(%struct.si470x_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_15__*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_14__*) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
