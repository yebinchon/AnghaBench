; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_dvb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_dvb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_25__, %struct.TYPE_18__, %struct.TYPE_17__, i32, i32, %struct.TYPE_23__*, %struct.TYPE_22__, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32, %struct.dvb_usb_adapter* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_16__, i32*, i32, i32, %struct.dvb_usb_adapter* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__, %struct.TYPE_20__*, i32, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64 (%struct.TYPE_24__*, i32)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"dvb_register_adapter failed: error %d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"dvb_usb_media_device_init failed: error %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"MAC address: %pM\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"MAC address reading failed.\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@dvb_usb_start_feed = common dso_local global i32 0, align 4
@dvb_usb_stop_feed = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"dvb_dmx_init failed: error %d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"dvb_dmxdev_init failed: error %d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"dvb_net_init failed: error %d\00", align 1
@DVB_USB_ADAP_STATE_DVB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_adapter_dvb_init(%struct.dvb_usb_adapter* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i16* %1, i16** %5, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 0
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 7
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 7
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 7
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i16*, i16** %5, align 8
  %29 = call i32 @dvb_register_adapter(%struct.TYPE_25__* %9, i32 %16, i32 %21, i32* %27, i16* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @deb_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %218

35:                                               ; preds = %2
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %37 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  store %struct.dvb_usb_adapter* %36, %struct.dvb_usb_adapter** %39, align 8
  %40 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %41 = call i32 @dvb_usb_media_device_init(%struct.dvb_usb_adapter* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @deb_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %214

47:                                               ; preds = %35
  %48 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %48, i32 0, i32 7
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_24__*, i32)*, i64 (%struct.TYPE_24__*, i32)** %52, align 8
  %54 = icmp ne i64 (%struct.TYPE_24__*, i32)* %53, null
  br i1 %54, label %55, label %80

55:                                               ; preds = %47
  %56 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %56, i32 0, i32 7
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i64 (%struct.TYPE_24__*, i32)*, i64 (%struct.TYPE_24__*, i32)** %60, align 8
  %62 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %62, i32 0, i32 7
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 %61(%struct.TYPE_24__* %64, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %55
  %72 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %79

77:                                               ; preds = %55
  %78 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %71
  br label %80

80:                                               ; preds = %79, %47
  %81 = load i32, i32* @DMX_TS_FILTERING, align 4
  %82 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %89 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 6
  store %struct.dvb_usb_adapter* %88, %struct.dvb_usb_adapter** %91, align 8
  %92 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %129, %80
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %95
  %103 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %107, i32 0, i32 5
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %106, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %102
  %117 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %117, i32 0, i32 5
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %126 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  br label %128

128:                                              ; preds = %116, %102
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %95

132:                                              ; preds = %95
  %133 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %134 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  store i64 %136, i64* %139, align 8
  %140 = load i32, i32* @dvb_usb_start_feed, align 4
  %141 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %142 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 5
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* @dvb_usb_stop_feed, align 4
  %145 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %146 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 4
  store i32 %144, i32* %147, align 8
  %148 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 3
  store i32* null, i32** %150, align 8
  %151 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %152 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %151, i32 0, i32 1
  %153 = call i32 @dvb_dmx_init(%struct.TYPE_18__* %152)
  store i32 %153, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %132
  %156 = load i32, i32* %7, align 4
  %157 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  br label %211

158:                                              ; preds = %132
  %159 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %160 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %164 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  %166 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %167 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 2
  %169 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %170 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  store %struct.TYPE_16__* %168, %struct.TYPE_16__** %171, align 8
  %172 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %173 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %176 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %175, i32 0, i32 2
  %177 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %178 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %177, i32 0, i32 0
  %179 = call i32 @dvb_dmxdev_init(%struct.TYPE_17__* %176, %struct.TYPE_25__* %178)
  store i32 %179, i32* %7, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %158
  %182 = load i32, i32* %7, align 4
  %183 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  br label %207

184:                                              ; preds = %158
  %185 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %186 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %185, i32 0, i32 0
  %187 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %188 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %187, i32 0, i32 4
  %189 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %190 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  %192 = call i32 @dvb_net_init(%struct.TYPE_25__* %186, i32* %188, %struct.TYPE_16__* %191)
  store i32 %192, i32* %7, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  br label %203

197:                                              ; preds = %184
  %198 = load i32, i32* @DVB_USB_ADAP_STATE_DVB, align 4
  %199 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %200 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  store i32 0, i32* %3, align 4
  br label %220

203:                                              ; preds = %194
  %204 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %205 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %204, i32 0, i32 2
  %206 = call i32 @dvb_dmxdev_release(%struct.TYPE_17__* %205)
  br label %207

207:                                              ; preds = %203, %181
  %208 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %209 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %208, i32 0, i32 1
  %210 = call i32 @dvb_dmx_release(%struct.TYPE_18__* %209)
  br label %211

211:                                              ; preds = %207, %155
  %212 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %213 = call i32 @dvb_usb_media_device_unregister(%struct.dvb_usb_adapter* %212)
  br label %214

214:                                              ; preds = %211, %44
  %215 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %216 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %215, i32 0, i32 0
  %217 = call i32 @dvb_unregister_adapter(%struct.TYPE_25__* %216)
  br label %218

218:                                              ; preds = %214, %32
  %219 = load i32, i32* %7, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %218, %197
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_25__*, i32, i32, i32*, i16*) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @dvb_usb_media_device_init(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_18__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_17__*, %struct.TYPE_25__*) #1

declare dso_local i32 @dvb_net_init(%struct.TYPE_25__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_17__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_18__*) #1

declare dso_local i32 @dvb_usb_media_device_unregister(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
