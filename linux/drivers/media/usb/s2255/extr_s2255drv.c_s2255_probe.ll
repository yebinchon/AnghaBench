; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.s2255_dev = type { i32, i32, %struct.s2255_dev*, i32, %struct.s2255_dev*, %struct.TYPE_10__*, i32, i32, %struct.s2255_dev*, %struct.TYPE_11__*, %struct.s2255_vc*, i32, i64, %struct.usb_interface*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.s2255_vc = type { i32, i32, i32, i32, i32, %struct.s2255_dev* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@S2255_CMDBUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"null usb device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"dev: %p, udev %p interface %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"num EP: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not find bulk-in endpoint\0A\00", align 1
@s2255_timer = common dso_local global i32 0, align 4
@MAX_CHANNELS = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"out of memory!\0A\00", align 1
@FIRMWARE_FILE_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"sensoray 2255 failed to get firmware\0A\00", align 1
@S2255_FW_MARKER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"Firmware invalid.\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"s2255 dsp fw version %x\0A\00", align 1
@S2255_CUR_DSP_FWVER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"s2255: f2255usb.bin out of date.\0A\00", align 1
@S2255_MIN_DSP_COLORFILTER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"2257 needs firmware %d or above.\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Sensoray 2255 detected\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Sensoray 2255 driver load failed: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @s2255_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2255_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.s2255_dev*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.s2255_vc*, align 8
  %14 = alloca i64*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.s2255_dev* null, %struct.s2255_dev** %6, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 104, i32 %17)
  %19 = bitcast i8* %18 to %struct.s2255_dev*
  store %struct.s2255_dev* %19, %struct.s2255_dev** %6, align 8
  %20 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %21 = icmp eq %struct.s2255_dev* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = call i32 @s2255_dev_err(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %386

28:                                               ; preds = %2
  %29 = load i32, i32* @S2255_CMDBUF_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.s2255_dev*
  %33 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %34 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %33, i32 0, i32 2
  store %struct.s2255_dev* %32, %struct.s2255_dev** %34, align 8
  %35 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %36 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %35, i32 0, i32 2
  %37 = load %struct.s2255_dev*, %struct.s2255_dev** %36, align 8
  %38 = icmp eq %struct.s2255_dev* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 0
  %42 = call i32 @s2255_dev_err(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %376

43:                                               ; preds = %28
  %44 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %45 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %44, i32 0, i32 15
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %48 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %51 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 4, i32 %52)
  %54 = bitcast i8* %53 to %struct.s2255_dev*
  %55 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %56 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %55, i32 0, i32 4
  store %struct.s2255_dev* %54, %struct.s2255_dev** %56, align 8
  %57 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %58 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %57, i32 0, i32 4
  %59 = load %struct.s2255_dev*, %struct.s2255_dev** %58, align 8
  %60 = icmp ne %struct.s2255_dev* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %43
  br label %376

62:                                               ; preds = %43
  %63 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %64 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %63, i32 0, i32 3
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %67 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %66, i32 0, i32 14
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %70 = call i32 @interface_to_usbdev(%struct.usb_interface* %69)
  %71 = call %struct.TYPE_10__* @usb_get_dev(i32 %70)
  %72 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %73 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %72, i32 0, i32 5
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %73, align 8
  %74 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %75 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %74, i32 0, i32 5
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = icmp eq %struct.TYPE_10__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %80 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %368

84:                                               ; preds = %62
  %85 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %86 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %85, i32 0, i32 0
  %87 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %88 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %89 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %88, i32 0, i32 5
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %92 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.s2255_dev* %87, %struct.TYPE_10__* %90, %struct.usb_interface* %91)
  %93 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %94 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %95 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %94, i32 0, i32 13
  store %struct.usb_interface* %93, %struct.usb_interface** %95, align 8
  %96 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %96, i32 0, i32 1
  %98 = load %struct.usb_host_interface*, %struct.usb_host_interface** %97, align 8
  store %struct.usb_host_interface* %98, %struct.usb_host_interface** %7, align 8
  %99 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %100 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %99, i32 0, i32 0
  %101 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %102 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %136, %84
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %109 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %106
  %114 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %115 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %120, %struct.usb_endpoint_descriptor** %8, align 8
  %121 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %122 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %121, i32 0, i32 12
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %113
  %126 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %127 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %131 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %134 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %133, i32 0, i32 12
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %125, %113
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %106

139:                                              ; preds = %106
  %140 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %141 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %140, i32 0, i32 12
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %146 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %145, i32 0, i32 0
  %147 = call i32 @dev_err(i32* %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %363

148:                                              ; preds = %139
  %149 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %150 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %149, i32 0, i32 6
  %151 = load i32, i32* @s2255_timer, align 4
  %152 = call i32 @timer_setup(i32* %150, i32 %151, i32 0)
  %153 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %154 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %153, i32 0, i32 4
  %155 = load %struct.s2255_dev*, %struct.s2255_dev** %154, align 8
  %156 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %155, i32 0, i32 11
  %157 = call i32 @init_waitqueue_head(i32* %156)
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %187, %148
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @MAX_CHANNELS, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %190

162:                                              ; preds = %158
  %163 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %164 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %163, i32 0, i32 10
  %165 = load %struct.s2255_vc*, %struct.s2255_vc** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %165, i64 %167
  store %struct.s2255_vc* %168, %struct.s2255_vc** %13, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.s2255_vc*, %struct.s2255_vc** %13, align 8
  %171 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %173 = load %struct.s2255_vc*, %struct.s2255_vc** %13, align 8
  %174 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %173, i32 0, i32 5
  store %struct.s2255_dev* %172, %struct.s2255_dev** %174, align 8
  %175 = load %struct.s2255_vc*, %struct.s2255_vc** %13, align 8
  %176 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %175, i32 0, i32 4
  %177 = call i32 @init_waitqueue_head(i32* %176)
  %178 = load %struct.s2255_vc*, %struct.s2255_vc** %13, align 8
  %179 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %178, i32 0, i32 3
  %180 = call i32 @init_waitqueue_head(i32* %179)
  %181 = load %struct.s2255_vc*, %struct.s2255_vc** %13, align 8
  %182 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %181, i32 0, i32 2
  %183 = call i32 @spin_lock_init(i32* %182)
  %184 = load %struct.s2255_vc*, %struct.s2255_vc** %13, align 8
  %185 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %184, i32 0, i32 1
  %186 = call i32 @mutex_init(i32* %185)
  br label %187

187:                                              ; preds = %162
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %158

190:                                              ; preds = %158
  %191 = load i32, i32* @GFP_KERNEL, align 4
  %192 = call i32 @usb_alloc_urb(i32 0, i32 %191)
  %193 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %194 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %193, i32 0, i32 4
  %195 = load %struct.s2255_dev*, %struct.s2255_dev** %194, align 8
  %196 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %195, i32 0, i32 7
  store i32 %192, i32* %196, align 4
  %197 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %198 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %197, i32 0, i32 4
  %199 = load %struct.s2255_dev*, %struct.s2255_dev** %198, align 8
  %200 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %190
  br label %359

204:                                              ; preds = %190
  %205 = load i32, i32* @CHUNK_SIZE, align 4
  %206 = load i32, i32* @GFP_KERNEL, align 4
  %207 = call i8* @kzalloc(i32 %205, i32 %206)
  %208 = bitcast i8* %207 to %struct.s2255_dev*
  %209 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %210 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %209, i32 0, i32 4
  %211 = load %struct.s2255_dev*, %struct.s2255_dev** %210, align 8
  %212 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %211, i32 0, i32 8
  store %struct.s2255_dev* %208, %struct.s2255_dev** %212, align 8
  %213 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %214 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %213, i32 0, i32 4
  %215 = load %struct.s2255_dev*, %struct.s2255_dev** %214, align 8
  %216 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %215, i32 0, i32 8
  %217 = load %struct.s2255_dev*, %struct.s2255_dev** %216, align 8
  %218 = icmp ne %struct.s2255_dev* %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %204
  %220 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %221 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %220, i32 0, i32 0
  %222 = call i32 @dev_err(i32* %221, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %352

223:                                              ; preds = %204
  %224 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %225 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %224, i32 0, i32 4
  %226 = load %struct.s2255_dev*, %struct.s2255_dev** %225, align 8
  %227 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %226, i32 0, i32 9
  %228 = load i32, i32* @FIRMWARE_FILE_NAME, align 4
  %229 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %230 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %229, i32 0, i32 5
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = call i64 @request_firmware(%struct.TYPE_11__** %227, i32 %228, i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %223
  %236 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %237 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %236, i32 0, i32 0
  %238 = call i32 @dev_err(i32* %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %345

239:                                              ; preds = %223
  %240 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %241 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %240, i32 0, i32 4
  %242 = load %struct.s2255_dev*, %struct.s2255_dev** %241, align 8
  %243 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %242, i32 0, i32 9
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  store i32 %246, i32* %12, align 4
  %247 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %248 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %247, i32 0, i32 4
  %249 = load %struct.s2255_dev*, %struct.s2255_dev** %248, align 8
  %250 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %249, i32 0, i32 9
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sub nsw i32 %254, 8
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = bitcast i32* %257 to i64*
  store i64* %258, i64** %11, align 8
  %259 = load i64*, i64** %11, align 8
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @S2255_FW_MARKER, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %239
  %264 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %265 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %264, i32 0, i32 0
  %266 = call i32 @dev_err(i32* %265, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %267 = load i32, i32* @ENODEV, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %10, align 4
  br label %338

269:                                              ; preds = %239
  %270 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %271 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %270, i32 0, i32 4
  %272 = load %struct.s2255_dev*, %struct.s2255_dev** %271, align 8
  %273 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %272, i32 0, i32 9
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %12, align 4
  %278 = sub nsw i32 %277, 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  %281 = bitcast i32* %280 to i64*
  store i64* %281, i64** %14, align 8
  %282 = load i64*, i64** %14, align 8
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @le32_to_cpu(i64 %283)
  %285 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %284)
  %286 = load i64*, i64** %14, align 8
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @le32_to_cpu(i64 %287)
  %289 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %290 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %292 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @S2255_CUR_DSP_FWVER, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %269
  %297 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %298

298:                                              ; preds = %296, %269
  %299 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %300 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp eq i32 %301, 8791
  br i1 %302, label %303, label %312

303:                                              ; preds = %298
  %304 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %305 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @S2255_MIN_DSP_COLORFILTER, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %312

309:                                              ; preds = %303
  %310 = load i32, i32* @S2255_MIN_DSP_COLORFILTER, align 4
  %311 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %310)
  br label %312

312:                                              ; preds = %309, %303, %298
  br label %313

313:                                              ; preds = %312
  %314 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %315 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %314, i32 0, i32 5
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %315, align 8
  %317 = call i32 @usb_reset_device(%struct.TYPE_10__* %316)
  %318 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %319 = call i32 @s2255_board_init(%struct.s2255_dev* %318)
  store i32 %319, i32* %10, align 4
  %320 = load i32, i32* %10, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %313
  br label %335

323:                                              ; preds = %313
  %324 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %325 = call i32 @s2255_fwload_start(%struct.s2255_dev* %324)
  %326 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %327 = call i32 @s2255_probe_v4l(%struct.s2255_dev* %326)
  store i32 %327, i32* %10, align 4
  %328 = load i32, i32* %10, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %323
  br label %335

331:                                              ; preds = %323
  %332 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %333 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %332, i32 0, i32 0
  %334 = call i32 @dev_info(i32* %333, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %386

335:                                              ; preds = %330, %322
  %336 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %337 = call i32 @s2255_board_shutdown(%struct.s2255_dev* %336)
  br label %338

338:                                              ; preds = %335, %263
  %339 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %340 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %339, i32 0, i32 4
  %341 = load %struct.s2255_dev*, %struct.s2255_dev** %340, align 8
  %342 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %341, i32 0, i32 9
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %342, align 8
  %344 = call i32 @release_firmware(%struct.TYPE_11__* %343)
  br label %345

345:                                              ; preds = %338, %235
  %346 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %347 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %346, i32 0, i32 4
  %348 = load %struct.s2255_dev*, %struct.s2255_dev** %347, align 8
  %349 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %348, i32 0, i32 8
  %350 = load %struct.s2255_dev*, %struct.s2255_dev** %349, align 8
  %351 = call i32 @kfree(%struct.s2255_dev* %350)
  br label %352

352:                                              ; preds = %345, %219
  %353 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %354 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %353, i32 0, i32 4
  %355 = load %struct.s2255_dev*, %struct.s2255_dev** %354, align 8
  %356 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %355, i32 0, i32 7
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @usb_free_urb(i32 %357)
  br label %359

359:                                              ; preds = %352, %203
  %360 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %361 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %360, i32 0, i32 6
  %362 = call i32 @del_timer_sync(i32* %361)
  br label %363

363:                                              ; preds = %359, %144
  %364 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %365 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %364, i32 0, i32 5
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %365, align 8
  %367 = call i32 @usb_put_dev(%struct.TYPE_10__* %366)
  br label %368

368:                                              ; preds = %363, %78
  %369 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %370 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %369, i32 0, i32 4
  %371 = load %struct.s2255_dev*, %struct.s2255_dev** %370, align 8
  %372 = call i32 @kfree(%struct.s2255_dev* %371)
  %373 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %374 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %373, i32 0, i32 3
  %375 = call i32 @mutex_destroy(i32* %374)
  br label %376

376:                                              ; preds = %368, %61, %39
  %377 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %378 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %377, i32 0, i32 2
  %379 = load %struct.s2255_dev*, %struct.s2255_dev** %378, align 8
  %380 = call i32 @kfree(%struct.s2255_dev* %379)
  %381 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %382 = call i32 @kfree(%struct.s2255_dev* %381)
  %383 = load i32, i32* %10, align 4
  %384 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %383)
  %385 = load i32, i32* %10, align 4
  store i32 %385, i32* %3, align 4
  br label %386

386:                                              ; preds = %376, %331, %22
  %387 = load i32, i32* %3, align 4
  ret i32 %387
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @s2255_dev_err(i32*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_10__* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i64 @request_firmware(%struct.TYPE_11__**, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @usb_reset_device(%struct.TYPE_10__*) #1

declare dso_local i32 @s2255_board_init(%struct.s2255_dev*) #1

declare dso_local i32 @s2255_fwload_start(%struct.s2255_dev*) #1

declare dso_local i32 @s2255_probe_v4l(%struct.s2255_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @s2255_board_shutdown(%struct.s2255_dev*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.s2255_dev*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
