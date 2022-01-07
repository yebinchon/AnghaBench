; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_device = type { i32, i8*, i8*, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.usb_interface**, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.em28xx = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.em28xx*, i32, i32, %struct.em28xx*, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_13__*, i64, %struct.TYPE_12__, i32, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32*, i64 }
%struct.TYPE_16__ = type { i64 }

@em28xx_devused = common dso_local global i32 0, align 4
@EM28XX_MAXBOARDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Driver supports up to %i em28xx boards.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB_CLASS_AUDIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"audio device (%04x:%04x): interface %i, class %i\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"480\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@disable_usb_speed_check = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"Device initialization failed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Device must be connected to a high-speed USB 2.0 port.\0A\00", align 1
@PRIMARY_TS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"em28xx\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Audio interface %i found (Vendor Class)\0A\00", align 1
@EM28XX_USB_AUDIO_VENDOR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [170 x i8] c"em28xx: device seems to have vendor AND usb audio class interfaces !\0A\09\09The vendor interface will be ignored. Please contact the developers <linux-media@vger.kernel.org>\0A\00", align 1
@EM28XX_USB_AUDIO_CLASS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Video interface %i found:%s%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" bulk\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" isoc\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"DVB interface %i found:%s%s\0A\00", align 1
@card = common dso_local global i64* null, align 8
@em28xx_bcount = common dso_local global i32 0, align 4
@usb_xfer_mode = common dso_local global i64 0, align 8
@EM28XX_NODECODER = common dso_local global i64 0, align 8
@EM28XX_NOSENSOR = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [48 x i8] c"Currently, V4L2 is not supported on this model\0A\00", align 1
@TUNER_ABSENT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [72 x i8] c"We currently don't support analog TV or stream capture on dual tuners.\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"analog set to %s mode.\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"bulk\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"isoc\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"dvb set to %s mode.\0A\00", align 1
@SECONDARY_TS = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [25 x i8] c"dvb ts2 set to %s mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @em28xx_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.em28xx* null, %struct.em28xx** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = call i32 @interface_to_usbdev(%struct.usb_interface* %26)
  %28 = call %struct.usb_device* @usb_get_dev(i32 %27)
  store %struct.usb_device* %28, %struct.usb_device** %6, align 8
  br label %29

