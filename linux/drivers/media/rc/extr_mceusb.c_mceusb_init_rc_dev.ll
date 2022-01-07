; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_init_rc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_init_rc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i32 }
%struct.rc_dev = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mceusb_dev*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mceusb_dev = type { i64, %struct.TYPE_6__, %struct.usb_device*, i32, i32, %struct.device* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.usb_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"remote dev allocation failed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s (%04x:%04x)\00", align 1
@mceusb_model = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Media Center Ed. eHome Infrared Remote Transceiver\00", align 1
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@MCE_TIME_UNIT = common dso_local global i32 0, align 4
@mceusb_set_timeout = common dso_local global i32 0, align 4
@IR_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@mceusb_set_tx_mask = common dso_local global i32 0, align 4
@mceusb_set_tx_carrier = common dso_local global i32 0, align 4
@mceusb_tx_ir = common dso_local global i32 0, align 4
@mceusb_set_rx_wideband = common dso_local global i32 0, align 4
@mceusb_set_rx_carrier_report = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_HAUPPAUGE = common dso_local global i64 0, align 8
@RC_MAP_PINNACLE_PCTV_HD = common dso_local global i64 0, align 8
@RC_MAP_RC6_MCE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"remote dev registration failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rc_dev* (%struct.mceusb_dev*)* @mceusb_init_rc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rc_dev* @mceusb_init_rc_dev(%struct.mceusb_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.mceusb_dev*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.mceusb_dev* %0, %struct.mceusb_dev** %3, align 8
  %8 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %8, i32 0, i32 2
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %4, align 8
  %11 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %11, i32 0, i32 5
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %15 = call %struct.rc_dev* @rc_allocate_device(i32 %14)
  store %struct.rc_dev* %15, %struct.rc_dev** %6, align 8
  %16 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %17 = icmp ne %struct.rc_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %200

21:                                               ; preds = %1
  %22 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mceusb_model, align 8
  %26 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mceusb_model, align 8
  %35 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %42

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %33
  %43 = phi i8* [ %40, %33 ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), %41 ]
  %44 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %44, i32 0, i32 2
  %46 = load %struct.usb_device*, %struct.usb_device** %45, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %51, i32 0, i32 2
  %53 = load %struct.usb_device*, %struct.usb_device** %52, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = call i32 @snprintf(i32 %24, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %50, i32 %57)
  %59 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %59, i32 0, i32 2
  %61 = load %struct.usb_device*, %struct.usb_device** %60, align 8
  %62 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @usb_make_path(%struct.usb_device* %61, i32 %64, i32 4)
  %66 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %70 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %69, i32 0, i32 16
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %72 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %75 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %74, i32 0, i32 15
  store i32 %73, i32* %75, align 4
  %76 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %77 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %76, i32 0, i32 2
  %78 = load %struct.usb_device*, %struct.usb_device** %77, align 8
  %79 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %80 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %79, i32 0, i32 14
  %81 = call i32 @usb_to_input_id(%struct.usb_device* %78, i32* %80)
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %84 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %83, i32 0, i32 13
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store %struct.device* %82, %struct.device** %85, align 8
  %86 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %87 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %88 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %87, i32 0, i32 12
  store %struct.mceusb_dev* %86, %struct.mceusb_dev** %88, align 8
  %89 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %90 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %91 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %90, i32 0, i32 11
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @MCE_TIME_UNIT, align 4
  %93 = call i32 @US_TO_NS(i32 %92)
  %94 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %95 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 4
  %96 = call i32 @MS_TO_NS(i32 100)
  %97 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %98 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mceusb_model, align 8
  %100 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %101 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %42
  %108 = load i32, i32* @mceusb_set_timeout, align 4
  %109 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %110 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @IR_DEFAULT_TIMEOUT, align 4
  %112 = mul nsw i32 10, %111
  %113 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %114 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %121

115:                                              ; preds = %42
  %116 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %117 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %120 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %107
  %122 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %123 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* @mceusb_set_tx_mask, align 4
  %129 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %130 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @mceusb_set_tx_carrier, align 4
  %132 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %133 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @mceusb_tx_ir, align 4
  %135 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %136 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %127, %121
  %138 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %139 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i32, i32* @mceusb_set_rx_wideband, align 4
  %145 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %146 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @mceusb_set_rx_carrier_report, align 4
  %148 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %149 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %137
  %151 = load i32, i32* @DRIVER_NAME, align 4
  %152 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %153 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  %154 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %155 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le16_to_cpu(i32 %157)
  switch i32 %158, label %167 [
    i32 129, label %159
    i32 128, label %163
  ]

159:                                              ; preds = %150
  %160 = load i64, i64* @RC_MAP_HAUPPAUGE, align 8
  %161 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %162 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %171

163:                                              ; preds = %150
  %164 = load i64, i64* @RC_MAP_PINNACLE_PCTV_HD, align 8
  %165 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %166 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  br label %171

167:                                              ; preds = %150
  %168 = load i64, i64* @RC_MAP_RC6_MCE, align 8
  %169 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %170 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %169, i32 0, i32 2
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %167, %163, %159
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mceusb_model, align 8
  %173 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %174 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %171
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mceusb_model, align 8
  %182 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %183 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %189 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %180, %171
  %191 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %192 = call i32 @rc_register_device(%struct.rc_dev* %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.device*, %struct.device** %5, align 8
  %197 = call i32 @dev_err(%struct.device* %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %200

198:                                              ; preds = %190
  %199 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  store %struct.rc_dev* %199, %struct.rc_dev** %2, align 8
  br label %203

200:                                              ; preds = %195, %18
  %201 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %202 = call i32 @rc_free_device(%struct.rc_dev* %201)
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %203

203:                                              ; preds = %200, %198
  %204 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  ret %struct.rc_dev* %204
}

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @MS_TO_NS(i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
