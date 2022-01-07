; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dvb_input_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dvb_input_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i64, i64, i32, %struct.TYPE_21__*, %struct.ddb_dvb* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.ddb_ids }
%struct.TYPE_18__ = type { i32 }
%struct.ddb_ids = type { i32 }
%struct.ddb_dvb = type { i32, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_17__, i32, %struct.TYPE_23__, %struct.dvb_demux, %struct.TYPE_23__, %struct.dvb_adapter* }
%struct.TYPE_16__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* }
%struct.dvb_demux = type { i32, i32, %struct.TYPE_22__, i32, i32, %struct.ddb_input* }
%struct.TYPE_23__ = type { i32 }
%struct.dvb_adapter = type { i32 }

@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@start_feed = common dso_local global i32 0, align 4
@stop_feed = common dso_local global i32 0, align 4
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@TS_QUIRK_ALT_OSC = common dso_local global i32 0, align 4
@TS_QUIRK_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tuner attach failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*)* @dvb_input_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_input_attach(%struct.ddb_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb_dvb*, align 8
  %6 = alloca %struct.ddb_port*, align 8
  %7 = alloca %struct.dvb_adapter*, align 8
  %8 = alloca %struct.dvb_demux*, align 8
  %9 = alloca %struct.ddb_ids*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %14 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %13, i32 0, i32 1
  %15 = load %struct.ddb_port*, %struct.ddb_port** %14, align 8
  %16 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %15, i32 0, i32 4
  %17 = load %struct.ddb_dvb*, %struct.ddb_dvb** %16, align 8
  %18 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %19 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %17, i64 %22
  store %struct.ddb_dvb* %23, %struct.ddb_dvb** %5, align 8
  %24 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %25 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %24, i32 0, i32 1
  %26 = load %struct.ddb_port*, %struct.ddb_port** %25, align 8
  store %struct.ddb_port* %26, %struct.ddb_port** %6, align 8
  %27 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %28 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %27, i32 0, i32 8
  %29 = load %struct.dvb_adapter*, %struct.dvb_adapter** %28, align 8
  store %struct.dvb_adapter* %29, %struct.dvb_adapter** %7, align 8
  %30 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %31 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %30, i32 0, i32 6
  store %struct.dvb_demux* %31, %struct.dvb_demux** %8, align 8
  %32 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %33 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %32, i32 0, i32 1
  %34 = load %struct.ddb_port*, %struct.ddb_port** %33, align 8
  %35 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %34, i32 0, i32 3
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %40 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %39, i32 0, i32 1
  %41 = load %struct.ddb_port*, %struct.ddb_port** %40, align 8
  %42 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  store %struct.ddb_ids* %45, %struct.ddb_ids** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %46 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %47 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %1
  %51 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %52 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 133
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %57 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 134
  br i1 %59, label %60, label %68

60:                                               ; preds = %55, %50
  %61 = load %struct.ddb_ids*, %struct.ddb_ids** %9, align 8
  %62 = getelementptr inbounds %struct.ddb_ids, %struct.ddb_ids* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 16777215
  %65 = icmp sge i32 %64, 65543
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %60
  br label %68

68:                                               ; preds = %67, %55, %1
  %69 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %70 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %72 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %73 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %72, i32 0, i32 5
  store %struct.ddb_input* %71, %struct.ddb_input** %73, align 8
  %74 = load i32, i32* @DMX_TS_FILTERING, align 4
  %75 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %80 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @start_feed, align 4
  %83 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %84 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @stop_feed, align 4
  %86 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %87 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %89 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %88, i32 0, i32 0
  store i32 256, i32* %89, align 8
  %90 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %91 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %90, i32 0, i32 1
  store i32 256, i32* %91, align 4
  %92 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %93 = call i32 @dvb_dmx_init(%struct.dvb_demux* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %68
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %463

98:                                               ; preds = %68
  %99 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %100 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %99, i32 0, i32 0
  store i32 16, i32* %100, align 8
  %101 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %102 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store i32 256, i32* %103, align 8
  %104 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %105 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %104, i32 0, i32 2
  %106 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %107 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  store %struct.TYPE_22__* %105, %struct.TYPE_22__** %108, align 8
  %109 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %110 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %109, i32 0, i32 3
  %111 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %112 = call i32 @dvb_dmxdev_init(%struct.TYPE_17__* %110, %struct.dvb_adapter* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %453

116:                                              ; preds = %98
  %117 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %118 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %117, i32 0, i32 0
  store i32 17, i32* %118, align 8
  %119 = load i32, i32* @DMX_MEMORY_FE, align 4
  %120 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %121 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %124 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 2
  %127 = load i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)** %126, align 8
  %128 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %129 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %129, i32 0, i32 2
  %131 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %132 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %131, i32 0, i32 7
  %133 = call i32 %127(%struct.TYPE_22__* %130, %struct.TYPE_23__* %132)
  %134 = load i32, i32* @DMX_FRONTEND_0, align 4
  %135 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %136 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  %138 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %139 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 2
  %142 = load i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)** %141, align 8
  %143 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %144 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %144, i32 0, i32 2
  %146 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %147 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %146, i32 0, i32 5
  %148 = call i32 %142(%struct.TYPE_22__* %145, %struct.TYPE_23__* %147)
  %149 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %150 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 1
  %152 = load i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)** %151, align 8
  %153 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %154 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %153, i32 0, i32 2
  %155 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %156 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %155, i32 0, i32 5
  %157 = call i32 %152(%struct.TYPE_22__* %154, %struct.TYPE_23__* %156)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %116
  br label %453