29:                                               ; preds = %44, %2
  %30 = load i32, i32* @em28xx_devused, align 4
  %31 = load i32, i32* @EM28XX_MAXBOARDS, align 4
  %32 = call i32 @find_first_zero_bit(i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @EM28XX_MAXBOARDS, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 1
  %39 = load i32, i32* @EM28XX_MAXBOARDS, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %716

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @em28xx_devused, align 4
  %47 = call i64 @test_and_set_bit(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %29, label %49

49:                                               ; preds = %44
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 2
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @USB_CLASS_AUDIO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %49
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %60, i32 0, i32 1
  %62 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %74 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %73, i32 0, i32 2
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i32*, i8*, ...) @dev_info(i32* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %71, i32 %72, i64 %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %712

83:                                               ; preds = %49
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.em28xx* @kzalloc(i32 216, i32 %84)
  store %struct.em28xx* %85, %struct.em28xx** %7, align 8
  %86 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %87 = icmp ne %struct.em28xx* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %712

91:                                               ; preds = %83
  %92 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %93 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.em28xx* @kcalloc(i32 %94, i32 216, i32 %95)
  %97 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %98 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %97, i32 0, i32 10
  store %struct.em28xx* %96, %struct.em28xx** %98, align 8
  %99 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %100 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %99, i32 0, i32 10
  %101 = load %struct.em28xx*, %struct.em28xx** %100, align 8
  %102 = icmp ne %struct.em28xx* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %91
  %104 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %105 = call i32 @kfree(%struct.em28xx* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %712

108:                                              ; preds = %91
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %139, %108
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %112 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %142

115:                                              ; preds = %109
  store i32 0, i32* %17, align 4
  br label %116

116:                                              ; preds = %135, %115
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %119 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %118, i32 0, i32 2
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %117, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %116
  %129 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %130 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %131 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @em28xx_check_usb_descriptor(%struct.em28xx* %129, %struct.usb_device* %130, %struct.usb_interface* %131, i32 %132, i32 %133, i32* %9, i32* %10, i32* %11)
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %17, align 4
  br label %116

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %109

142:                                              ; preds = %109
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @ENODEV, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %8, align 4
  br label %705

154:                                              ; preds = %148, %145, %142
  %155 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %156 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %161 [
    i32 129, label %158
    i32 128, label %159
    i32 131, label %159
    i32 130, label %160
  ]

158:                                              ; preds = %154
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %162

159:                                              ; preds = %154, %154
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %162

160:                                              ; preds = %154
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %162

161:                                              ; preds = %154
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %162

162:                                              ; preds = %161, %160, %159, %158
  %163 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %164 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %163, i32 0, i32 1
  %165 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %166 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %171 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  br label %174

173:                                              ; preds = %162
  br label %174

174:                                              ; preds = %173, %169
  %175 = phi i8* [ %172, %169 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %173 ]
  %176 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %177 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %182 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  br label %185

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %180
  %186 = phi i8* [ %183, %180 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %184 ]
  %187 = load i8*, i8** %16, align 8
  %188 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %189 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le16_to_cpu(i32 %191)
  %193 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %194 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @le16_to_cpu(i32 %196)
  %198 = load i32, i32* %15, align 4
  %199 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %200 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %199, i32 0, i32 2
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32*, i8*, ...) @dev_info(i32* %164, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %175, i8* %186, i8* %187, i32 %192, i32 %197, i32 %198, i32 %204)
  %206 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %207 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 130
  br i1 %209, label %210, label %222

210:                                              ; preds = %185
  %211 = load i64, i64* @disable_usb_speed_check, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %210
  %214 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %215 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %214, i32 0, i32 1
  %216 = call i32 (i32*, i8*, ...) @dev_err(i32* %215, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %217 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %218 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %217, i32 0, i32 1
  %219 = call i32 (i32*, i8*, ...) @dev_err(i32* %218, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  %220 = load i32, i32* @ENODEV, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %8, align 4
  br label %705

222:                                              ; preds = %210, %185
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %225 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %227 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %230 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %229, i32 0, i32 25
  store i64 %228, i64* %230, align 8
  %231 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %232 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %231, i32 0, i32 1
  store i32 -1, i32* %232, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %222
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %11, align 4
  %240 = icmp ne i32 %239, 0
  br label %241

241:                                              ; preds = %238, %235
  %242 = phi i1 [ true, %235 ], [ %240, %238 ]
  %243 = xor i1 %242, true
  br label %244

244:                                              ; preds = %241, %222
  %245 = phi i1 [ false, %222 ], [ %243, %241 ]
  %246 = zext i1 %245 to i32
  %247 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %248 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %251 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %15, align 4
  %253 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %254 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %253, i32 0, i32 4
  store i32 %252, i32* %254, align 8
  %255 = load i32, i32* @PRIMARY_TS, align 4
  %256 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %257 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %256, i32 0, i32 26
  store i32 %255, i32* %257, align 8
  %258 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %259 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %258, i32 0, i32 30
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @snprintf(i32 %260, i32 28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %262 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %263 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %262, i32 0, i32 13
  store %struct.em28xx* null, %struct.em28xx** %263, align 8
  %264 = load i32, i32* %9, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %244
  %267 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %268 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %267, i32 0, i32 1
  %269 = load i32, i32* %15, align 4
  %270 = call i32 (i32*, i8*, ...) @dev_info(i32* %268, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* @EM28XX_USB_AUDIO_VENDOR, align 4
  %272 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %273 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %272, i32 0, i32 29
  store i32 %271, i32* %273, align 8
  br label %274

274:                                              ; preds = %266, %244
  store i32 0, i32* %12, align 4
  br label %275

275:                                              ; preds = %315, %274
  %276 = load i32, i32* %12, align 4
  %277 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %278 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %277, i32 0, i32 3
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp slt i32 %276, %282
  br i1 %283, label %284, label %318

284:                                              ; preds = %275
  %285 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %286 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %285, i32 0, i32 3
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 0
  %289 = load %struct.usb_interface**, %struct.usb_interface*** %288, align 8
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %289, i64 %291
  %293 = load %struct.usb_interface*, %struct.usb_interface** %292, align 8
  store %struct.usb_interface* %293, %struct.usb_interface** %18, align 8
  %294 = load %struct.usb_interface*, %struct.usb_interface** %18, align 8
  %295 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %294, i32 0, i32 2
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i64 0
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @USB_CLASS_AUDIO, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %314

303:                                              ; preds = %284
  %304 = load i32, i32* %9, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %308 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %307, i32 0, i32 1
  %309 = call i32 (i32*, i8*, ...) @dev_err(i32* %308, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.12, i64 0, i64 0))
  br label %310

310:                                              ; preds = %306, %303
  %311 = load i32, i32* @EM28XX_USB_AUDIO_CLASS, align 4
  %312 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %313 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %312, i32 0, i32 29
  store i32 %311, i32* %313, align 8
  br label %318

314:                                              ; preds = %284
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %12, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %12, align 4
  br label %275

318:                                              ; preds = %310, %275
  %319 = load i32, i32* %10, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %338

321:                                              ; preds = %318
  %322 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %323 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %322, i32 0, i32 1
  %324 = load i32, i32* %15, align 4
  %325 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %326 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %325, i32 0, i32 27
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  %329 = zext i1 %328 to i64
  %330 = select i1 %328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %331 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %332 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %331, i32 0, i32 28
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  %335 = zext i1 %334 to i64
  %336 = select i1 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %337 = call i32 (i32*, i8*, ...) @dev_info(i32* %323, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %324, i8* %330, i8* %336)
  br label %338

338:                                              ; preds = %321, %318
  %339 = load i32, i32* %11, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %358

341:                                              ; preds = %338
  %342 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %343 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %342, i32 0, i32 1
  %344 = load i32, i32* %15, align 4
  %345 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %346 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %345, i32 0, i32 18
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  %349 = zext i1 %348 to i64
  %350 = select i1 %348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %351 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %352 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %351, i32 0, i32 20
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %357 = call i32 (i32*, i8*, ...) @dev_info(i32* %343, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %344, i8* %350, i8* %356)
  br label %358

358:                                              ; preds = %341, %338
  %359 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %360 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %363 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %362, i32 0, i32 5
  store i32 %361, i32* %363, align 4
  %364 = load i64*, i64** @card, align 8
  %365 = load i32, i32* %13, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = load i32, i32* @em28xx_bcount, align 4
  %371 = icmp ult i32 %369, %370
  br i1 %371, label %372, label %380

372:                                              ; preds = %358
  %373 = load i64*, i64** @card, align 8
  %374 = load i32, i32* %13, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %373, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %379 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %378, i32 0, i32 25
  store i64 %377, i64* %379, align 8
  br label %380

380:                                              ; preds = %372, %358
  %381 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %382 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %383 = call i32 @usb_set_intfdata(%struct.usb_interface* %381, %struct.em28xx* %382)
  %384 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %385 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %384, i32 0, i32 24
  %386 = call i32 @mutex_init(i32* %385)
  %387 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %388 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %389 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %390 = load i32, i32* %13, align 4
  %391 = call i32 @em28xx_init_dev(%struct.em28xx* %387, %struct.usb_device* %388, %struct.usb_interface* %389, i32 %390)
  store i32 %391, i32* %8, align 4
  %392 = load i32, i32* %8, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %380
  br label %705

395:                                              ; preds = %380
  %396 = load i64, i64* @usb_xfer_mode, align 8
  %397 = icmp slt i64 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %395
  %399 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %400 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %399, i32 0, i32 22
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %398
  store i32 1, i32* %14, align 4
  br label %405

404:                                              ; preds = %398
  store i32 0, i32* %14, align 4
  br label %405

405:                                              ; preds = %404, %403
  br label %410

406:                                              ; preds = %395
  %407 = load i64, i64* @usb_xfer_mode, align 8
  %408 = icmp sgt i64 %407, 0
  %409 = zext i1 %408 to i32
  store i32 %409, i32* %14, align 4
  br label %410

410:                                              ; preds = %406, %405
  %411 = load i32, i32* %10, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %432

413:                                              ; preds = %410
  %414 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %415 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %414, i32 0, i32 23
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @EM28XX_NODECODER, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %432

420:                                              ; preds = %413
  %421 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %422 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %421, i32 0, i32 6
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @EM28XX_NOSENSOR, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %432

426:                                              ; preds = %420
  %427 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %428 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %427, i32 0, i32 1
  %429 = call i32 (i32*, i8*, ...) @dev_err(i32* %428, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  %430 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %431 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %430, i32 0, i32 3
  store i32 0, i32* %431, align 4
  br label %432

432:                                              ; preds = %426, %420, %413, %410
  %433 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %434 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %433, i32 0, i32 23
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 3
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %453

438:                                              ; preds = %432
  %439 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %440 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %439, i32 0, i32 7
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @TUNER_ABSENT, align 8
  %443 = icmp ne i64 %441, %442
  br i1 %443, label %449, label %444

444:                                              ; preds = %438
  %445 = call %struct.TYPE_16__* @INPUT(i32 0)
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %444, %438
  %450 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %451 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %450, i32 0, i32 1
  %452 = call i32 (i32*, i8*, ...) @dev_err(i32* %451, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %453

453:                                              ; preds = %449, %444, %432
  %454 = load i32, i32* %10, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %482

456:                                              ; preds = %453
  %457 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %458 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %457, i32 0, i32 28
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %469

461:                                              ; preds = %456
  %462 = load i32, i32* %14, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %472

464:                                              ; preds = %461
  %465 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %466 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %465, i32 0, i32 27
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %464, %456
  %470 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %471 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %470, i32 0, i32 8
  store i32 1, i32* %471, align 8
  br label %472

472:                                              ; preds = %469, %464, %461
  %473 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %474 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %473, i32 0, i32 1
  %475 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %476 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %475, i32 0, i32 8
  %477 = load i32, i32* %476, align 8
  %478 = icmp ne i32 %477, 0
  %479 = zext i1 %478 to i64
  %480 = select i1 %478, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)
  %481 = call i32 (i32*, i8*, ...) @dev_info(i32* %474, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* %480)
  br label %482

482:                                              ; preds = %472, %453
  %483 = load i32, i32* %11, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %511

485:                                              ; preds = %482
  %486 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %487 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %486, i32 0, i32 20
  %488 = load i64, i64* %487, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %498

490:                                              ; preds = %485
  %491 = load i32, i32* %14, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %501

493:                                              ; preds = %490
  %494 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %495 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %494, i32 0, i32 18
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %493, %485
  %499 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %500 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %499, i32 0, i32 9
  store i32 1, i32* %500, align 4
  br label %501

501:                                              ; preds = %498, %493, %490
  %502 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %503 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %502, i32 0, i32 1
  %504 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %505 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %504, i32 0, i32 9
  %506 = load i32, i32* %505, align 4
  %507 = icmp ne i32 %506, 0
  %508 = zext i1 %507 to i64
  %509 = select i1 %507, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)
  %510 = call i32 (i32*, i8*, ...) @dev_info(i32* %503, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %509)
  br label %511

511:                                              ; preds = %501, %482
  %512 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %513 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %512, i32 0, i32 23
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 3
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %699

517:                                              ; preds = %511
  %518 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %519 = call i64 @em28xx_duplicate_dev(%struct.em28xx* %518)
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %521, label %699

521:                                              ; preds = %517
  %522 = load i32, i32* @SECONDARY_TS, align 4
  %523 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %524 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %523, i32 0, i32 13
  %525 = load %struct.em28xx*, %struct.em28xx** %524, align 8
  %526 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %525, i32 0, i32 26
  store i32 %522, i32* %526, align 8
  %527 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %528 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %527, i32 0, i32 13
  %529 = load %struct.em28xx*, %struct.em28xx** %528, align 8
  %530 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %529, i32 0, i32 1
  store i32 -1, i32* %530, align 4
  %531 = load i32, i32* %9, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %542

533:                                              ; preds = %521
  %534 = load i32, i32* %10, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %539, label %536

536:                                              ; preds = %533
  %537 = load i32, i32* %11, align 4
  %538 = icmp ne i32 %537, 0
  br label %539

539:                                              ; preds = %536, %533
  %540 = phi i1 [ true, %533 ], [ %538, %536 ]
  %541 = xor i1 %540, true
  br label %542

542:                                              ; preds = %539, %521
  %543 = phi i1 [ false, %521 ], [ %541, %539 ]
  %544 = zext i1 %543 to i32
  %545 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %546 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %545, i32 0, i32 13
  %547 = load %struct.em28xx*, %struct.em28xx** %546, align 8
  %548 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %547, i32 0, i32 2
  store i32 %544, i32* %548, align 8
  %549 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %550 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %549, i32 0, i32 13
  %551 = load %struct.em28xx*, %struct.em28xx** %550, align 8
  %552 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %551, i32 0, i32 3
  store i32 0, i32* %552, align 4
  %553 = load i32, i32* %15, align 4
  %554 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %555 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %554, i32 0, i32 13
  %556 = load %struct.em28xx*, %struct.em28xx** %555, align 8
  %557 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %556, i32 0, i32 4
  store i32 %553, i32* %557, align 8
  %558 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %559 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %562 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %561, i32 0, i32 13
  %563 = load %struct.em28xx*, %struct.em28xx** %562, align 8
  %564 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %563, i32 0, i32 25
  store i64 %560, i64* %564, align 8
  %565 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %566 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %565, i32 0, i32 13
  %567 = load %struct.em28xx*, %struct.em28xx** %566, align 8
  %568 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %567, i32 0, i32 24
  %569 = call i32 @mutex_init(i32* %568)
  %570 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %571 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %570, i32 0, i32 13
  %572 = load %struct.em28xx*, %struct.em28xx** %571, align 8
  %573 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %574 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %575 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %576 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %575, i32 0, i32 13
  %577 = load %struct.em28xx*, %struct.em28xx** %576, align 8
  %578 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @em28xx_init_dev(%struct.em28xx* %572, %struct.usb_device* %573, %struct.usb_interface* %574, i32 %579)
  store i32 %580, i32* %8, align 4
  %581 = load i32, i32* %8, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %584

583:                                              ; preds = %542
  br label %705

584:                                              ; preds = %542
  %585 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %586 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %585, i32 0, i32 13
  %587 = load %struct.em28xx*, %struct.em28xx** %586, align 8
  %588 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %587, i32 0, i32 23
  %589 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %588, i32 0, i32 2
  store i32* null, i32** %589, align 8
  %590 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %591 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %590, i32 0, i32 13
  %592 = load %struct.em28xx*, %struct.em28xx** %591, align 8
  %593 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %592, i32 0, i32 23
  %594 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %593, i32 0, i32 1
  store i64 0, i64* %594, align 8
  %595 = load i64, i64* @usb_xfer_mode, align 8
  %596 = icmp slt i64 %595, 0
  br i1 %596, label %597, label %607

597:                                              ; preds = %584
  %598 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %599 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %598, i32 0, i32 13
  %600 = load %struct.em28xx*, %struct.em28xx** %599, align 8
  %601 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %600, i32 0, i32 22
  %602 = load i64, i64* %601, align 8
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %605

604:                                              ; preds = %597
  store i32 1, i32* %14, align 4
  br label %606

605:                                              ; preds = %597
  store i32 0, i32* %14, align 4
  br label %606

606:                                              ; preds = %605, %604
  br label %611

607:                                              ; preds = %584
  %608 = load i64, i64* @usb_xfer_mode, align 8
  %609 = icmp sgt i64 %608, 0
  %610 = zext i1 %609 to i32
  store i32 %610, i32* %14, align 4
  br label %611

611:                                              ; preds = %607, %606
  %612 = load i32, i32* %11, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %646

614:                                              ; preds = %611
  %615 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %616 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %615, i32 0, i32 19
  %617 = load i64, i64* %616, align 8
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %627

619:                                              ; preds = %614
  %620 = load i32, i32* %14, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %632

622:                                              ; preds = %619
  %623 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %624 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %623, i32 0, i32 17
  %625 = load i64, i64* %624, align 8
  %626 = icmp ne i64 %625, 0
  br i1 %626, label %627, label %632

627:                                              ; preds = %622, %614
  %628 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %629 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %628, i32 0, i32 13
  %630 = load %struct.em28xx*, %struct.em28xx** %629, align 8
  %631 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %630, i32 0, i32 9
  store i32 1, i32* %631, align 4
  br label %632

632:                                              ; preds = %627, %622, %619
  %633 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %634 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %633, i32 0, i32 21
  %635 = load %struct.TYPE_13__*, %struct.TYPE_13__** %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %635, i32 0, i32 0
  %637 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %638 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %637, i32 0, i32 13
  %639 = load %struct.em28xx*, %struct.em28xx** %638, align 8
  %640 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %639, i32 0, i32 9
  %641 = load i32, i32* %640, align 4
  %642 = icmp ne i32 %641, 0
  %643 = zext i1 %642 to i64
  %644 = select i1 %642, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)
  %645 = call i32 (i32*, i8*, ...) @dev_info(i32* %636, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i8* %644)
  br label %646

646:                                              ; preds = %632, %611
  %647 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %648 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %647, i32 0, i32 19
  %649 = load i64, i64* %648, align 8
  %650 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %651 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %650, i32 0, i32 13
  %652 = load %struct.em28xx*, %struct.em28xx** %651, align 8
  %653 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %652, i32 0, i32 20
  store i64 %649, i64* %653, align 8
  %654 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %655 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %654, i32 0, i32 17
  %656 = load i64, i64* %655, align 8
  %657 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %658 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %657, i32 0, i32 13
  %659 = load %struct.em28xx*, %struct.em28xx** %658, align 8
  %660 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %659, i32 0, i32 18
  store i64 %656, i64* %660, align 8
  %661 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %662 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %661, i32 0, i32 15
  %663 = load i32, i32* %662, align 4
  %664 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %665 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %664, i32 0, i32 13
  %666 = load %struct.em28xx*, %struct.em28xx** %665, align 8
  %667 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %666, i32 0, i32 16
  store i32 %663, i32* %667, align 8
  %668 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %669 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %668, i32 0, i32 14
  %670 = load i32, i32* %669, align 8
  %671 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %672 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %671, i32 0, i32 13
  %673 = load %struct.em28xx*, %struct.em28xx** %672, align 8
  %674 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %673, i32 0, i32 14
  store i32 %670, i32* %674, align 8
  %675 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %676 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %675, i32 0, i32 9
  %677 = load i32, i32* %676, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %686

679:                                              ; preds = %646
  %680 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %681 = call i32 @em28xx_write_reg(%struct.em28xx* %680, i32 11, i32 150)
  %682 = call i32 @mdelay(i32 100)
  %683 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %684 = call i32 @em28xx_write_reg(%struct.em28xx* %683, i32 11, i32 128)
  %685 = call i32 @mdelay(i32 100)
  br label %693

686:                                              ; preds = %646
  %687 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %688 = call i32 @em28xx_write_reg(%struct.em28xx* %687, i32 11, i32 150)
  %689 = call i32 @mdelay(i32 100)
  %690 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %691 = call i32 @em28xx_write_reg(%struct.em28xx* %690, i32 11, i32 130)
  %692 = call i32 @mdelay(i32 100)
  br label %693

693:                                              ; preds = %686, %679
  %694 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %695 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %694, i32 0, i32 13
  %696 = load %struct.em28xx*, %struct.em28xx** %695, align 8
  %697 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %696, i32 0, i32 12
  %698 = call i32 @kref_init(i32* %697)
  br label %699

699:                                              ; preds = %693, %517, %511
  %700 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %701 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %700, i32 0, i32 12
  %702 = call i32 @kref_init(i32* %701)
  %703 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %704 = call i32 @request_modules(%struct.em28xx* %703)
  store i32 0, i32* %3, align 4
  br label %720

705:                                              ; preds = %583, %394, %213, %151
  %706 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %707 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %706, i32 0, i32 10
  %708 = load %struct.em28xx*, %struct.em28xx** %707, align 8
  %709 = call i32 @kfree(%struct.em28xx* %708)
  %710 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %711 = call i32 @kfree(%struct.em28xx* %710)
  br label %712

712:                                              ; preds = %705, %103, %88, %59
  %713 = load i32, i32* %13, align 4
  %714 = load i32, i32* @em28xx_devused, align 4
  %715 = call i32 @clear_bit(i32 %713, i32 %714)
  br label %716

716:                                              ; preds = %712, %36
  %717 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %718 = call i32 @usb_put_dev(%struct.usb_device* %717)
  %719 = load i32, i32* %8, align 4
  store i32 %719, i32* %3, align 4
  br label %720

720:                                              ; preds = %716, %699
  %721 = load i32, i32* %3, align 4
  ret i32 %721
}

declare dso_local %struct.usb_device* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.em28xx* @kzalloc(i32, i32) #1

declare dso_local %struct.em28xx* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.em28xx*) #1

declare dso_local i32 @em28xx_check_usb_descriptor(%struct.em28xx*, %struct.usb_device*, %struct.usb_interface*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.em28xx*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @em28xx_init_dev(%struct.em28xx*, %struct.usb_device*, %struct.usb_interface*, i32) #1

declare dso_local %struct.TYPE_16__* @INPUT(i32) #1

declare dso_local i64 @em28xx_duplicate_dev(%struct.em28xx*) #1

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @request_modules(%struct.em28xx*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
