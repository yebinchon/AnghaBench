; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.usb_interface_descriptor }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_interface_descriptor = type { i64, i32, i32, i64, i32 }
%struct.usb_device_id = type { i32, i32 }
%struct.usb_device = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.brcmf_usbdev_info = type { i64, i64, i32, i32, i32*, %struct.usb_device* }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enter 0x%04x:0x%04x\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Number of configurations: %d not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@USB_CLASS_MISC = common dso_local global i64 0, align 8
@USB_CLASS_WIRELESS_CONTROLLER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Device class: 0x%x not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"non WLAN interface %d: 0x%x:0x%x:0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"No RX (in) Bulk EP found\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"No TX (out) Bulk EP found\0A\00", align 1
@USB_SPEED_SUPER_PLUS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"Broadcom super speed plus USB WLAN interface detected\0A\00", align 1
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"Broadcom super speed USB WLAN interface detected\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [49 x i8] c"Broadcom high speed USB WLAN interface detected\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Broadcom full speed USB WLAN interface detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @brcmf_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.brcmf_usbdev_info*, align 8
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @USB, align 4
  %17 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.brcmf_usbdev_info* @kzalloc(i32 40, i32 %24)
  store %struct.brcmf_usbdev_info* %25, %struct.brcmf_usbdev_info** %7, align 8
  %26 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %27 = icmp eq %struct.brcmf_usbdev_info* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %251

31:                                               ; preds = %2
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %34 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %33, i32 0, i32 5
  store %struct.usb_device* %32, %struct.usb_device** %34, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 2
  %37 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %38 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %37, i32 0, i32 4
  store i32* %36, i32** %38, align 8
  %39 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %40 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %39, i32 0, i32 2
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %44 = call i32 @usb_set_intfdata(%struct.usb_interface* %42, %struct.brcmf_usbdev_info* %43)
  %45 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %58

50:                                               ; preds = %31
  %51 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %242

58:                                               ; preds = %31
  %59 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %58
  %66 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %67 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @USB_CLASS_MISC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %74 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @USB_CLASS_WIRELESS_CONTROLLER, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %81 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %10, align 4
  br label %242

87:                                               ; preds = %72, %65, %58
  %88 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %89 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store %struct.usb_interface_descriptor* %92, %struct.usb_interface_descriptor** %8, align 8
  %93 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %94 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %87
  %99 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %100 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 2
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %105 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 255
  br i1 %107, label %108, label %124

108:                                              ; preds = %103, %98, %87
  %109 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %110 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %113 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %116 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %119 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %111, i64 %114, i32 %117, i32 %120)
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %10, align 4
  br label %242

124:                                              ; preds = %103
  %125 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %126 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %128

128:                                              ; preds = %177, %124
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %11, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %180

132:                                              ; preds = %128
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %141, %struct.usb_endpoint_descriptor** %9, align 8
  %142 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %143 = call i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %142)
  store i64 %143, i64* %12, align 8
  %144 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %145 = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %132
  br label %177

148:                                              ; preds = %132
  %149 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %150 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %154 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %152
  %158 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %159 = load i64, i64* %12, align 8
  %160 = call i64 @usb_rcvbulkpipe(%struct.usb_device* %158, i64 %159)
  %161 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %162 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %157, %152
  br label %176

164:                                              ; preds = %148
  %165 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %166 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %164
  %170 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %171 = load i64, i64* %12, align 8
  %172 = call i64 @usb_sndbulkpipe(%struct.usb_device* %170, i64 %171)
  %173 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %174 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %169, %164
  br label %176

176:                                              ; preds = %175, %163
  br label %177

177:                                              ; preds = %176, %147
  %178 = load i64, i64* %13, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %13, align 8
  br label %128

180:                                              ; preds = %128
  %181 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %182 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %187 = load i32, i32* @ENODEV, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %10, align 4
  br label %242

189:                                              ; preds = %180
  %190 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %191 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %196 = load i32, i32* @ENODEV, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %10, align 4
  br label %242

198:                                              ; preds = %189
  %199 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %200 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %203 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 4
  %204 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %205 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @USB_SPEED_SUPER_PLUS, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %198
  %210 = load i32, i32* @USB, align 4
  %211 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %210, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  br label %235

212:                                              ; preds = %198
  %213 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %214 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @USB_SPEED_SUPER, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load i32, i32* @USB, align 4
  %220 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %219, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  br label %234

221:                                              ; preds = %212
  %222 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %223 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @USB_SPEED_HIGH, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load i32, i32* @USB, align 4
  %229 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %228, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  br label %233

230:                                              ; preds = %221
  %231 = load i32, i32* @USB, align 4
  %232 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %231, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %227
  br label %234

234:                                              ; preds = %233, %218
  br label %235

235:                                              ; preds = %234, %209
  %236 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %237 = call i32 @brcmf_usb_probe_cb(%struct.brcmf_usbdev_info* %236)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %242

241:                                              ; preds = %235
  store i32 0, i32* %3, align 4
  br label %251

242:                                              ; preds = %240, %194, %185, %108, %79, %50
  %243 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %244 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %243, i32 0, i32 2
  %245 = call i32 @complete(i32* %244)
  %246 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %7, align 8
  %247 = call i32 @kfree(%struct.brcmf_usbdev_info* %246)
  %248 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %249 = call i32 @usb_set_intfdata(%struct.usb_interface* %248, %struct.brcmf_usbdev_info* null)
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %242, %241, %28
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local %struct.brcmf_usbdev_info* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.brcmf_usbdev_info*) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_rcvbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i64 @usb_sndbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @brcmf_usb_probe_cb(%struct.brcmf_usbdev_info*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfree(%struct.brcmf_usbdev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