161:                                              ; preds = %116
  %162 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %163 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %162, i32 0, i32 0
  store i32 18, i32* %163, align 8
  %164 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %165 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %166 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %165, i32 0, i32 4
  %167 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %168 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %169, align 8
  %171 = call i32 @dvb_net_init(%struct.dvb_adapter* %164, i32* %166, %struct.TYPE_22__* %170)
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* %4, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %161
  br label %453

175:                                              ; preds = %161
  %176 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %177 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %176, i32 0, i32 0
  store i32 32, i32* %177, align 8
  %178 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %179 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %178, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %179, align 8
  %180 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %181 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %180, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %181, align 8
  %182 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %183 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  switch i32 %184, label %368 [
    i32 128, label %185
    i32 136, label %191
    i32 132, label %202
    i32 135, label %213
    i32 133, label %225
    i32 134, label %237
    i32 137, label %249
    i32 138, label %260
    i32 143, label %274
    i32 139, label %298
    i32 141, label %298
    i32 130, label %298
    i32 144, label %337
    i32 140, label %338
    i32 142, label %338
    i32 131, label %338
    i32 145, label %353
    i32 129, label %359
  ]

185:                                              ; preds = %175
  %186 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %187 = call i32 @ddb_fe_attach_mxl5xx(%struct.ddb_input* %186)
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %453

190:                                              ; preds = %185
  br label %369

191:                                              ; preds = %175
  %192 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %193 = call i32 @demod_attach_stv0900(%struct.ddb_input* %192, i32 0)
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %453

196:                                              ; preds = %191
  %197 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %198 = call i32 @tuner_attach_stv6110(%struct.ddb_input* %197, i32 0)
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %426

201:                                              ; preds = %196
  br label %369

202:                                              ; preds = %175
  %203 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %204 = call i32 @demod_attach_stv0900(%struct.ddb_input* %203, i32 1)
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %453

207:                                              ; preds = %202
  %208 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %209 = call i32 @tuner_attach_stv6110(%struct.ddb_input* %208, i32 1)
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %426

212:                                              ; preds = %207
  br label %369

213:                                              ; preds = %175
  %214 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @demod_attach_stv0910(%struct.ddb_input* %214, i32 0, i32 %215)
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %453

219:                                              ; preds = %213
  %220 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %221 = call i32 @tuner_attach_stv6111(%struct.ddb_input* %220, i32 0)
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %426

224:                                              ; preds = %219
  br label %369

225:                                              ; preds = %175
  %226 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @demod_attach_stv0910(%struct.ddb_input* %226, i32 1, i32 %227)
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %453

231:                                              ; preds = %225
  %232 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %233 = call i32 @tuner_attach_stv6111(%struct.ddb_input* %232, i32 1)
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  br label %426

236:                                              ; preds = %231
  br label %369

237:                                              ; preds = %175
  %238 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @demod_attach_stv0910(%struct.ddb_input* %238, i32 0, i32 %239)
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %453

243:                                              ; preds = %237
  %244 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %245 = call i32 @tuner_attach_stv6111(%struct.ddb_input* %244, i32 1)
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %426

248:                                              ; preds = %243
  br label %369

249:                                              ; preds = %175
  %250 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %251 = call i32 @demod_attach_drxk(%struct.ddb_input* %250)
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  br label %453

