; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/siano/extr_smsusb.c_smsusb_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/siano/extr_smsusb.c_smsusb_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.smsdevice_params_t = type { i32, i32, %struct.smsusb_device_t*, i32, i32, i32, %struct.TYPE_15__*, i32*, i32, i32, i32 }
%struct.smsusb_device_t = type { i32, i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.smsusb_device_t* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMSUSB_DISCONNECTED = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"in_ep = %02x, out_ep = %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB1_BUFFER_SIZE = common dso_local global i32 0, align 4
@smsusb1_setmode = common dso_local global i32 0, align 4
@smsusb1_detectmode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unspecified sms device type!\0A\00", align 1
@USB2_BUFFER_SIZE = common dso_local global i32 0, align 4
@SMS_DEVICE_FAMILY2 = common dso_local global i32 0, align 4
@MAX_BUFFERS = common dso_local global i32 0, align 4
@smsusb_sendrequest = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"smscore_register_device(...) failed, rc %d\0A\00", align 1
@MAX_URBS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"smsusb_start_streaming(...).\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"smsusb_start_streaming(...) failed\0A\00", align 1
@SMSUSB_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"smscore_start_device(...) failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"device 0x%p created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @smsusb_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsusb_init_device(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smsdevice_params_t, align 8
  %7 = alloca %struct.smsusb_device_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.smsusb_device_t* @kzalloc(i32 56, i32 %13)
  store %struct.smsusb_device_t* %14, %struct.smsusb_device_t** %7, align 8
  %15 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %16 = icmp ne %struct.smsusb_device_t* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %239

20:                                               ; preds = %2
  %21 = call i32 @memset(%struct.smsdevice_params_t* %6, i32 0, i32 64)
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %24 = call i32 @usb_set_intfdata(%struct.usb_interface* %22, %struct.smsusb_device_t* %23)
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = call %struct.TYPE_15__* @interface_to_usbdev(%struct.usb_interface* %25)
  %27 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %28 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %27, i32 0, i32 6
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %28, align 8
  %29 = load i32, i32* @SMSUSB_DISCONNECTED, align 4
  %30 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %31 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %75, %20
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %33, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %32
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %50, %struct.usb_endpoint_descriptor** %12, align 8
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %52 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @USB_DIR_IN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %41
  %58 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %59 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %62 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %64 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %63)
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  br label %74

68:                                               ; preds = %41
  %69 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %70 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %73 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %57
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %32

78:                                               ; preds = %32
  %79 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %80 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %83 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %87 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %92 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95, %90, %78
  %99 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %100 = call i32 @smsusb_term_device(%struct.usb_interface* %99)
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %239

103:                                              ; preds = %95
  %104 = load i32, i32* %5, align 4
  %105 = call %struct.TYPE_17__* @sms_get_board(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %121 [
    i32 129, label %111
    i32 128, label %119
  ]

111:                                              ; preds = %103
  %112 = load i32, i32* @USB1_BUFFER_SIZE, align 4
  %113 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %114 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @smsusb1_setmode, align 4
  %116 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 10
  store i32 %115, i32* %116, align 8
  %117 = load i32, i32* @smsusb1_detectmode, align 4
  %118 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 9
  store i32 %117, i32* %118, align 4
  br label %132

119:                                              ; preds = %103
  %120 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %103, %119
  %122 = load i32, i32* @USB2_BUFFER_SIZE, align 4
  %123 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %124 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %127 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @SMS_DEVICE_FAMILY2, align 4
  %129 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %121, %111
  %133 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %134 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %133, i32 0, i32 6
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 7
  store i32* %136, i32** %137, align 8
  %138 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %139 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %138, i32 0, i32 6
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 6
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %141, align 8
  %142 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %143 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 5
  store i32 %144, i32* %145, align 8
  %146 = load i32, i32* @MAX_BUFFERS, align 4
  %147 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 4
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @smsusb_sendrequest, align 4
  %149 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 3
  store i32 %148, i32* %149, align 8
  %150 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %151 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 2
  store %struct.smsusb_device_t* %150, %struct.smsusb_device_t** %151, align 8
  %152 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %153 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %152, i32 0, i32 6
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @usb_make_path(%struct.TYPE_15__* %154, i32 %156, i32 4)
  %158 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i8* @siano_media_device_register(%struct.smsusb_device_t* %158, i32 %159)
  store i8* %160, i8** %8, align 8
  %161 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %162 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %161, i32 0, i32 3
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 @smscore_register_device(%struct.smsdevice_params_t* %6, %struct.TYPE_16__** %162, i32 0, i8* %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %132
  %168 = load i32, i32* %10, align 4
  %169 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %171 = call i32 @smsusb_term_device(%struct.usb_interface* %170)
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @kfree(i8* %172)
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %3, align 4
  br label %239

175:                                              ; preds = %132
  %176 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %177 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %176, i32 0, i32 3
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @smscore_set_board_id(%struct.TYPE_16__* %178, i32 %179)
  %181 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %182 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %181, i32 0, i32 3
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 4
  store i32 0, i32* %9, align 4
  br label %185

185:                                              ; preds = %206, %175
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* @MAX_URBS, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %209

189:                                              ; preds = %185
  %190 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %191 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %192 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %191, i32 0, i32 5
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  store %struct.smsusb_device_t* %190, %struct.smsusb_device_t** %197, align 8
  %198 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %199 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %198, i32 0, i32 5
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = call i32 @usb_init_urb(i32* %204)
  br label %206

206:                                              ; preds = %189
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %185

209:                                              ; preds = %185
  %210 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %211 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %212 = call i32 @smsusb_start_streaming(%struct.smsusb_device_t* %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  %216 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %217 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %218 = call i32 @smsusb_term_device(%struct.usb_interface* %217)
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %3, align 4
  br label %239

220:                                              ; preds = %209
  %221 = load i32, i32* @SMSUSB_ACTIVE, align 4
  %222 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %223 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  %224 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %225 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %224, i32 0, i32 3
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %225, align 8
  %227 = call i32 @smscore_start_device(%struct.TYPE_16__* %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %220
  %231 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %232 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %233 = call i32 @smsusb_term_device(%struct.usb_interface* %232)
  %234 = load i32, i32* %10, align 4
  store i32 %234, i32* %3, align 4
  br label %239

235:                                              ; preds = %220
  %236 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %237 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), %struct.smsusb_device_t* %236)
  %238 = load i32, i32* %10, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %235, %230, %215, %167, %98, %17
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local %struct.smsusb_device_t* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.smsdevice_params_t*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.smsusb_device_t*) #1

declare dso_local %struct.TYPE_15__* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @smsusb_term_device(%struct.usb_interface*) #1

declare dso_local %struct.TYPE_17__* @sms_get_board(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i8* @siano_media_device_register(%struct.smsusb_device_t*, i32) #1

declare dso_local i32 @smscore_register_device(%struct.smsdevice_params_t*, %struct.TYPE_16__**, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @smscore_set_board_id(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @usb_init_urb(i32*) #1

declare dso_local i32 @smsusb_start_streaming(%struct.smsusb_device_t*) #1

declare dso_local i32 @smscore_start_device(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
