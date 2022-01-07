; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_dvb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_dvb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { %struct.TYPE_28__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_34__, %struct.TYPE_34__, %struct.TYPE_35__*, i32, i32, %struct.mantis_hwconfig*, %struct.TYPE_29__* }
%struct.TYPE_28__ = type { %struct.mantis_pci* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_33__, i32*, i32, i32, %struct.mantis_pci* }
%struct.TYPE_33__ = type { i32, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)* }
%struct.TYPE_30__ = type { i32, i64, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 (%struct.TYPE_35__*)* }
%struct.mantis_hwconfig = type { i32 (%struct.mantis_pci*, %struct.TYPE_35__*)* }
%struct.TYPE_29__ = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dvb_register_adapter\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mantis DVB adapter\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Error registering adapter\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@mantis_dvb_start_feed = common dso_local global i32 0, align 4
@mantis_dvb_stop_feed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"dvb_dmx_init\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"dvb_dmx_init failed, ERROR=%d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"dvb_dmxdev_init\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"dvb_dmxdev_init failed, ERROR=%d\00", align 1
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@mantis_dma_xfer = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"!!! NO Frontends found !!!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"FE <NULL>\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"ERROR: Frontend registration failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_dvb_init(%struct.mantis_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca %struct.mantis_hwconfig*, align 8
  %5 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %3, align 8
  %6 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %7 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %6, i32 0, i32 8
  %8 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %7, align 8
  store %struct.mantis_hwconfig* %8, %struct.mantis_hwconfig** %4, align 8
  store i32 -1, i32* %5, align 4
  %9 = load i32, i32* @MANTIS_DEBUG, align 4
  %10 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %9, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %12 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %11, i32 0, i32 0
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %15 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %14, i32 0, i32 9
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 0
  %18 = load i32, i32* @adapter_nr, align 4
  %19 = call i32 @dvb_register_adapter(%struct.TYPE_28__* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @MANTIS_ERROR, align 4
  %24 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %23, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %301

27:                                               ; preds = %1
  %28 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %29 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %30 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  store %struct.mantis_pci* %28, %struct.mantis_pci** %31, align 8
  %32 = load i32, i32* @DMX_TS_FILTERING, align 4
  %33 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %38 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %42 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %43 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 6
  store %struct.mantis_pci* %41, %struct.mantis_pci** %44, align 8
  %45 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %46 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 0
  store i32 256, i32* %47, align 8
  %48 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %49 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 1
  store i32 256, i32* %50, align 4
  %51 = load i32, i32* @mantis_dvb_start_feed, align 4
  %52 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %53 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @mantis_dvb_stop_feed, align 4
  %56 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %57 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 8
  %59 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %60 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* @MANTIS_DEBUG, align 4
  %63 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %62, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %65 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %64, i32 0, i32 1
  %66 = call i32 @dvb_dmx_init(%struct.TYPE_31__* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %27
  %70 = load i32, i32* @MANTIS_ERROR, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %70, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %296

73:                                               ; preds = %27
  %74 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %75 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 0
  store i32 256, i32* %76, align 8
  %77 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %78 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 2
  %80 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %81 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 2
  store %struct.TYPE_33__* %79, %struct.TYPE_33__** %82, align 8
  %83 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %84 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @MANTIS_DEBUG, align 4
  %87 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %86, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %89 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %88, i32 0, i32 2
  %90 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %91 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %90, i32 0, i32 0
  %92 = call i32 @dvb_dmxdev_init(%struct.TYPE_30__* %89, %struct.TYPE_28__* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %73
  %96 = load i32, i32* @MANTIS_ERROR, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %96, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  br label %292

99:                                               ; preds = %73
  %100 = load i32, i32* @DMX_FRONTEND_0, align 4
  %101 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %102 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %105 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 1
  %108 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %107, align 8
  %109 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %110 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 2
  %112 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %113 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %112, i32 0, i32 3
  %114 = call i32 %108(%struct.TYPE_33__* %111, %struct.TYPE_34__* %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %99
  %118 = load i32, i32* @MANTIS_ERROR, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %118, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %288

121:                                              ; preds = %99
  %122 = load i32, i32* @DMX_MEMORY_FE, align 4
  %123 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %124 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  %126 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %127 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 1
  %130 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %129, align 8
  %131 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %132 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 2
  %134 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %135 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %134, i32 0, i32 4
  %136 = call i32 %130(%struct.TYPE_33__* %133, %struct.TYPE_34__* %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %121
  %140 = load i32, i32* @MANTIS_ERROR, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %140, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  br label %276

143:                                              ; preds = %121
  %144 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %145 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 2
  %148 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %147, align 8
  %149 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %150 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 2
  %152 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %153 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %152, i32 0, i32 3
  %154 = call i32 %148(%struct.TYPE_33__* %151, %struct.TYPE_34__* %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %143
  %158 = load i32, i32* @MANTIS_ERROR, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %158, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %264

161:                                              ; preds = %143
  %162 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %163 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %162, i32 0, i32 0
  %164 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %165 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %164, i32 0, i32 6
  %166 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %167 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 2
  %169 = call i32 @dvb_net_init(%struct.TYPE_28__* %163, i32* %165, %struct.TYPE_33__* %168)
  %170 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %171 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %170, i32 0, i32 7
  %172 = load i32, i32* @mantis_dma_xfer, align 4
  %173 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %174 = ptrtoint %struct.mantis_pci* %173 to i64
  %175 = call i32 @tasklet_init(i32* %171, i32 %172, i64 %174)
  %176 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %177 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %176, i32 0, i32 7
  %178 = call i32 @tasklet_disable(i32* %177)
  %179 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %180 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %179, i32 0, i32 8
  %181 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %180, align 8
  %182 = icmp ne %struct.mantis_hwconfig* %181, null
  br i1 %182, label %183, label %242

183:                                              ; preds = %161
  %184 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %4, align 8
  %185 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %184, i32 0, i32 0
  %186 = load i32 (%struct.mantis_pci*, %struct.TYPE_35__*)*, i32 (%struct.mantis_pci*, %struct.TYPE_35__*)** %185, align 8
  %187 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %188 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %189 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %188, i32 0, i32 5
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** %189, align 8
  %191 = call i32 %186(%struct.mantis_pci* %187, %struct.TYPE_35__* %190)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %183
  %195 = load i32, i32* @MANTIS_ERROR, align 4
  %196 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %195, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %243

197:                                              ; preds = %183
  %198 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %199 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %198, i32 0, i32 5
  %200 = load %struct.TYPE_35__*, %struct.TYPE_35__** %199, align 8
  %201 = icmp eq %struct.TYPE_35__* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* @MANTIS_ERROR, align 4
  %206 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %205, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %243

207:                                              ; preds = %197
  %208 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %209 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %208, i32 0, i32 0
  %210 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %211 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %210, i32 0, i32 5
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %211, align 8
  %213 = call i32 @dvb_register_frontend(%struct.TYPE_28__* %209, %struct.TYPE_35__* %212)
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* %5, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %207
  %217 = load i32, i32* @MANTIS_ERROR, align 4
  %218 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %217, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %219 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %220 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %219, i32 0, i32 5
  %221 = load %struct.TYPE_35__*, %struct.TYPE_35__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 0
  %224 = load i32 (%struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*)** %223, align 8
  %225 = icmp ne i32 (%struct.TYPE_35__*)* %224, null
  br i1 %225, label %226, label %237

226:                                              ; preds = %216
  %227 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %228 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %227, i32 0, i32 5
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 0
  %232 = load i32 (%struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*)** %231, align 8
  %233 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %234 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %233, i32 0, i32 5
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %234, align 8
  %236 = call i32 %232(%struct.TYPE_35__* %235)
  br label %237

237:                                              ; preds = %226, %216
  %238 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %239 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %238, i32 0, i32 5
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %239, align 8
  br label %243

240:                                              ; preds = %207
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241, %161
  store i32 0, i32* %2, align 4
  br label %301

243:                                              ; preds = %237, %202, %194
  %244 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %245 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %244, i32 0, i32 7
  %246 = call i32 @tasklet_kill(i32* %245)
  %247 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %248 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %247, i32 0, i32 6
  %249 = call i32 @dvb_net_release(i32* %248)
  %250 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %251 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %250, i32 0, i32 5
  %252 = load %struct.TYPE_35__*, %struct.TYPE_35__** %251, align 8
  %253 = icmp ne %struct.TYPE_35__* %252, null
  br i1 %253, label %254, label %263

254:                                              ; preds = %243
  %255 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %256 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %255, i32 0, i32 5
  %257 = load %struct.TYPE_35__*, %struct.TYPE_35__** %256, align 8
  %258 = call i32 @dvb_unregister_frontend(%struct.TYPE_35__* %257)
  %259 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %260 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %259, i32 0, i32 5
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %260, align 8
  %262 = call i32 @dvb_frontend_detach(%struct.TYPE_35__* %261)
  br label %263

263:                                              ; preds = %254, %243
  br label %264

264:                                              ; preds = %263, %157
  %265 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %266 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %267, i32 0, i32 3
  %269 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %268, align 8
  %270 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %271 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %271, i32 0, i32 2
  %273 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %274 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %273, i32 0, i32 4
  %275 = call i32 %269(%struct.TYPE_33__* %272, %struct.TYPE_34__* %274)
  br label %276

276:                                              ; preds = %264, %139
  %277 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %278 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 3
  %281 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %280, align 8
  %282 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %283 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %283, i32 0, i32 2
  %285 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %286 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %285, i32 0, i32 3
  %287 = call i32 %281(%struct.TYPE_33__* %284, %struct.TYPE_34__* %286)
  br label %288

288:                                              ; preds = %276, %117
  %289 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %290 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %289, i32 0, i32 2
  %291 = call i32 @dvb_dmxdev_release(%struct.TYPE_30__* %290)
  br label %292

292:                                              ; preds = %288, %95
  %293 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %294 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %293, i32 0, i32 1
  %295 = call i32 @dvb_dmx_release(%struct.TYPE_31__* %294)
  br label %296

296:                                              ; preds = %292, %69
  %297 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %298 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %297, i32 0, i32 0
  %299 = call i32 @dvb_unregister_adapter(%struct.TYPE_28__* %298)
  %300 = load i32, i32* %5, align 4
  store i32 %300, i32* %2, align 4
  br label %301

301:                                              ; preds = %296, %242, %22
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_28__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_31__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i32 @dvb_net_init(%struct.TYPE_28__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @dvb_register_frontend(%struct.TYPE_28__*, %struct.TYPE_35__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.TYPE_35__*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_35__*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_30__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_31__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