254:                                              ; preds = %249
  %255 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %256 = call i32 @tuner_attach_tda18271(%struct.ddb_input* %255)
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  br label %426

259:                                              ; preds = %254
  br label %369

260:                                              ; preds = %175
  %261 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %262 = call i32 @demod_attach_stv0367(%struct.ddb_input* %261)
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %453

265:                                              ; preds = %260
  %266 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %267 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %268 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @tuner_attach_tda18212(%struct.ddb_input* %266, i32 %269)
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  br label %426

273:                                              ; preds = %265
  br label %369

274:                                              ; preds = %175
  %275 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %276 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %275, i32 0, i32 1
  %277 = load %struct.ddb_port*, %struct.ddb_port** %276, align 8
  %278 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %277, i32 0, i32 3
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %280, align 8
  %282 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %283 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %282, i32 0, i32 1
  %284 = load %struct.ddb_port*, %struct.ddb_port** %283, align 8
  %285 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @TS_QUIRK_ALT_OSC, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %274
  store i32 0, i32* %11, align 4
  br label %297

296:                                              ; preds = %274
  store i32 1, i32* %11, align 4
  br label %297

297:                                              ; preds = %296, %295
  br label %298

298:                                              ; preds = %175, %175, %175, %297
  %299 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %300 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %299, i32 0, i32 1
  %301 = load %struct.ddb_port*, %struct.ddb_port** %300, align 8
  %302 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %301, i32 0, i32 3
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %304, align 8
  %306 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %307 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %306, i32 0, i32 1
  %308 = load %struct.ddb_port*, %struct.ddb_port** %307, align 8
  %309 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @TS_QUIRK_SERIAL, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %298
  store i32 0, i32* %10, align 4
  br label %321

320:                                              ; preds = %298
  store i32 1, i32* %10, align 4
  br label %321

321:                                              ; preds = %320, %319
  %322 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* %11, align 4
  %325 = call i32 @demod_attach_cxd28xx(%struct.ddb_input* %322, i32 %323, i32 %324)
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %321
  br label %453

328:                                              ; preds = %321
  %329 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %330 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %331 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @tuner_attach_tda18212(%struct.ddb_input* %329, i32 %332)
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %328
  br label %426

336:                                              ; preds = %328
  br label %369

337:                                              ; preds = %175
  store i32 1, i32* %11, align 4
  br label %338

338:                                              ; preds = %175, %175, %175, %337
  %339 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %340 = load i32, i32* %11, align 4
  %341 = call i32 @demod_attach_cxd28xx(%struct.ddb_input* %339, i32 0, i32 %340)
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %338
  br label %453

344:                                              ; preds = %338
  %345 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %346 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %347 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @tuner_attach_tda18212(%struct.ddb_input* %345, i32 %348)
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %344
  br label %426

352:                                              ; preds = %344
  br label %369

353:                                              ; preds = %175
  %354 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %355 = call i32 @demod_attach_dummy(%struct.ddb_input* %354)
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %353
  br label %453

358:                                              ; preds = %353
  br label %369

359:                                              ; preds = %175
  %360 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %361 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %362 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @ddb_fe_attach_mci(%struct.ddb_input* %360, i32 %363)
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %359
  br label %453

367:                                              ; preds = %359
  br label %369

368:                                              ; preds = %175
  store i32 0, i32* %2, align 4
  br label %463

369:                                              ; preds = %367, %358, %352, %336, %273, %259, %248, %236, %224, %212, %201, %190
  %370 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %371 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %370, i32 0, i32 0
  store i32 48, i32* %371, align 8
  %372 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %373 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %372, i32 0, i32 1
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %373, align 8
  %375 = icmp ne %struct.TYPE_16__* %374, null
  br i1 %375, label %376, label %423

376:                                              ; preds = %369
  %377 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %378 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %379 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %378, i32 0, i32 1
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %379, align 8
  %381 = call i64 @dvb_register_frontend(%struct.dvb_adapter* %377, %struct.TYPE_16__* %380)
  %382 = icmp slt i64 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %376
  br label %453

384:                                              ; preds = %376
  %385 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %386 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %385, i32 0, i32 2
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %386, align 8
  %388 = icmp ne %struct.TYPE_16__* %387, null
  br i1 %388, label %389, label %422

389:                                              ; preds = %384
  %390 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %391 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %392 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %391, i32 0, i32 2
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %392, align 8
  %394 = call i64 @dvb_register_frontend(%struct.dvb_adapter* %390, %struct.TYPE_16__* %393)
  %395 = icmp slt i64 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %389
  %397 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %398 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %397, i32 0, i32 1
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** %398, align 8
  %400 = call i32 @dvb_unregister_frontend(%struct.TYPE_16__* %399)
  br label %453

