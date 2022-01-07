; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_igorplugusb.c_igorplugusb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_igorplugusb.c_igorplugusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.igorplugusb = type { i32, i32, %struct.rc_dev*, i32, i32, %struct.TYPE_7__, i32* }
%struct.rc_dev = type { i32, i32, i32, i32, i32, %struct.igorplugusb*, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"incorrect number of endpoints\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"endpoint incorrect\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@igorplugusb_timer = common dso_local global i32 0, align 4
@GET_INFRACODE = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@igorplugusb_callback = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@DRIVER_DESC = common dso_local global i32 0, align 4
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NEC = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NECX = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NEC32 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_6A_20 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_6A_24 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_6A_32 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_MCE = common dso_local global i32 0, align 4
@RC_PROTO_BIT_SONY20 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_SANYO = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_HAUPPAUGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register rc device: %d\00", align 1
@SET_INFRABUFFER_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @igorplugusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igorplugusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.igorplugusb*, align 8
  %10 = alloca %struct.rc_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %6, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 1
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  store %struct.usb_host_interface* %18, %struct.usb_host_interface** %7, align 8
  %19 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %20 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %203

30:                                               ; preds = %2
  %31 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %32 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %35, %struct.usb_endpoint_descriptor** %8, align 8
  %36 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %37 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %41 = call i32 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %30
  %44 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %45 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %203

49:                                               ; preds = %39
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 0
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.igorplugusb* @devm_kzalloc(i32* %51, i32 48, i32 %52)
  store %struct.igorplugusb* %53, %struct.igorplugusb** %9, align 8
  %54 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %55 = icmp ne %struct.igorplugusb* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %203

59:                                               ; preds = %49
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %60, i32 0, i32 0
  %62 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %63 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %62, i32 0, i32 6
  store i32* %61, i32** %63, align 8
  %64 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %65 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %64, i32 0, i32 0
  %66 = load i32, i32* @igorplugusb_timer, align 4
  %67 = call i32 @timer_setup(i32* %65, i32 %66, i32 0)
  %68 = load i32, i32* @GET_INFRACODE, align 4
  %69 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %70 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %73 = load i32, i32* @USB_DIR_IN, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %76 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = call i32 @cpu_to_le16(i32 4)
  %79 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %80 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32 @usb_alloc_urb(i32 0, i32 %82)
  %84 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %85 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %87 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %59
  br label %190

91:                                               ; preds = %59
  %92 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %93 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %96 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %97 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %96, i32 0)
  %98 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %99 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %98, i32 0, i32 5
  %100 = bitcast %struct.TYPE_7__* %99 to i32*
  %101 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %102 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @igorplugusb_callback, align 4
  %105 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %106 = call i32 @usb_fill_control_urb(i32 %94, %struct.usb_device* %95, i32 %97, i32* %100, i32 %103, i32 4, i32 %104, %struct.igorplugusb* %105)
  %107 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %108 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %109 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @usb_make_path(%struct.usb_device* %107, i32 %110, i32 4)
  %112 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %113 = call %struct.rc_dev* @rc_allocate_device(i32 %112)
  store %struct.rc_dev* %113, %struct.rc_dev** %10, align 8
  %114 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %115 = icmp ne %struct.rc_dev* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %91
  br label %190

117:                                              ; preds = %91
  %118 = load i32, i32* @DRIVER_DESC, align 4
  %119 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %120 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 8
  %121 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %122 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %125 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 4
  %126 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %127 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %128 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %127, i32 0, i32 7
  %129 = call i32 @usb_to_input_id(%struct.usb_device* %126, i32* %128)
  %130 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %131 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %130, i32 0, i32 0
  %132 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %133 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i32* %131, i32** %134, align 8
  %135 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %136 = load i32, i32* @RC_PROTO_BIT_NEC, align 4
  %137 = load i32, i32* @RC_PROTO_BIT_NECX, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @RC_PROTO_BIT_NEC32, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @RC_PROTO_BIT_RC6_6A_20, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @RC_PROTO_BIT_RC6_6A_24, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @RC_PROTO_BIT_RC6_6A_32, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @RC_PROTO_BIT_RC6_MCE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @RC_PROTO_BIT_SONY20, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @RC_PROTO_BIT_SANYO, align 4
  %152 = or i32 %150, %151
  %153 = xor i32 %152, -1
  %154 = and i32 %135, %153
  %155 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %156 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %158 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %159 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %158, i32 0, i32 5
  store %struct.igorplugusb* %157, %struct.igorplugusb** %159, align 8
  %160 = load i32, i32* @DRIVER_NAME, align 4
  %161 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %162 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @RC_MAP_HAUPPAUGE, align 4
  %164 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %165 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = call i32 @MS_TO_NS(i32 100)
  %167 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %168 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %170 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %169, i32 0, i32 1
  store i32 85333, i32* %170, align 4
  %171 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %172 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %173 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %172, i32 0, i32 2
  store %struct.rc_dev* %171, %struct.rc_dev** %173, align 8
  %174 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %175 = call i32 @rc_register_device(%struct.rc_dev* %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %117
  %179 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %180 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %179, i32 0, i32 0
  %181 = load i32, i32* %11, align 4
  %182 = call i32 (i32*, i8*, ...) @dev_err(i32* %180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  br label %190

183:                                              ; preds = %117
  %184 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %185 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %186 = call i32 @usb_set_intfdata(%struct.usb_interface* %184, %struct.igorplugusb* %185)
  %187 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %188 = load i32, i32* @SET_INFRABUFFER_EMPTY, align 4
  %189 = call i32 @igorplugusb_cmd(%struct.igorplugusb* %187, i32 %188)
  store i32 0, i32* %3, align 4
  br label %203

190:                                              ; preds = %178, %116, %90
  %191 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %192 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %191, i32 0, i32 2
  %193 = load %struct.rc_dev*, %struct.rc_dev** %192, align 8
  %194 = call i32 @rc_free_device(%struct.rc_dev* %193)
  %195 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %196 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @usb_free_urb(i32 %197)
  %199 = load %struct.igorplugusb*, %struct.igorplugusb** %9, align 8
  %200 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %199, i32 0, i32 0
  %201 = call i32 @del_timer(i32* %200)
  %202 = load i32, i32* %11, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %190, %183, %56, %43, %24
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.igorplugusb* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_control_urb(i32, %struct.usb_device*, i32, i32*, i32, i32, i32, %struct.igorplugusb*) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @MS_TO_NS(i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.igorplugusb*) #1

declare dso_local i32 @igorplugusb_cmd(%struct.igorplugusb*, i32) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
