; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_adapter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_10__, %struct.TYPE_11__*, i32, i32, %struct.dvb_usb_adapter* }
%struct.TYPE_10__ = type { i32, i64, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.dvb_usb_adapter = type { i32, %struct.TYPE_9__, %struct.TYPE_8__*, i32*, %struct.TYPE_12__, %struct.dvb_usb_device* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32* }
%struct.TYPE_12__ = type { i32, i64, %struct.dvb_usb_adapter_fe_properties* }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, i64 }

@USB_SPEED_FULL = common dso_local global i64 0, align 8
@DVB_USB_ADAP_HAS_PID_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"This USB2.0 device cannot be run on a USB1.1 port. (it lacks a hardware PID filter)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DVB_USB_ADAP_NEED_PID_FILTERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"will use the device's hardware PID filter (table count: %d).\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"will pass the complete MPEG2 transport stream to the software demuxer.\00", align 1
@dvb_usb_force_pid_filter_usage = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"pid filter enabled by module option.\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"no memory for priv for adapter %d fe %d.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"no memory for priv for adapter %d.\00", align 1
@DVB_USB_STATE_DVB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i16*)* @dvb_usb_adapter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_usb_adapter_init(%struct.dvb_usb_device* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.dvb_usb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dvb_usb_adapter_fe_properties*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %275, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %278

18:                                               ; preds = %11
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 4
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i64 %23
  store %struct.dvb_usb_adapter* %24, %struct.dvb_usb_adapter** %6, align 8
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %26 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %26, i32 0, i32 5
  store %struct.dvb_usb_device* %25, %struct.dvb_usb_device** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 4
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @memcpy(%struct.TYPE_12__* %32, i32* %39, i32 4)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %209, %18
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %212

48:                                               ; preds = %41
  %49 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %52, i64 %54
  store %struct.dvb_usb_adapter_fe_properties* %55, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %56 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @USB_SPEED_FULL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %48
  %64 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %310

74:                                               ; preds = %63, %48
  %75 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @USB_SPEED_FULL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %84 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %82, %74
  %90 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %91 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DVB_USB_ADAP_NEED_PID_FILTERING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %89, %82
  %97 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %102 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %109 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  br label %134

118:                                              ; preds = %89
  %119 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  %127 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %128 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store i32 255, i32* %133, align 4
  br label %134

134:                                              ; preds = %118, %96
  %135 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %136 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %135, i32 0, i32 2
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %173, label %144

144:                                              ; preds = %134
  %145 = load i64, i64* @dvb_usb_force_pid_filter_usage, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %144
  %148 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %149 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %147
  %155 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %156 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %157 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %156, i32 0, i32 2
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  %163 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %164 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %167 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %166, i32 0, i32 2
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i32 %165, i32* %172, align 4
  br label %173

173:                                              ; preds = %154, %147, %144, %134
  %174 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %175 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %178, label %208

178:                                              ; preds = %173
  %179 = load %struct.dvb_usb_adapter_fe_properties*, %struct.dvb_usb_adapter_fe_properties** %10, align 8
  %180 = getelementptr inbounds %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* @GFP_KERNEL, align 4
  %183 = call i8* @kzalloc(i64 %181, i32 %182)
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %186 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %185, i32 0, i32 2
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  store i32* %184, i32** %191, align 8
  %192 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %193 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %192, i32 0, i32 2
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %207

201:                                              ; preds = %178
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %202, i32 %203)
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %310

207:                                              ; preds = %178
  br label %208

208:                                              ; preds = %207, %173
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %41

212:                                              ; preds = %41
  %213 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %214 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %216, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %212
  %219 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %220 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* @GFP_KERNEL, align 4
  %224 = call i8* @kzalloc(i64 %222, i32 %223)
  %225 = bitcast i8* %224 to i32*
  %226 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %227 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %226, i32 0, i32 3
  store i32* %225, i32** %227, align 8
  %228 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %229 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  %231 = icmp eq i32* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %218
  %233 = load i32, i32* %8, align 4
  %234 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @ENOMEM, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %3, align 4
  br label %310

237:                                              ; preds = %218
  br label %238

238:                                              ; preds = %237, %212
  %239 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %240 = call i32 @dvb_usb_adapter_stream_init(%struct.dvb_usb_adapter* %239)
  store i32 %240, i32* %7, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %238
  %243 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %244 = load i16*, i16** %5, align 8
  %245 = call i32 @dvb_usb_adapter_dvb_init(%struct.dvb_usb_adapter* %243, i16* %244)
  store i32 %245, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %242
  %248 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %249 = call i32 @dvb_usb_adapter_frontend_init(%struct.dvb_usb_adapter* %248)
  store i32 %249, i32* %7, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %247, %242, %238
  %252 = load i32, i32* %7, align 4
  store i32 %252, i32* %3, align 4
  br label %310

253:                                              ; preds = %247
  %254 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %255 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %254, i32 0, i32 2
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i64 1
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %253
  %262 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %263 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  store i32 1, i32* %264, align 4
  br label %265

265:                                              ; preds = %261, %253
  %266 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %267 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 4
  %270 = load i32, i32* @DVB_USB_STATE_DVB, align 4
  %271 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %272 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %265
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %11

278:                                              ; preds = %11
  %279 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %280 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %309

284:                                              ; preds = %278
  %285 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %286 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %285, i32 0, i32 1
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %286, align 8
  %288 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %289 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %288, i32 0, i32 1
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %292 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @usb_sndbulkpipe(%struct.TYPE_11__* %290, i64 %294)
  %296 = call i32 @usb_clear_halt(%struct.TYPE_11__* %287, i32 %295)
  %297 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %298 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %297, i32 0, i32 1
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %298, align 8
  %300 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %301 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %300, i32 0, i32 1
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %304 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @usb_rcvbulkpipe(%struct.TYPE_11__* %302, i64 %306)
  %308 = call i32 @usb_clear_halt(%struct.TYPE_11__* %299, i32 %307)
  br label %309

309:                                              ; preds = %284, %278
  store i32 0, i32* %3, align 4
  br label %310

310:                                              ; preds = %309, %251, %232, %201, %70
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @dvb_usb_adapter_stream_init(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dvb_usb_adapter_dvb_init(%struct.dvb_usb_adapter*, i16*) #1

declare dso_local i32 @dvb_usb_adapter_frontend_init(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @usb_clear_halt(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