401:                                              ; preds = %389
  %402 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %403 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %402, i32 0, i32 1
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %408 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %407, i32 0, i32 2
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %409, i32 0, i32 1
  store i32 %406, i32* %410, align 4
  %411 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %412 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %411, i32 0, i32 2
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %414, i32 0, i32 0
  %416 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %417 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %416, i32 0, i32 1
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i32 0, i32 0
  %421 = call i32 @memcpy(i32* %415, i32* %420, i32 4)
  br label %422

422:                                              ; preds = %401, %384
  br label %423

423:                                              ; preds = %422, %369
  %424 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %425 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %424, i32 0, i32 0
  store i32 49, i32* %425, align 8
  store i32 0, i32* %2, align 4
  br label %463

426:                                              ; preds = %351, %335, %272, %258, %247, %235, %223, %211, %200
  %427 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %428 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %427, i32 0, i32 3
  %429 = load %struct.TYPE_21__*, %struct.TYPE_21__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i32 @dev_err(i32 %431, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %433 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %434 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %433, i32 0, i32 2
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %434, align 8
  %436 = icmp ne %struct.TYPE_16__* %435, null
  br i1 %436, label %437, label %442

437:                                              ; preds = %426
  %438 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %439 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %438, i32 0, i32 2
  %440 = load %struct.TYPE_16__*, %struct.TYPE_16__** %439, align 8
  %441 = call i32 @dvb_frontend_detach(%struct.TYPE_16__* %440)
  br label %442

442:                                              ; preds = %437, %426
  %443 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %444 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %443, i32 0, i32 1
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** %444, align 8
  %446 = icmp ne %struct.TYPE_16__* %445, null
  br i1 %446, label %447, label %452

447:                                              ; preds = %442
  %448 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %449 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %448, i32 0, i32 1
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** %449, align 8
  %451 = call i32 @dvb_frontend_detach(%struct.TYPE_16__* %450)
  br label %452

452:                                              ; preds = %447, %442
  br label %453

453:                                              ; preds = %452, %396, %383, %366, %357, %343, %327, %264, %253, %242, %230, %218, %206, %195, %189, %174, %160, %115
  %454 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %455 = call i32 @dvb_input_detach(%struct.ddb_input* %454)
  %456 = load i32, i32* %4, align 4
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %453
  %459 = load i32, i32* %4, align 4
  store i32 %459, i32* %2, align 4
  br label %463

460:                                              ; preds = %453
  %461 = load i32, i32* @ENODEV, align 4
  %462 = sub nsw i32 0, %461
  store i32 %462, i32* %2, align 4
  br label %463

463:                                              ; preds = %460, %458, %423, %368, %96
  %464 = load i32, i32* %2, align 4
  ret i32 %464
}

declare dso_local i32 @dvb_dmx_init(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_17__*, %struct.dvb_adapter*) #1

declare dso_local i32 @dvb_net_init(%struct.dvb_adapter*, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @ddb_fe_attach_mxl5xx(%struct.ddb_input*) #1

declare dso_local i32 @demod_attach_stv0900(%struct.ddb_input*, i32) #1

declare dso_local i32 @tuner_attach_stv6110(%struct.ddb_input*, i32) #1

declare dso_local i32 @demod_attach_stv0910(%struct.ddb_input*, i32, i32) #1

declare dso_local i32 @tuner_attach_stv6111(%struct.ddb_input*, i32) #1

declare dso_local i32 @demod_attach_drxk(%struct.ddb_input*) #1

declare dso_local i32 @tuner_attach_tda18271(%struct.ddb_input*) #1

declare dso_local i32 @demod_attach_stv0367(%struct.ddb_input*) #1

declare dso_local i32 @tuner_attach_tda18212(%struct.ddb_input*, i32) #1

declare dso_local i32 @demod_attach_cxd28xx(%struct.ddb_input*, i32, i32) #1

declare dso_local i32 @demod_attach_dummy(%struct.ddb_input*) #1

declare dso_local i32 @ddb_fe_attach_mci(%struct.ddb_input*, i32) #1

declare dso_local i64 @dvb_register_frontend(%struct.dvb_adapter*, %struct.TYPE_16__*) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_16__*) #1

declare dso_local i32 @dvb_input_detach(%struct.ddb_input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
