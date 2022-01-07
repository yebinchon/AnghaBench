; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device, %struct.usb_host_interface* }
%struct.device = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.redrat3_dev = type { i32, %struct.usb_device*, %struct.TYPE_13__, i32, i32, %struct.TYPE_11__, i8*, i32, %struct.TYPE_10__, i8*, i32, %struct.TYPE_12__*, i32, i32, %struct.TYPE_12__*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*, %struct.device* }
%struct.TYPE_13__ = type { i8*, i8*, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"found bulk-in endpoint at 0x%02x\0A\00", align 1
@RR3_NARROW_IN_EP_ADDR = common dso_local global i64 0, align 8
@RR3_WIDE_IN_EP_ADDR = common dso_local global i64 0, align 8
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"found bulk-out endpoint at 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't find all endpoints\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@redrat3_handle_async = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@RR3_MODSIG_CAPTURE = common dso_local global i32 0, align 4
@redrat3_learn_complete = common dso_local global i32 0, align 4
@RR3_BLINK_LED = common dso_local global i32 0, align 4
@redrat3_led_complete = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"redrat3:red:feedback\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rc-feedback\00", align 1
@redrat3_brightness_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @redrat3_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redrat3_dev_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.redrat3_dev*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca %struct.usb_endpoint_descriptor*, align 8
  %12 = alloca %struct.usb_endpoint_descriptor*, align 8
  %13 = alloca %struct.usb_endpoint_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %19)
  store %struct.usb_device* %20, %struct.usb_device** %6, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %7, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %11, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %12, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %13, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %18, align 4
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 1
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %26, align 8
  store %struct.usb_host_interface* %27, %struct.usb_host_interface** %8, align 8
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %107, %2
  %29 = load i32, i32* %17, align 4
  %30 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %31 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %110

35:                                               ; preds = %28
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %37 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %42, %struct.usb_endpoint_descriptor** %10, align 8
  %43 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %44 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %47 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @USB_DIR_IN, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %35
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %63 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %67 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @RR3_NARROW_IN_EP_ADDR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  store %struct.usb_endpoint_descriptor* %73, %struct.usb_endpoint_descriptor** %11, align 8
  br label %74

74:                                               ; preds = %72, %60
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %76 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @RR3_WIDE_IN_EP_ADDR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  store %struct.usb_endpoint_descriptor* %82, %struct.usb_endpoint_descriptor** %12, align 8
  br label %83

83:                                               ; preds = %81, %74
  br label %84

