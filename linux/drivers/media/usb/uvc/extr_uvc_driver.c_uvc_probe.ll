; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device_info = type { i32 }
%struct.usb_interface = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_device_id = type { i32, i32, i64 }
%struct.usb_device = type { i8*, i8*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.uvc_device = type { i32, i8*, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.uvc_device_info*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i32, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@UVC_TRACE_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Probing known UVC device %s (%04x:%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Probing generic UVC device %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uvc_quirk_none = common dso_local global %struct.uvc_device_info zeroinitializer, align 4
@uvc_quirks_param = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"UVC Camera (%04x:%04x)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to parse UVC descriptors.\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Found UVC %u.%02x device %s (%04x:%04x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<unnamed>\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Forcing device quirks to 0x%x by module parameter for testing purpose.\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"Please report required quirks to the linux-uvc-devel mailing list.\0A\00", align 1
@.str.9 = private unnamed_addr constant [88 x i8] c"Unable to initialize the status endpoint (%d), status interrupt will not be supported.\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"UVC device initialized.\0A\00", align 1
@uvc_delete = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @uvc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.uvc_device*, align 8
  %8 = alloca %struct.uvc_device_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.uvc_device_info*
  store %struct.uvc_device_info* %17, %struct.uvc_device_info** %8, align 8
  %18 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %29 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @uvc_trace(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37)
  br label %45

39:                                               ; preds = %22, %2
  %40 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %41 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @uvc_trace(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %27
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.uvc_device* @kzalloc(i32 104, i32 %46)
  store %struct.uvc_device* %47, %struct.uvc_device** %7, align 8
  %48 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %49 = icmp eq %struct.uvc_device* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %291

53:                                               ; preds = %45
  %54 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %55 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %54, i32 0, i32 14
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %58 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %57, i32 0, i32 13
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %61 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %60, i32 0, i32 12
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %64 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %63, i32 0, i32 3
  %65 = call i32 @kref_init(i32* %64)
  %66 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %67 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %66, i32 0, i32 11
  %68 = call i32 @atomic_set(i32* %67, i32 0)
  %69 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %70 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %69, i32 0, i32 10
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %73 = call i32 @usb_get_dev(%struct.usb_device* %72)
  %74 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %75 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 8
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = call i32 @usb_get_intf(%struct.usb_interface* %76)
  %78 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %79 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  %80 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %81 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %87 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load %struct.uvc_device_info*, %struct.uvc_device_info** %8, align 8
  %89 = icmp ne %struct.uvc_device_info* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %53
  %91 = load %struct.uvc_device_info*, %struct.uvc_device_info** %8, align 8
  br label %93

92:                                               ; preds = %53
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi %struct.uvc_device_info* [ %91, %90 ], [ @uvc_quirk_none, %92 ]
  %95 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %96 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %95, i32 0, i32 6
  store %struct.uvc_device_info* %94, %struct.uvc_device_info** %96, align 8
  %97 = load i32, i32* @uvc_quirks_param, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %101 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %100, i32 0, i32 6
  %102 = load %struct.uvc_device_info*, %struct.uvc_device_info** %101, align 8
  %103 = getelementptr inbounds %struct.uvc_device_info, %struct.uvc_device_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %107

105:                                              ; preds = %93
  %106 = load i32, i32* @uvc_quirks_param, align 4
  br label %107

107:                                              ; preds = %105, %99
  %108 = phi i32 [ %104, %99 ], [ %106, %105 ]
  %109 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %110 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %112 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %117 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %120 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strscpy(i8* %118, i8* %121, i32 8)
  br label %138

123:                                              ; preds = %107
  %124 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %125 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %128 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @le16_to_cpu(i32 %130)
  %132 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %133 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = call i32 @snprintf(i8* %126, i32 8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %136)
  br label %138

138:                                              ; preds = %123, %115
  %139 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %140 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %139, i32 0, i32 2
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = icmp ne %struct.TYPE_8__* %141, null
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %145 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %151, i32 0, i32 2
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %9, align 4
  br label %163

156:                                              ; preds = %143, %138
  %157 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %158 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %157, i32 0, i32 1
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %156, %150
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %168 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @strlcat(i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %171 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %172 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @strlen(i8* %173)
  store i64 %174, i64* %11, align 8
  %175 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %178 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = load i64, i64* %11, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  %182 = ptrtoint i8* %181 to i32
  %183 = load i64, i64* %11, align 8
  %184 = sub i64 8, %183
  %185 = trunc i64 %184 to i32
  %186 = call i32 @usb_string(%struct.usb_device* %175, i32 %176, i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %166, %163
  %188 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %189 = call i64 @uvc_parse_control(%struct.uvc_device* %188)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %193 = call i32 (i32, i8*, ...) @uvc_trace(i32 %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %282

194:                                              ; preds = %187
  %195 = load i32, i32* @KERN_INFO, align 4
  %196 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %197 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = ashr i32 %198, 8
  %200 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %201 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, 255
  %204 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %205 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %194
  %209 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %210 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  br label %213

212:                                              ; preds = %194
  br label %213

213:                                              ; preds = %212, %208
  %214 = phi i8* [ %211, %208 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %212 ]
  %215 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %216 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @le16_to_cpu(i32 %218)
  %220 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %221 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @le16_to_cpu(i32 %223)
  %225 = call i32 (i32, i8*, ...) @uvc_printk(i32 %195, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %199, i32 %203, i8* %214, i32 %219, i32 %224)
  %226 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %227 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %230 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %229, i32 0, i32 6
  %231 = load %struct.uvc_device_info*, %struct.uvc_device_info** %230, align 8
  %232 = getelementptr inbounds %struct.uvc_device_info, %struct.uvc_device_info* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %228, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %213
  %236 = load i32, i32* @KERN_INFO, align 4
  %237 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %238 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (i32, i8*, ...) @uvc_printk(i32 %236, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* @KERN_INFO, align 4
  %242 = call i32 (i32, i8*, ...) @uvc_printk(i32 %241, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0))
  br label %243

243:                                              ; preds = %235, %213
  %244 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %245 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %244, i32 0, i32 0
  %246 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %247 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %246, i32 0, i32 5
  %248 = call i64 @v4l2_device_register(i32* %245, %struct.TYPE_12__* %247)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %282

251:                                              ; preds = %243
  %252 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %253 = call i64 @uvc_ctrl_init_device(%struct.uvc_device* %252)
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  br label %282

256:                                              ; preds = %251
  %257 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %258 = call i64 @uvc_scan_device(%struct.uvc_device* %257)
  %259 = icmp slt i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  br label %282

261:                                              ; preds = %256
  %262 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %263 = call i64 @uvc_register_chains(%struct.uvc_device* %262)
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %282

266:                                              ; preds = %261
  %267 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %268 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %269 = call i32 @usb_set_intfdata(%struct.usb_interface* %267, %struct.uvc_device* %268)
  %270 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %271 = call i32 @uvc_status_init(%struct.uvc_device* %270)
  store i32 %271, i32* %10, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = load i32, i32* @KERN_INFO, align 4
  %275 = load i32, i32* %10, align 4
  %276 = call i32 (i32, i8*, ...) @uvc_printk(i32 %274, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.9, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %273, %266
  %278 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %279 = call i32 (i32, i8*, ...) @uvc_trace(i32 %278, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %280 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %281 = call i32 @usb_enable_autosuspend(%struct.usb_device* %280)
  store i32 0, i32* %3, align 4
  br label %291

282:                                              ; preds = %265, %260, %255, %250, %191
  %283 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %284 = call i32 @uvc_unregister_video(%struct.uvc_device* %283)
  %285 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %286 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %285, i32 0, i32 3
  %287 = load i32, i32* @uvc_delete, align 4
  %288 = call i32 @kref_put(i32* %286, i32 %287)
  %289 = load i32, i32* @ENODEV, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %282, %277, %50
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @uvc_trace(i32, i8*, ...) #1

declare dso_local %struct.uvc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @strscpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i64 @uvc_parse_control(%struct.uvc_device*) #1

declare dso_local i32 @uvc_printk(i32, i8*, ...) #1

declare dso_local i64 @v4l2_device_register(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @uvc_ctrl_init_device(%struct.uvc_device*) #1

declare dso_local i64 @uvc_scan_device(%struct.uvc_device*) #1

declare dso_local i64 @uvc_register_chains(%struct.uvc_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.uvc_device*) #1

declare dso_local i32 @uvc_status_init(%struct.uvc_device*) #1

declare dso_local i32 @usb_enable_autosuspend(%struct.usb_device*) #1

declare dso_local i32 @uvc_unregister_video(%struct.uvc_device*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
