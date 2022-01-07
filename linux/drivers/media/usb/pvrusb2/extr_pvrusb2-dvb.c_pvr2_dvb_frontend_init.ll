; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_dvb_adapter = type { i32*, i32, %struct.TYPE_14__**, %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*)* }
%struct.TYPE_15__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.pvr2_dvb_props* }
%struct.pvr2_dvb_props = type { i64 (%struct.pvr2_dvb_adapter.0*)*, i64 (%struct.pvr2_dvb_adapter.1*)* }
%struct.pvr2_dvb_adapter.0 = type opaque
%struct.pvr2_dvb_adapter.1 = type opaque
%struct.TYPE_16__ = type { i32 }

@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fe_props not defined!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PVR2_CVAL_INPUT_DTV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to grab control of dtv input (code=%d)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"frontend_attach not defined!\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"frontend registration failed!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PVR2_TRACE_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"transferring fe[%d] ts_bus_ctrl() to pvr2_dvb_bus_ctrl()\00", align 1
@pvr2_dvb_bus_ctrl = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"no frontend was attached!\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"tuner attach failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_dvb_adapter*)* @pvr2_dvb_frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_dvb_frontend_init(%struct.pvr2_dvb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_dvb_adapter*, align 8
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca %struct.pvr2_dvb_props*, align 8
  %6 = alloca i32, align 4
  store %struct.pvr2_dvb_adapter* %0, %struct.pvr2_dvb_adapter** %3, align 8
  %7 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  store %struct.pvr2_hdw* %10, %struct.pvr2_hdw** %4, align 8
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %14, align 8
  store %struct.pvr2_dvb_props* %15, %struct.pvr2_dvb_props** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %17 = icmp eq %struct.pvr2_dvb_props* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %20 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %301

23:                                               ; preds = %1
  %24 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %24, i32 0, i32 3
  %26 = load i32, i32* @PVR2_CVAL_INPUT_DTV, align 4
  %27 = shl i32 1, %26
  %28 = call i32 @pvr2_channel_limit_inputs(%struct.TYPE_15__* %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %301

36:                                               ; preds = %23
  %37 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %38 = getelementptr inbounds %struct.pvr2_dvb_props, %struct.pvr2_dvb_props* %37, i32 0, i32 0
  %39 = load i64 (%struct.pvr2_dvb_adapter.0*)*, i64 (%struct.pvr2_dvb_adapter.0*)** %38, align 8
  %40 = icmp eq i64 (%struct.pvr2_dvb_adapter.0*)* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %43 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %250

46:                                               ; preds = %36
  %47 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %48 = getelementptr inbounds %struct.pvr2_dvb_props, %struct.pvr2_dvb_props* %47, i32 0, i32 0
  %49 = load i64 (%struct.pvr2_dvb_adapter.0*)*, i64 (%struct.pvr2_dvb_adapter.0*)** %48, align 8
  %50 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %51 = bitcast %struct.pvr2_dvb_adapter* %50 to %struct.pvr2_dvb_adapter.0*
  %52 = call i64 %49(%struct.pvr2_dvb_adapter.0* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %121

54:                                               ; preds = %46
  %55 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %55, i32 0, i32 2
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %57, i64 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = icmp ne %struct.TYPE_14__* %59, null
  br i1 %60, label %61, label %121

61:                                               ; preds = %54
  %62 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %62, i32 0, i32 4
  %64 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %64, i32 0, i32 2
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %66, i64 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call i64 @dvb_register_frontend(%struct.TYPE_16__* %63, %struct.TYPE_14__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %73 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %273

76:                                               ; preds = %61
  %77 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %77, i32 0, i32 2
  %79 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %79, i64 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %84, align 8
  %86 = icmp ne i32 (%struct.TYPE_14__*)* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %76
  %88 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %88, i32 0, i32 2
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %90, i64 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %95, align 8
  %97 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %97, i32 0, i32 2
  %99 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %99, i64 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = call i32 %96(%struct.TYPE_14__* %101)
  br label %103

103:                                              ; preds = %87, %76
  %104 = load i32, i32* @PVR2_TRACE_INFO, align 4
  %105 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %105, i32 0, i32 2
  %107 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %107, i64 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %104, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i8*, i8** @pvr2_dvb_bus_ctrl, align 8
  %114 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %114, i32 0, i32 2
  %116 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %116, i64 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i8* %113, i8** %120, align 8
  br label %127

121:                                              ; preds = %54, %46
  %122 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %123 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %301

127:                                              ; preds = %103
  %128 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %129 = getelementptr inbounds %struct.pvr2_dvb_props, %struct.pvr2_dvb_props* %128, i32 0, i32 1
  %130 = load i64 (%struct.pvr2_dvb_adapter.1*)*, i64 (%struct.pvr2_dvb_adapter.1*)** %129, align 8
  %131 = icmp ne i64 (%struct.pvr2_dvb_adapter.1*)* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %134 = getelementptr inbounds %struct.pvr2_dvb_props, %struct.pvr2_dvb_props* %133, i32 0, i32 1
  %135 = load i64 (%struct.pvr2_dvb_adapter.1*)*, i64 (%struct.pvr2_dvb_adapter.1*)** %134, align 8
  %136 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %137 = bitcast %struct.pvr2_dvb_adapter* %136 to %struct.pvr2_dvb_adapter.1*
  %138 = call i64 %135(%struct.pvr2_dvb_adapter.1* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %142 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %266

145:                                              ; preds = %132, %127
  %146 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %147 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %146, i32 0, i32 2
  %148 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %148, i64 1
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = icmp ne %struct.TYPE_14__* %150, null
  br i1 %151, label %152, label %249

152:                                              ; preds = %145
  %153 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %153, i32 0, i32 2
  %155 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %155, i64 1
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %160 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %159, i32 0, i32 2
  %161 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %161, i64 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %167 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %166, i32 0, i32 2
  %168 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %168, i64 1
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  store i32 %165, i32* %171, align 8
  %172 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %172, i32 0, i32 2
  %174 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %174, i64 1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %180 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %179, i32 0, i32 2
  %181 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %181, i64 0
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = call i32 @memcpy(i32* %178, i32* %185, i32 4)
  %187 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %188 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %187, i32 0, i32 4
  %189 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %190 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %189, i32 0, i32 2
  %191 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %191, i64 1
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = call i64 @dvb_register_frontend(%struct.TYPE_16__* %188, %struct.TYPE_14__* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %152
  %197 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %198 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %199 = load i32, i32* @ENODEV, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %6, align 4
  br label %255

201:                                              ; preds = %152
  %202 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %203 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  %205 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %206 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %205, i32 0, i32 2
  %207 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %207, i64 1
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %212, align 8
  %214 = icmp ne i32 (%struct.TYPE_14__*)* %213, null
  br i1 %214, label %215, label %231

215:                                              ; preds = %201
  %216 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %216, i32 0, i32 2
  %218 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %218, i64 1
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %223, align 8
  %225 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %226 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %225, i32 0, i32 2
  %227 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %227, i64 1
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = call i32 %224(%struct.TYPE_14__* %229)
  br label %231

231:                                              ; preds = %215, %201
  %232 = load i32, i32* @PVR2_TRACE_INFO, align 4
  %233 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %234 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %233, i32 0, i32 2
  %235 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %235, i64 1
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %232, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %239)
  %241 = load i8*, i8** @pvr2_dvb_bus_ctrl, align 8
  %242 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %243 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %242, i32 0, i32 2
  %244 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %244, i64 1
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  store i8* %241, i8** %248, align 8
  br label %249

249:                                              ; preds = %231, %145
  br label %250

250:                                              ; preds = %249, %41
  %251 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %252 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %251, i32 0, i32 3
  %253 = call i32 @pvr2_channel_limit_inputs(%struct.TYPE_15__* %252, i32 0)
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %2, align 4
  br label %301

255:                                              ; preds = %196
  %256 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %257 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %256, i32 0, i32 2
  %258 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %258, i64 1
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = call i32 @dvb_frontend_detach(%struct.TYPE_14__* %260)
  %262 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %263 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %262, i32 0, i32 2
  %264 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %264, i64 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %265, align 8
  br label %266

266:                                              ; preds = %255, %140
  %267 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %268 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %267, i32 0, i32 2
  %269 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %269, i64 0
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %270, align 8
  %272 = call i32 @dvb_unregister_frontend(%struct.TYPE_14__* %271)
  br label %273

273:                                              ; preds = %266, %71
  %274 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %275 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %274, i32 0, i32 2
  %276 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %276, i64 0
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %277, align 8
  %279 = call i32 @dvb_frontend_detach(%struct.TYPE_14__* %278)
  %280 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %281 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %280, i32 0, i32 2
  %282 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %282, i64 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %283, align 8
  %284 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %285 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @dvb_module_release(i32 %286)
  %288 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %289 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @dvb_module_release(i32 %292)
  %294 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %295 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @dvb_module_release(i32 %298)
  %300 = load i32, i32* %6, align 4
  store i32 %300, i32* %2, align 4
  br label %301

301:                                              ; preds = %273, %250, %121, %31, %18
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @pvr2_channel_limit_inputs(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @dvb_register_frontend(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_14__*) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.TYPE_14__*) #1

declare dso_local i32 @dvb_module_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