84:                                               ; preds = %83, %54, %35
  %85 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %86 = icmp eq %struct.usb_endpoint_descriptor* %85, null
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @USB_DIR_OUT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %102 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_dbg(%struct.device* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  store %struct.usb_endpoint_descriptor* %105, %struct.usb_endpoint_descriptor** %13, align 8
  br label %106

106:                                              ; preds = %99, %93, %87, %84
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %28

110:                                              ; preds = %28
  %111 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %112 = icmp ne %struct.usb_endpoint_descriptor* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %115 = icmp ne %struct.usb_endpoint_descriptor* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %118 = icmp ne %struct.usb_endpoint_descriptor* %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %116, %113, %110
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %18, align 4
  br label %380

124:                                              ; preds = %116
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call %struct.redrat3_dev* @kzalloc(i32 176, i32 %125)
  store %struct.redrat3_dev* %126, %struct.redrat3_dev** %9, align 8
  %127 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %128 = icmp ne %struct.redrat3_dev* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %380

130:                                              ; preds = %124
  %131 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %132 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %131, i32 0, i32 0
  %133 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %134 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %133, i32 0, i32 17
  store %struct.device* %132, %struct.device** %134, align 8
  %135 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %136 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %137 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %136, i32 0, i32 16
  store %struct.usb_endpoint_descriptor* %135, %struct.usb_endpoint_descriptor** %137, align 8
  %138 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %139 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %140 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %139, i32 0, i32 15
  store %struct.usb_endpoint_descriptor* %138, %struct.usb_endpoint_descriptor** %140, align 8
  %141 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %142 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %143 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %142, i32 0, i32 1
  store %struct.usb_device* %141, %struct.usb_device** %143, align 8
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call i8* @usb_alloc_urb(i32 0, i32 %144)
  %146 = bitcast i8* %145 to %struct.TYPE_12__*
  %147 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %148 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %147, i32 0, i32 14
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %148, align 8
  %149 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %150 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %149, i32 0, i32 14
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = icmp ne %struct.TYPE_12__* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %130
  br label %374

154:                                              ; preds = %130
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i8* @usb_alloc_urb(i32 0, i32 %155)
  %157 = bitcast i8* %156 to %struct.TYPE_12__*
  %158 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %159 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %158, i32 0, i32 11
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %159, align 8
  %160 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %161 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %160, i32 0, i32 11
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = icmp ne %struct.TYPE_12__* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %154
  br label %374

165:                                              ; preds = %154
  %166 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %167 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %168 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le16_to_cpu(i32 %169)
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %173 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %172, i32 0, i32 12
  %174 = call i32 @usb_alloc_coherent(%struct.usb_device* %166, i32 %170, i32 %171, i32* %173)
  %175 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %176 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %175, i32 0, i32 13
  store i32 %174, i32* %176, align 4
  %177 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %178 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %177, i32 0, i32 13
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %165
  br label %374

182:                                              ; preds = %165
  %183 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %184 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %185 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %183, i32 %186)
  store i32 %187, i32* %16, align 4
  %188 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %189 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %188, i32 0, i32 14
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %192 = load i32, i32* %16, align 4
  %193 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %194 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %197 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @le16_to_cpu(i32 %198)
  %200 = load i32, i32* @redrat3_handle_async, align 4
  %201 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %202 = call i32 @usb_fill_bulk_urb(%struct.TYPE_12__* %190, %struct.usb_device* %191, i32 %192, i32 %195, i32 %199, i32 %200, %struct.redrat3_dev* %201)
  %203 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %204 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %203, i32 0, i32 12
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %207 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %206, i32 0, i32 14
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  store i32 %205, i32* %209, align 4
  %210 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %211 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %212 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %211, i32 0, i32 14
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %210
  store i32 %216, i32* %214, align 4
  %217 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %218 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %219 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %217, i32 %220)
  store i32 %221, i32* %16, align 4
  %222 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %223 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %222, i32 0, i32 11
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %228 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %227, i32 0, i32 13
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %231 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le16_to_cpu(i32 %232)
  %234 = load i32, i32* @redrat3_handle_async, align 4
  %235 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %236 = call i32 @usb_fill_bulk_urb(%struct.TYPE_12__* %224, %struct.usb_device* %225, i32 %226, i32 %229, i32 %233, i32 %234, %struct.redrat3_dev* %235)
  %237 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %238 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %237, i32 0, i32 12
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %241 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %240, i32 0, i32 11
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  store i32 %239, i32* %243, align 4
  %244 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %245 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %246 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %245, i32 0, i32 11
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %244
  store i32 %250, i32* %248, align 4
  %251 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %252 = call i32 @redrat3_reset(%struct.redrat3_dev* %251)
  %253 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %254 = call i32 @redrat3_get_firmware_rev(%struct.redrat3_dev* %253)
  %255 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %256 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %255, i32 0, i32 0
  store i32 38000, i32* %256, align 8
  %257 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %258 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %257, i32 0, i32 10
  %259 = call i32 @atomic_set(i32* %258, i32 0)
  %260 = load i32, i32* @GFP_KERNEL, align 4
  %261 = call i8* @usb_alloc_urb(i32 0, i32 %260)
  %262 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %263 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %262, i32 0, i32 6
  store i8* %261, i8** %263, align 8
  %264 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %265 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %264, i32 0, i32 6
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %182
  br label %374

269:                                              ; preds = %182
  %270 = load i32, i32* @GFP_KERNEL, align 4
  %271 = call i8* @usb_alloc_urb(i32 0, i32 %270)
  %272 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %273 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %272, i32 0, i32 9
  store i8* %271, i8** %273, align 8
  %274 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %275 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %274, i32 0, i32 9
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %269
  br label %374

