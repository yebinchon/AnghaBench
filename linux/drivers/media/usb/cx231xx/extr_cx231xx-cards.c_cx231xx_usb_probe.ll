; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_28__*, %struct.device }
%struct.TYPE_28__ = type { %struct.TYPE_25__*, %struct.TYPE_27__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_device = type { i32, i8*, i8*, i32, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { %struct.usb_interface**, %struct.usb_interface_assoc_descriptor** }
%struct.usb_interface_assoc_descriptor = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.cx231xx = type { i32, i64, i32, i32, i64, %struct.TYPE_20__, i32, %struct.TYPE_26__, %struct.TYPE_23__, i32, i32, i64, i64, i32, i64, i64, i64, %struct.device*, %struct.TYPE_29__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32*, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_29__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@cx231xx_devused = common dso_local global i32 0, align 4
@CX231XX_MAXBOARDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Supports only %i devices.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cx231xx #%d\00", align 1
@transfer_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"480\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"New device %s %s @ %s Mbps (%04x:%04x) with %d interfaces\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Not found matching IAD interface\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"registering interface %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"cx231xx_media_device_init failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"v4l2_device_register failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"TS1 PCB interface #%d doesn't exist\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"TS EndPoint Addr 0x%x, Alternate settings: %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Alternate setting %i, max size= %i\0A\00", align 1
@CX231XX_BOARD_CNXT_VIDEO_GRABBER = common dso_local global i64 0, align 8
@INDEX_VIDEO = common dso_local global i32 0, align 4
@CX231XX_BOARD_CNXT_RDE_253S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @cx231xx_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.usb_interface_assoc_descriptor*, align 8
  %18 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 2
  store %struct.device* %20, %struct.device** %7, align 8
  store %struct.cx231xx* null, %struct.cx231xx** %9, align 8
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 1
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %469

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i32, i32* @CX231XX_MAXBOARDS, align 4
  %38 = call i32 @find_first_zero_bit(i32* @cx231xx_devused, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @CX231XX_MAXBOARDS, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i32, i32* @CX231XX_MAXBOARDS, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %469

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @test_and_set_bit(i32 %50, i32* @cx231xx_devused)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %36, label %53

53:                                               ; preds = %49
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = call i32 @interface_to_usbdev(%struct.usb_interface* %54)
  %56 = call %struct.usb_device* @usb_get_dev(i32 %55)
  store %struct.usb_device* %56, %struct.usb_device** %6, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 3
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.cx231xx* @devm_kzalloc(i32* %58, i32 152, i32 %59)
  store %struct.cx231xx* %60, %struct.cx231xx** %9, align 8
  %61 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %62 = icmp eq %struct.cx231xx* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %463

66:                                               ; preds = %53
  %67 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %68 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %67, i32 0, i32 19
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @snprintf(i32 %69, i32 29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %74 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %76 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %79 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 18
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 8
  %83 = load %struct.device*, %struct.device** %7, align 8
  %84 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %85 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %84, i32 0, i32 17
  store %struct.device* %83, %struct.device** %85, align 8
  %86 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %87 = call i32 @cx231xx_set_model(%struct.cx231xx* %86)
  %88 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %89 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %93 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %92, i32 0, i32 16
  store i64 0, i64* %93, align 8
  %94 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 15
  store i64 0, i64* %95, align 8
  %96 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %97 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %96, i32 0, i32 14
  store i64 0, i64* %97, align 8
  %98 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %99 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %101 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %100, i32 0, i32 3
  store i32 -1, i32* %101, align 4
  %102 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %103 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %102, i32 0, i32 13
  %104 = call i32 @atomic_set(i32* %103, i32 0)
  %105 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %106 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %105, i32 0, i32 12
  store i64 0, i64* %106, align 8
  %107 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %108 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %107, i32 0, i32 6
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %114 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %113, i32 0, i32 4
  store i64 %112, i64* %114, align 8
  %115 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %116 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %115, i32 0, i32 11
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* @transfer_mode, align 4
  %118 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %119 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 4
  %120 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %121 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %126 [
    i32 129, label %123
    i32 128, label %124
    i32 131, label %124
    i32 130, label %125
  ]

123:                                              ; preds = %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %127

124:                                              ; preds = %66, %66
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %127

125:                                              ; preds = %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %127

126:                                              ; preds = %66
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %127

127:                                              ; preds = %126, %125, %124, %123
  %128 = load %struct.device*, %struct.device** %7, align 8
  %129 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %130 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %135 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  br label %138

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %133
  %139 = phi i8* [ %136, %133 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %137 ]
  %140 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %141 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %146 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  br label %149

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %144
  %150 = phi i8* [ %147, %144 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %148 ]
  %151 = load i8*, i8** %15, align 8
  %152 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %153 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @le16_to_cpu(i32 %155)
  %157 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %158 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @le16_to_cpu(i32 %160)
  %162 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %163 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (%struct.device*, i8*, i8*, ...) @dev_info(%struct.device* %128, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i8* %139, i8* %150, i8* %151, i32 %156, i32 %161, i64 %164)
  %166 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %167 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %171 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %11, align 4
  %173 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %174 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %173, i32 0, i32 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load %struct.usb_interface_assoc_descriptor**, %struct.usb_interface_assoc_descriptor*** %176, align 8
  %178 = getelementptr inbounds %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %177, i64 0
  %179 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %178, align 8
  store %struct.usb_interface_assoc_descriptor* %179, %struct.usb_interface_assoc_descriptor** %17, align 8
  %180 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %17, align 8
  %181 = icmp ne %struct.usb_interface_assoc_descriptor* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %149
  %183 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %17, align 8
  %184 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %182, %149
  %189 = load %struct.device*, %struct.device** %7, align 8
  %190 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %191 = load i32, i32* @ENODEV, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %10, align 4
  br label %463

193:                                              ; preds = %182
  %194 = load %struct.device*, %struct.device** %7, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %195)
  %197 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %198 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %199 = call i32 @usb_set_intfdata(%struct.usb_interface* %197, %struct.cx231xx* %198)
  %200 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %201 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %202 = call i32 @cx231xx_media_device_init(%struct.cx231xx* %200, %struct.usb_device* %201)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %193
  %206 = load %struct.device*, %struct.device** %7, align 8
  %207 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %460

208:                                              ; preds = %193
  %209 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %210 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %209, i32 0, i32 2
  %211 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %212 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %211, i32 0, i32 5
  %213 = call i32 @v4l2_device_register(%struct.device* %210, %struct.TYPE_20__* %212)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %208
  %217 = load %struct.device*, %struct.device** %7, align 8
  %218 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %217, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %457

219:                                              ; preds = %208
  %220 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %221 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @cx231xx_init_dev(%struct.cx231xx* %220, %struct.usb_device* %221, i32 %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %453

227:                                              ; preds = %219
  %228 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %229 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %230 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @cx231xx_init_v4l2(%struct.cx231xx* %228, %struct.usb_device* %229, %struct.usb_interface* %230, i32 %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  br label %453

236:                                              ; preds = %227
  %237 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %238 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %237, i32 0, i32 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 255
  br i1 %241, label %242, label %407

242:                                              ; preds = %236
  %243 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %244 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %243, i32 0, i32 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i64 0
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %16, align 8
  %252 = load i64, i64* %16, align 8
  %253 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %254 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = icmp uge i64 %252, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %242
  %258 = load %struct.device*, %struct.device** %7, align 8
  %259 = load i64, i64* %16, align 8
  %260 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %258, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i64 %259)
  %261 = load i32, i32* @ENODEV, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %10, align 4
  br label %440

263:                                              ; preds = %242
  %264 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %265 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %264, i32 0, i32 4
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  %268 = load %struct.usb_interface**, %struct.usb_interface*** %267, align 8
  %269 = load i64, i64* %16, align 8
  %270 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %268, i64 %269
  %271 = load %struct.usb_interface*, %struct.usb_interface** %270, align 8
  store %struct.usb_interface* %271, %struct.usb_interface** %8, align 8
  %272 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %273 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %272, i32 0, i32 1
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i64 0
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %14, align 4
  %280 = add nsw i32 %279, 1
  %281 = icmp slt i32 %278, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %263
  %283 = load i32, i32* @ENODEV, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %10, align 4
  br label %440

285:                                              ; preds = %263
  %286 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %287 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %286, i32 0, i32 1
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %290, align 8
  %292 = load i32, i32* %14, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %299 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %298, i32 0, i32 7
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 2
  store i32 %297, i32* %300, align 8
  %301 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %302 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %305 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %305, i32 0, i32 0
  store i32 %303, i32* %306, align 8
  %307 = load %struct.device*, %struct.device** %7, align 8
  %308 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %309 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %308, i32 0, i32 7
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = inttoptr i64 %312 to i8*
  %314 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %315 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %314, i32 0, i32 7
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = call i32 (%struct.device*, i8*, i8*, ...) @dev_info(%struct.device* %307, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* %313, i32 %317)
  %319 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %320 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %319, i32 0, i32 3
  %321 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %322 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %321, i32 0, i32 7
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @GFP_KERNEL, align 4
  %326 = call i32* @devm_kmalloc_array(i32* %320, i32 32, i32 %324, i32 %325)
  %327 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %328 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %327, i32 0, i32 7
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 1
  store i32* %326, i32** %329, align 8
  %330 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %331 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %330, i32 0, i32 7
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = icmp eq i32* %333, null
  br i1 %334, label %335, label %338

335:                                              ; preds = %285
  %336 = load i32, i32* @ENOMEM, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %10, align 4
  br label %440

338:                                              ; preds = %285
  store i32 0, i32* %13, align 4
  br label %339

339:                                              ; preds = %403, %338
  %340 = load i32, i32* %13, align 4
  %341 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %342 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %341, i32 0, i32 7
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp slt i32 %340, %344
  br i1 %345, label %346, label %406

346:                                              ; preds = %339
  %347 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %348 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %347, i32 0, i32 1
  %349 = load %struct.TYPE_28__*, %struct.TYPE_28__** %348, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %14, align 4
  %357 = add nsw i32 %356, 1
  %358 = icmp slt i32 %355, %357
  br i1 %358, label %359, label %362

359:                                              ; preds = %346
  %360 = load i32, i32* @ENODEV, align 4
  %361 = sub nsw i32 0, %360
  store i32 %361, i32* %10, align 4
  br label %440

362:                                              ; preds = %346
  %363 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %364 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %363, i32 0, i32 1
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** %364, align 8
  %366 = load i32, i32* %13, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %369, align 8
  %371 = load i32, i32* %14, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @le16_to_cpu(i32 %376)
  store i32 %377, i32* %18, align 4
  %378 = load i32, i32* %18, align 4
  %379 = and i32 %378, 2047
  %380 = load i32, i32* %18, align 4
  %381 = and i32 %380, 6144
  %382 = ashr i32 %381, 11
  %383 = add nsw i32 %382, 1
  %384 = mul nsw i32 %379, %383
  %385 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %386 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %385, i32 0, i32 7
  %387 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %13, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  store i32 %384, i32* %391, align 4
  %392 = load %struct.device*, %struct.device** %7, align 8
  %393 = load i32, i32* %13, align 4
  %394 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %395 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %394, i32 0, i32 7
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %13, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %392, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %393, i32 %401)
  br label %403

403:                                              ; preds = %362
  %404 = load i32, i32* %13, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %13, align 4
  br label %339

406:                                              ; preds = %339
  br label %407

407:                                              ; preds = %406, %236
  %408 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %409 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @CX231XX_BOARD_CNXT_VIDEO_GRABBER, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %421

413:                                              ; preds = %407
  %414 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %415 = call i32 @cx231xx_enable_OSC(%struct.cx231xx* %414)
  %416 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %417 = call i32 @cx231xx_reset_out(%struct.cx231xx* %416)
  %418 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %419 = load i32, i32* @INDEX_VIDEO, align 4
  %420 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %418, i32 %419, i32 3)
  br label %421

421:                                              ; preds = %413, %407
  %422 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %423 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @CX231XX_BOARD_CNXT_RDE_253S, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %430

427:                                              ; preds = %421
  %428 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %429 = call i32 @cx231xx_sleep_s5h1432(%struct.cx231xx* %428)
  br label %430

430:                                              ; preds = %427, %421
  %431 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %432 = call i32 @request_modules(%struct.cx231xx* %431)
  %433 = load i32, i32* %10, align 4
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %430
  %436 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %437 = call i32 @cx231xx_release_resources(%struct.cx231xx* %436)
  br label %438

438:                                              ; preds = %435, %430
  %439 = load i32, i32* %10, align 4
  store i32 %439, i32* %3, align 4
  br label %469

440:                                              ; preds = %359, %335, %282, %257
  %441 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %442 = call i32 @cx231xx_close_extension(%struct.cx231xx* %441)
  %443 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %444 = call i32 @cx231xx_ir_exit(%struct.cx231xx* %443)
  %445 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %446 = call i32 @cx231xx_release_analog_resources(%struct.cx231xx* %445)
  %447 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %448 = call i32 @cx231xx_417_unregister(%struct.cx231xx* %447)
  %449 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %450 = call i32 @cx231xx_remove_from_devlist(%struct.cx231xx* %449)
  %451 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %452 = call i32 @cx231xx_dev_uninit(%struct.cx231xx* %451)
  br label %453

453:                                              ; preds = %440, %235, %226
  %454 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %455 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %454, i32 0, i32 5
  %456 = call i32 @v4l2_device_unregister(%struct.TYPE_20__* %455)
  br label %457

457:                                              ; preds = %453, %216
  %458 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %459 = call i32 @cx231xx_unregister_media_device(%struct.cx231xx* %458)
  br label %460

460:                                              ; preds = %457, %205
  %461 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %462 = call i32 @usb_set_intfdata(%struct.usb_interface* %461, %struct.cx231xx* null)
  br label %463

463:                                              ; preds = %460, %188, %63
  %464 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %465 = call i32 @usb_put_dev(%struct.usb_device* %464)
  %466 = load i32, i32* %11, align 4
  %467 = call i32 @clear_bit(i32 %466, i32* @cx231xx_devused)
  %468 = load i32, i32* %10, align 4
  store i32 %468, i32* %3, align 4
  br label %469

469:                                              ; preds = %463, %438, %42, %32
  %470 = load i32, i32* %3, align 4
  ret i32 %470
}

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.usb_device* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.cx231xx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @cx231xx_set_model(%struct.cx231xx*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.cx231xx*) #1

declare dso_local i32 @cx231xx_media_device_init(%struct.cx231xx*, %struct.usb_device*) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, %struct.TYPE_20__*) #1

declare dso_local i32 @cx231xx_init_dev(%struct.cx231xx*, %struct.usb_device*, i32) #1

declare dso_local i32 @cx231xx_init_v4l2(%struct.cx231xx*, %struct.usb_device*, %struct.usb_interface*, i32) #1

declare dso_local i32* @devm_kmalloc_array(i32*, i32, i32, i32) #1

declare dso_local i32 @cx231xx_enable_OSC(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_reset_out(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_sleep_s5h1432(%struct.cx231xx*) #1

declare dso_local i32 @request_modules(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_release_resources(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_close_extension(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_ir_exit(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_release_analog_resources(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_417_unregister(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_remove_from_devlist(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_dev_uninit(%struct.cx231xx*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_20__*) #1

declare dso_local i32 @cx231xx_unregister_media_device(%struct.cx231xx*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
