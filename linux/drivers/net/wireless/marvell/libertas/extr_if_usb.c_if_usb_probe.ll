; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.lbs_private = type { i32, i32, i32*, i32*, i32*, i32 }
%struct.if_usb_card = type { i64, i32, %struct.lbs_private*, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.usb_device*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@if_usb_fw_timeo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"bcdUSB = 0x%X bDeviceClass = 0x%X bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"in_endpoint = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Bulk in size is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"out_endpoint = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Bulk out size is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Endpoints not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Rx URB allocation failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Tx URB allocation failed\0A\00", align 1
@MRVDRV_ETH_TX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Could not allocate buffer\0A\00", align 1
@if_usb_host_to_card = common dso_local global i32 0, align 4
@fw_table = common dso_local global i32 0, align 4
@if_usb_prog_firmware = common dso_local global i32 0, align 4
@if_usb_reset_olpc_card = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @if_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  %10 = alloca %struct.if_usb_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.if_usb_card* @kzalloc(i32 96, i32 %17)
  store %struct.if_usb_card* %18, %struct.if_usb_card** %10, align 8
  %19 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %20 = icmp ne %struct.if_usb_card* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %241

22:                                               ; preds = %2
  %23 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %24 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %23, i32 0, i32 12
  %25 = load i32, i32* @if_usb_fw_timeo, align 4
  %26 = call i32 @timer_setup(i32* %24, i32 %25, i32 0)
  %27 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %28 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %27, i32 0, i32 11
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %31 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %32 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %31, i32 0, i32 10
  store %struct.usb_device* %30, %struct.usb_device** %32, align 8
  %33 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %37 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 1
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %39, align 8
  store %struct.usb_host_interface* %40, %struct.usb_host_interface** %7, align 8
  %41 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 0
  %43 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le16_to_cpu(i32 %46)
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %57 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %42, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %51, i32 %55, i32 %59)
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %131, %22
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %64 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %134

68:                                               ; preds = %61
  %69 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %70 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %75, %struct.usb_endpoint_descriptor** %8, align 8
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %77 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %68
  %80 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %81 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le16_to_cpu(i32 %82)
  %84 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %85 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %87 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %86)
  %88 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %89 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %88, i32 0, i32 9
  store i8* %87, i8** %89, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %93 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %92, i32 0, i32 9
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  %96 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %97 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %96, i32 0, i32 0
  %98 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %99 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %98, i32 0, i32 6
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  br label %130

102:                                              ; preds = %68
  %103 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %104 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %102
  %107 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %108 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @le16_to_cpu(i32 %109)
  %111 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %112 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  %113 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %114 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %113)
  %115 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %116 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %115, i32 0, i32 8
  store i8* %114, i8** %116, align 8
  %117 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %118 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %117, i32 0, i32 0
  %119 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %120 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %119, i32 0, i32 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %121)
  %123 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %124 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %123, i32 0, i32 0
  %125 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %126 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %125, i32 0, i32 7
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %106, %102
  br label %130

130:                                              ; preds = %129, %79
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %61

134:                                              ; preds = %61
  %135 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %136 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %135, i32 0, i32 7
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %141 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %140, i32 0, i32 6
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %139, %134
  %145 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %146 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %145, i32 0, i32 0
  %147 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %238

148:                                              ; preds = %139
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call i8* @usb_alloc_urb(i32 0, i32 %149)
  %151 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %152 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %151, i32 0, i32 5
  store i8* %150, i8** %152, align 8
  %153 = icmp ne i8* %150, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %148
  %155 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %156 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %155, i32 0, i32 0
  %157 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %238

158:                                              ; preds = %148
  %159 = load i32, i32* @GFP_KERNEL, align 4
  %160 = call i8* @usb_alloc_urb(i32 0, i32 %159)
  %161 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %162 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = icmp ne i8* %160, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %166 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %165, i32 0, i32 0
  %167 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %166, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %238

168:                                              ; preds = %158
  %169 = load i32, i32* @MRVDRV_ETH_TX_PACKET_BUFFER_SIZE, align 4
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i32 @kmalloc(i32 %169, i32 %170)
  %172 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %173 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  %174 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %175 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %168
  %179 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %180 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %179, i32 0, i32 0
  %181 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %238

182:                                              ; preds = %168
  %183 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %184 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %185 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %184, i32 0, i32 0
  %186 = call %struct.lbs_private* @lbs_add_card(%struct.if_usb_card* %183, i32* %185)
  store %struct.lbs_private* %186, %struct.lbs_private** %9, align 8
  %187 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %188 = call i64 @IS_ERR(%struct.lbs_private* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %192 = call i32 @PTR_ERR(%struct.lbs_private* %191)
  store i32 %192, i32* %11, align 4
  br label %235

193:                                              ; preds = %182
  %194 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %195 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %196 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %195, i32 0, i32 2
  store %struct.lbs_private* %194, %struct.lbs_private** %196, align 8
  %197 = load i32, i32* @if_usb_host_to_card, align 4
  %198 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %199 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 8
  %200 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %201 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %200, i32 0, i32 4
  store i32* null, i32** %201, align 8
  %202 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %203 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %202, i32 0, i32 3
  store i32* null, i32** %203, align 8
  %204 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %205 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %204, i32 0, i32 2
  store i32* null, i32** %205, align 8
  %206 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %207 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %206, i32 0, i32 0
  store i32 0, i32* %207, align 8
  %208 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %209 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %213 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  %214 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %215 = call i32 @usb_get_dev(%struct.usb_device* %214)
  %216 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %217 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %218 = call i32 @usb_set_intfdata(%struct.usb_interface* %216, %struct.if_usb_card* %217)
  %219 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %220 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %221 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %220, i32 0, i32 0
  %222 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %223 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* @fw_table, align 4
  %226 = load i32, i32* @if_usb_prog_firmware, align 4
  %227 = call i32 @lbs_get_firmware_async(%struct.lbs_private* %219, i32* %221, i64 %224, i32 %225, i32 %226)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %193
  br label %232

231:                                              ; preds = %193
  store i32 0, i32* %3, align 4
  br label %243

232:                                              ; preds = %230
  %233 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %234 = call i32 @lbs_remove_card(%struct.lbs_private* %233)
  br label %235

235:                                              ; preds = %232, %190
  %236 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %237 = call i32 @if_usb_reset_device(%struct.if_usb_card* %236)
  br label %238

238:                                              ; preds = %235, %178, %164, %154, %144
  %239 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %240 = call i32 @if_usb_free(%struct.if_usb_card* %239)
  br label %241

241:                                              ; preds = %238, %21
  %242 = load i32, i32* %11, align 4
  store i32 %242, i32* %3, align 4
  br label %243

243:                                              ; preds = %241, %231
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.if_usb_card* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lbs_deb_usbd(i32*, i8*, ...) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local %struct.lbs_private* @lbs_add_card(%struct.if_usb_card*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lbs_private*) #1

declare dso_local i32 @PTR_ERR(%struct.lbs_private*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.if_usb_card*) #1

declare dso_local i32 @lbs_get_firmware_async(%struct.lbs_private*, i32*, i64, i32, i32) #1

declare dso_local i32 @lbs_remove_card(%struct.lbs_private*) #1

declare dso_local i32 @if_usb_reset_device(%struct.if_usb_card*) #1

declare dso_local i32 @if_usb_free(%struct.if_usb_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
