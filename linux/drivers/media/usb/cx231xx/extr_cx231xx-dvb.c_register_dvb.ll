; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_register_dvb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_register_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx_dvb = type { %struct.TYPE_28__, %struct.TYPE_27__**, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_33__, %struct.TYPE_33__, i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.cx231xx* }
%struct.TYPE_27__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_32__, i32, i32, %struct.cx231xx_dvb* }
%struct.TYPE_32__ = type { i32, i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)* }
%struct.TYPE_30__ = type { i32, i64, %struct.TYPE_32__* }
%struct.TYPE_33__ = type { i32 }
%struct.module = type { i32 }
%struct.cx231xx = type { i64, i32, i32, i32 }
%struct.device = type { i32 }

@adapter_nr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: dvb_register_adapter failed (errno = %d)\0A\00", align 1
@cx231xx_dvb_bus_ctrl = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: dvb_register_frontend failed (errno = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: 2nd dvb_register_frontend failed (errno = %d)\0A\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@start_feed = common dso_local global i32 0, align 4
@stop_feed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: dvb_dmx_init failed (errno = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: dvb_dmxdev_init failed (errno = %d)\0A\00", align 1
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"%s: add_frontend failed (DMX_FRONTEND_0, errno = %d)\0A\00", align 1
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: add_frontend failed (DMX_MEMORY_FE, errno = %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"%s: connect_frontend failed (errno = %d)\0A\00", align 1
@TUNER_ABSENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx_dvb*, %struct.module*, %struct.cx231xx*, %struct.device*)* @register_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_dvb(%struct.cx231xx_dvb* %0, %struct.module* %1, %struct.cx231xx* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx231xx_dvb*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.cx231xx_dvb* %0, %struct.cx231xx_dvb** %6, align 8
  store %struct.module* %1, %struct.module** %7, align 8
  store %struct.cx231xx* %2, %struct.cx231xx** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  %11 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %12 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %11, i32 0, i32 7
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %15 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %14, i32 0, i32 0
  %16 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.module*, %struct.module** %7, align 8
  %20 = load %struct.device*, %struct.device** %9, align 8
  %21 = load i32, i32* @adapter_nr, align 4
  %22 = call i32 @dvb_register_adapter(%struct.TYPE_28__* %15, i32 %18, %struct.module* %19, %struct.device* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %371

34:                                               ; preds = %4
  %35 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %36 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %35, i32 0, i32 0
  %37 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dvb_register_media_controller(%struct.TYPE_28__* %36, i32 %39)
  %41 = load i8*, i8** @cx231xx_dvb_bus_ctrl, align 8
  %42 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %43 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %42, i32 0, i32 1
  %44 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %44, i64 0
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 0
  store i8* %41, i8** %48, align 8
  %49 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %50 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %49, i32 0, i32 1
  %51 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %51, i64 1
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %52, align 8
  %54 = icmp ne %struct.TYPE_27__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %34
  %56 = load i8*, i8** @cx231xx_dvb_bus_ctrl, align 8
  %57 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %58 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %57, i32 0, i32 1
  %59 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %59, i64 1
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  store i8* %56, i8** %63, align 8
  br label %64

64:                                               ; preds = %55, %34
  %65 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %66 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %67 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 1
  store %struct.cx231xx* %65, %struct.cx231xx** %68, align 8
  %69 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %70 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %69, i32 0, i32 0
  %71 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %72 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %71, i32 0, i32 1
  %73 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %73, i64 0
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %74, align 8
  %76 = call i32 @dvb_register_frontend(%struct.TYPE_28__* %70, %struct.TYPE_27__* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %64
  %80 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %84 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @dev_warn(i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86)
  br label %361

88:                                               ; preds = %64
  %89 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %90 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %89, i32 0, i32 1
  %91 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %91, i64 1
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %92, align 8
  %94 = icmp ne %struct.TYPE_27__* %93, null
  br i1 %94, label %95, label %119

95:                                               ; preds = %88
  %96 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %97 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %96, i32 0, i32 0
  %98 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %99 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %98, i32 0, i32 1
  %100 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %100, i64 1
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = call i32 @dvb_register_frontend(%struct.TYPE_28__* %97, %struct.TYPE_27__* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %108 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %111 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @dev_warn(i32 %109, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  br label %346

115:                                              ; preds = %95
  %116 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %117 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %88
  %120 = load i32, i32* @DMX_TS_FILTERING, align 4
  %121 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %126 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  %129 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %130 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %131 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 5
  store %struct.cx231xx_dvb* %129, %struct.cx231xx_dvb** %132, align 8
  %133 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %134 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 0
  store i32 256, i32* %135, align 8
  %136 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %137 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 1
  store i32 256, i32* %138, align 4
  %139 = load i32, i32* @start_feed, align 4
  %140 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %141 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 4
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @stop_feed, align 4
  %144 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %145 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 3
  store i32 %143, i32* %146, align 8
  %147 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %148 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %147, i32 0, i32 2
  %149 = call i32 @dvb_dmx_init(%struct.TYPE_31__* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %119
  %153 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %154 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %157 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @dev_warn(i32 %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %158, i32 %159)
  br label %325

161:                                              ; preds = %119
  %162 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %163 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 0
  store i32 256, i32* %164, align 8
  %165 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %166 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 2
  %168 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %169 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 2
  store %struct.TYPE_32__* %167, %struct.TYPE_32__** %170, align 8
  %171 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %172 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 1
  store i64 0, i64* %173, align 8
  %174 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %175 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %174, i32 0, i32 3
  %176 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %177 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %176, i32 0, i32 0
  %178 = call i32 @dvb_dmxdev_init(%struct.TYPE_30__* %175, %struct.TYPE_28__* %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %161
  %182 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %183 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %186 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @dev_warn(i32 %184, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %187, i32 %188)
  br label %321

190:                                              ; preds = %161
  %191 = load i32, i32* @DMX_FRONTEND_0, align 4
  %192 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %193 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  %195 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %196 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 1
  %199 = load i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)** %198, align 8
  %200 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %201 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 2
  %203 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %204 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %203, i32 0, i32 4
  %205 = call i32 %199(%struct.TYPE_32__* %202, %struct.TYPE_33__* %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %190
  %209 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %210 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %213 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @dev_warn(i32 %211, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %214, i32 %215)
  br label %317

217:                                              ; preds = %190
  %218 = load i32, i32* @DMX_MEMORY_FE, align 4
  %219 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %220 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 4
  %222 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %223 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 1
  %226 = load i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)** %225, align 8
  %227 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %228 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %228, i32 0, i32 2
  %230 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %231 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %230, i32 0, i32 5
  %232 = call i32 %226(%struct.TYPE_32__* %229, %struct.TYPE_33__* %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %217
  %236 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %237 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %240 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %10, align 4
  %243 = call i32 @dev_warn(i32 %238, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %241, i32 %242)
  br label %305

244:                                              ; preds = %217
  %245 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %246 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 2
  %249 = load i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)** %248, align 8
  %250 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %251 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %251, i32 0, i32 2
  %253 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %254 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %253, i32 0, i32 4
  %255 = call i32 %249(%struct.TYPE_32__* %252, %struct.TYPE_33__* %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %244
  %259 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %260 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %263 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @dev_warn(i32 %261, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %264, i32 %265)
  br label %293

267:                                              ; preds = %244
  %268 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %269 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %268, i32 0, i32 0
  %270 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %271 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %270, i32 0, i32 6
  %272 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %273 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %273, i32 0, i32 2
  %275 = call i32 @dvb_net_init(%struct.TYPE_28__* %269, i32* %271, %struct.TYPE_32__* %274)
  %276 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %277 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %276, i32 0, i32 0
  %278 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %279 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @TUNER_ABSENT, align 8
  %282 = icmp eq i64 %280, %281
  %283 = zext i1 %282 to i32
  %284 = call i32 @dvb_create_media_graph(%struct.TYPE_28__* %277, i32 %283)
  store i32 %284, i32* %10, align 4
  %285 = load i32, i32* %10, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %267
  br label %289

288:                                              ; preds = %267
  store i32 0, i32* %5, align 4
  br label %373

289:                                              ; preds = %287
  %290 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %291 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %290, i32 0, i32 6
  %292 = call i32 @dvb_net_release(i32* %291)
  br label %293

293:                                              ; preds = %289, %258
  %294 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %295 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %296, i32 0, i32 3
  %298 = load i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)** %297, align 8
  %299 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %300 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 2
  %302 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %303 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %302, i32 0, i32 5
  %304 = call i32 %298(%struct.TYPE_32__* %301, %struct.TYPE_33__* %303)
  br label %305

305:                                              ; preds = %293, %235
  %306 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %307 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 3
  %310 = load i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_32__*, %struct.TYPE_33__*)** %309, align 8
  %311 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %312 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %312, i32 0, i32 2
  %314 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %315 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %314, i32 0, i32 4
  %316 = call i32 %310(%struct.TYPE_32__* %313, %struct.TYPE_33__* %315)
  br label %317

317:                                              ; preds = %305, %208
  %318 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %319 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %318, i32 0, i32 3
  %320 = call i32 @dvb_dmxdev_release(%struct.TYPE_30__* %319)
  br label %321

321:                                              ; preds = %317, %181
  %322 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %323 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %322, i32 0, i32 2
  %324 = call i32 @dvb_dmx_release(%struct.TYPE_31__* %323)
  br label %325

325:                                              ; preds = %321, %152
  %326 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %327 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %326, i32 0, i32 1
  %328 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %328, i64 1
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %329, align 8
  %331 = icmp ne %struct.TYPE_27__* %330, null
  br i1 %331, label %332, label %339

332:                                              ; preds = %325
  %333 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %334 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %333, i32 0, i32 1
  %335 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %335, i64 1
  %337 = load %struct.TYPE_27__*, %struct.TYPE_27__** %336, align 8
  %338 = call i32 @dvb_unregister_frontend(%struct.TYPE_27__* %337)
  br label %339

339:                                              ; preds = %332, %325
  %340 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %341 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %340, i32 0, i32 1
  %342 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %342, i64 0
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %343, align 8
  %345 = call i32 @dvb_unregister_frontend(%struct.TYPE_27__* %344)
  br label %346

346:                                              ; preds = %339, %106
  %347 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %348 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %347, i32 0, i32 1
  %349 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %349, i64 1
  %351 = load %struct.TYPE_27__*, %struct.TYPE_27__** %350, align 8
  %352 = icmp ne %struct.TYPE_27__* %351, null
  br i1 %352, label %353, label %360

353:                                              ; preds = %346
  %354 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %355 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %354, i32 0, i32 1
  %356 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %356, i64 1
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** %357, align 8
  %359 = call i32 @dvb_frontend_detach(%struct.TYPE_27__* %358)
  br label %360

360:                                              ; preds = %353, %346
  br label %361

361:                                              ; preds = %360, %79
  %362 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %363 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %362, i32 0, i32 1
  %364 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %364, i64 0
  %366 = load %struct.TYPE_27__*, %struct.TYPE_27__** %365, align 8
  %367 = call i32 @dvb_frontend_detach(%struct.TYPE_27__* %366)
  %368 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %6, align 8
  %369 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %368, i32 0, i32 0
  %370 = call i32 @dvb_unregister_adapter(%struct.TYPE_28__* %369)
  br label %371

371:                                              ; preds = %361, %25
  %372 = load i32, i32* %10, align 4
  store i32 %372, i32* %5, align 4
  br label %373

373:                                              ; preds = %371, %288
  %374 = load i32, i32* %5, align 4
  ret i32 %374
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_28__*, i32, %struct.module*, %struct.device*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @dvb_register_media_controller(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @dvb_register_frontend(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_31__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i32 @dvb_net_init(%struct.TYPE_28__*, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @dvb_create_media_graph(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_30__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_31__*) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.TYPE_27__*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_27__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