279:                                              ; preds = %269
  %280 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %281 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %280, i32 0, i32 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  store i32 192, i32* %282, align 8
  %283 = load i32, i32* @RR3_MODSIG_CAPTURE, align 4
  %284 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %285 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %284, i32 0, i32 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  store i32 %283, i32* %286, align 8
  %287 = call i8* @cpu_to_le16(i32 1)
  %288 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %289 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %288, i32 0, i32 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  store i8* %287, i8** %290, align 8
  %291 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %292 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %291, i32 0, i32 9
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %295 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %296 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %295, i32 0)
  %297 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %298 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %297, i32 0, i32 8
  %299 = bitcast %struct.TYPE_10__* %298 to i8*
  %300 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %301 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %300, i32 0, i32 7
  %302 = load i32, i32* @redrat3_learn_complete, align 4
  %303 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %304 = call i32 @usb_fill_control_urb(i8* %293, %struct.usb_device* %294, i32 %296, i8* %299, i32* %301, i32 4, i32 %302, %struct.redrat3_dev* %303)
  %305 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %306 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  store i32 192, i32* %307, align 8
  %308 = load i32, i32* @RR3_BLINK_LED, align 4
  %309 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %310 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %309, i32 0, i32 5
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 2
  store i32 %308, i32* %311, align 8
  %312 = call i8* @cpu_to_le16(i32 1)
  %313 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %314 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 1
  store i8* %312, i8** %315, align 8
  %316 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %317 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %316, i32 0, i32 6
  %318 = load i8*, i8** %317, align 8
  %319 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %320 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %321 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %320, i32 0)
  %322 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %323 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %322, i32 0, i32 5
  %324 = bitcast %struct.TYPE_11__* %323 to i8*
  %325 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %326 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %325, i32 0, i32 4
  %327 = load i32, i32* @redrat3_led_complete, align 4
  %328 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %329 = call i32 @usb_fill_control_urb(i8* %318, %struct.usb_device* %319, i32 %321, i8* %324, i32* %326, i32 4, i32 %327, %struct.redrat3_dev* %328)
  %330 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %331 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %332, align 8
  %333 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %334 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %335, align 8
  %336 = load i32, i32* @redrat3_brightness_set, align 4
  %337 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %338 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 2
  store i32 %336, i32* %339, align 8
  %340 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %341 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %340, i32 0, i32 0
  %342 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %343 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %342, i32 0, i32 2
  %344 = call i32 @led_classdev_register(%struct.device* %341, %struct.TYPE_13__* %343)
  store i32 %344, i32* %18, align 4
  %345 = load i32, i32* %18, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %279
  br label %374

348:                                              ; preds = %279
  %349 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %350 = call i32 @redrat3_init_rc_dev(%struct.redrat3_dev* %349)
  %351 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %352 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %351, i32 0, i32 3
  store i32 %350, i32* %352, align 8
  %353 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %354 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %348
  %358 = load i32, i32* @ENOMEM, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %18, align 4
  br label %370

360:                                              ; preds = %348
  %361 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %362 = call i32 @redrat3_enable_detector(%struct.redrat3_dev* %361)
  store i32 %362, i32* %18, align 4
  %363 = load i32, i32* %18, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %360
  br label %370

366:                                              ; preds = %360
  %367 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %368 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %369 = call i32 @usb_set_intfdata(%struct.usb_interface* %367, %struct.redrat3_dev* %368)
  store i32 0, i32* %3, align 4
  br label %382

370:                                              ; preds = %365, %357
  %371 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %372 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %371, i32 0, i32 2
  %373 = call i32 @led_classdev_unregister(%struct.TYPE_13__* %372)
  br label %374

374:                                              ; preds = %370, %347, %278, %268, %181, %164, %153
  %375 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %376 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  %377 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %376, i32 0, i32 1
  %378 = load %struct.usb_device*, %struct.usb_device** %377, align 8
  %379 = call i32 @redrat3_delete(%struct.redrat3_dev* %375, %struct.usb_device* %378)
  br label %380

380:                                              ; preds = %374, %129, %119
  %381 = load i32, i32* %18, align 4
  store i32 %381, i32* %3, align 4
  br label %382

382:                                              ; preds = %380, %366
  %383 = load i32, i32* %3, align 4
  ret i32 %383
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.redrat3_dev* @kzalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_12__*, %struct.usb_device*, i32, i32, i32, i32, %struct.redrat3_dev*) #1

declare dso_local i32 @redrat3_reset(%struct.redrat3_dev*) #1

declare dso_local i32 @redrat3_get_firmware_rev(%struct.redrat3_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(i8*, %struct.usb_device*, i32, i8*, i32*, i32, i32, %struct.redrat3_dev*) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_13__*) #1

declare dso_local i32 @redrat3_init_rc_dev(%struct.redrat3_dev*) #1

declare dso_local i32 @redrat3_enable_detector(%struct.redrat3_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.redrat3_dev*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_13__*) #1

declare dso_local i32 @redrat3_delete(%struct.redrat3_dev*, %struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
