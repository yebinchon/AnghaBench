; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_adapter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_dvb_adapter = type { %struct.TYPE_16__, %struct.TYPE_12__, i32, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { %struct.pvr2_dvb_adapter* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_17__, i32*, i32, i32, %struct.pvr2_dvb_adapter* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"pvrusb2-dvb\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"dvb_register_adapter failed: error %d\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@pvr2_dvb_start_feed = common dso_local global i32 0, align 4
@pvr2_dvb_stop_feed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"dvb_dmx_init failed: error %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"dvb_dmxdev_init failed: error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_dvb_adapter*)* @pvr2_dvb_adapter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_dvb_adapter_init(%struct.pvr2_dvb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_dvb_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.pvr2_dvb_adapter* %0, %struct.pvr2_dvb_adapter** %3, align 8
  %5 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* @THIS_MODULE, align 4
  %8 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* @adapter_nr, align 4
  %16 = call i32 @dvb_register_adapter(%struct.TYPE_16__* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %7, i32* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pvr2_trace(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %112

23:                                               ; preds = %1
  %24 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %25 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store %struct.pvr2_dvb_adapter* %24, %struct.pvr2_dvb_adapter** %27, align 8
  %28 = load i32, i32* @DMX_TS_FILTERING, align 4
  %29 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %38 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 6
  store %struct.pvr2_dvb_adapter* %37, %struct.pvr2_dvb_adapter** %40, align 8
  %41 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 256, i32* %43, align 8
  %44 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i32 256, i32* %46, align 4
  %47 = load i32, i32* @pvr2_dvb_start_feed, align 4
  %48 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @pvr2_dvb_stop_feed, align 4
  %52 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %58, i32 0, i32 1
  %60 = call i32 @dvb_dmx_init(%struct.TYPE_12__* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %23
  %64 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @pvr2_trace(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %108

67:                                               ; preds = %23
  %68 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %80, align 8
  %81 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %84, i32 0, i32 3
  %86 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %86, i32 0, i32 0
  %88 = call i32 @dvb_dmxdev_init(%struct.TYPE_18__* %85, %struct.TYPE_16__* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %67
  %92 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @pvr2_trace(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %104

95:                                               ; preds = %67
  %96 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %96, i32 0, i32 0
  %98 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %98, i32 0, i32 2
  %100 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = call i32 @dvb_net_init(%struct.TYPE_16__* %97, i32* %99, %struct.TYPE_17__* %102)
  store i32 0, i32* %2, align 4
  br label %114

104:                                              ; preds = %91
  %105 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %105, i32 0, i32 1
  %107 = call i32 @dvb_dmx_release(%struct.TYPE_12__* %106)
  br label %108

108:                                              ; preds = %104, %63
  %109 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %109, i32 0, i32 0
  %111 = call i32 @dvb_unregister_adapter(%struct.TYPE_16__* %110)
  br label %112

112:                                              ; preds = %108, %19
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %95
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_16__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_12__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @dvb_net_init(%struct.TYPE_16__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_12__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
