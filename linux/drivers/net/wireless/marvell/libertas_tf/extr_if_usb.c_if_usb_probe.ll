; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.lbtf_private = type { i32 }
%struct.if_usb_card = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.usb_device*, i32, i32 }

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@if_usb_fw_timeo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"bcdUSB = 0x%X bDeviceClass = 0x%X bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"in_endpoint = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Bulk in size is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"out_endpoint = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Bulk out size is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Endpoints not found\0A\00", align 1
@MRVDRV_ETH_TX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Could not allocate buffer\0A\00", align 1
@if_usb_ops = common dso_local global i32 0, align 4
@LBTF_DEB_MAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @if_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.lbtf_private*, align 8
  %10 = alloca %struct.if_usb_card*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load i32, i32* @LBTF_DEB_USB, align 4
  %13 = call i32 @lbtf_deb_enter(i32 %12)
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.if_usb_card* @kzalloc(i32 80, i32 %16)
  store %struct.if_usb_card* %17, %struct.if_usb_card** %10, align 8
  %18 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %19 = icmp ne %struct.if_usb_card* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %209

21:                                               ; preds = %2
  %22 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %23 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %22, i32 0, i32 11
  %24 = load i32, i32* @if_usb_fw_timeo, align 4
  %25 = call i32 @timer_setup(i32* %23, i32 %24, i32 0)
  %26 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %27 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %26, i32 0, i32 10
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %30 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %31 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %30, i32 0, i32 9
  store %struct.usb_device* %29, %struct.usb_device** %31, align 8
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 0
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %33, align 8
  store %struct.usb_host_interface* %34, %struct.usb_host_interface** %7, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le16_to_cpu(i32 %40)
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %36, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %45, i32 %49, i32 %53)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %125, %21
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %58 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %128

62:                                               ; preds = %55
  %63 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %64 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %69, %struct.usb_endpoint_descriptor** %8, align 8
  %70 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %71 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %62
  %74 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %75 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le16_to_cpu(i32 %76)
  %78 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %79 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %81 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %80)
  %82 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %83 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  %84 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 0
  %86 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %87 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %86, i32 0, i32 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %93 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %124

96:                                               ; preds = %62
  %97 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %98 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %102 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @le16_to_cpu(i32 %103)
  %105 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %106 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %105, i32 0, i32 6
  store i8* %104, i8** %106, align 8
  %107 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %108 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %107)
  %109 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %110 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %109, i32 0, i32 7
  store i8* %108, i8** %110, align 8
  %111 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %112 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %111, i32 0, i32 0
  %113 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %114 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %113, i32 0, i32 7
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %118 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %117, i32 0, i32 0
  %119 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %120 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %119, i32 0, i32 6
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %100, %96
  br label %124

124:                                              ; preds = %123, %73
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %55

128:                                              ; preds = %55
  %129 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %130 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %129, i32 0, i32 6
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %135 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %133, %128
  %139 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %140 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %139, i32 0, i32 0
  %141 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %206

142:                                              ; preds = %133
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i8* @usb_alloc_urb(i32 0, i32 %143)
  %145 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %146 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %148 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %142
  br label %206

152:                                              ; preds = %142
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i8* @usb_alloc_urb(i32 0, i32 %153)
  %155 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %156 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %158 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %152
  br label %206

162:                                              ; preds = %152
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call i8* @usb_alloc_urb(i32 0, i32 %163)
  %165 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %166 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  %167 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %168 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %162
  br label %206

172:                                              ; preds = %162
  %173 = load i32, i32* @MRVDRV_ETH_TX_PACKET_BUFFER_SIZE, align 4
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call i32 @kmalloc(i32 %173, i32 %174)
  %176 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %177 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %179 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %172
  %183 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %184 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %183, i32 0, i32 0
  %185 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %206

186:                                              ; preds = %172
  %187 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %188 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %192 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %194 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %195 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %194, i32 0, i32 0
  %196 = call %struct.lbtf_private* @lbtf_add_card(%struct.if_usb_card* %193, i32* %195, i32* @if_usb_ops)
  store %struct.lbtf_private* %196, %struct.lbtf_private** %9, align 8
  %197 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %198 = icmp ne %struct.lbtf_private* %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %186
  br label %206

200:                                              ; preds = %186
  %201 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %202 = call i32 @usb_get_dev(%struct.usb_device* %201)
  %203 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %204 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %205 = call i32 @usb_set_intfdata(%struct.usb_interface* %203, %struct.if_usb_card* %204)
  store i32 0, i32* %3, align 4
  br label %214

206:                                              ; preds = %199, %182, %171, %161, %151, %138
  %207 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %208 = call i32 @if_usb_free(%struct.if_usb_card* %207)
  br label %209

209:                                              ; preds = %206, %20
  %210 = load i32, i32* @LBTF_DEB_MAIN, align 4
  %211 = call i32 @lbtf_deb_leave(i32 %210)
  %212 = load i32, i32* @ENOMEM, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %209, %200
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.if_usb_card* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*, ...) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local %struct.lbtf_private* @lbtf_add_card(%struct.if_usb_card*, i32*, i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.if_usb_card*) #1

declare dso_local i32 @if_usb_free(%struct.if_usb_card*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
