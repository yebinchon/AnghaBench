; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_alloc_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_alloc_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1_adapter = type { i32, i32, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_adapter, i64, i64, i8*, i32, %struct.pt1* }
%struct.dmxdev = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dvb_demux = type { i32, i32, %struct.TYPE_4__, i32*, i32, i32, %struct.pt1_adapter* }
%struct.dvb_adapter = type { %struct.pt1_adapter* }
%struct.pt1 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SEC_VOLTAGE_OFF = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@pt1_start_feed = common dso_local global i32 0, align 4
@pt1_stop_feed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pt1_adapter* (%struct.pt1*)* @pt1_alloc_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pt1_adapter* @pt1_alloc_adapter(%struct.pt1* %0) #0 {
  %2 = alloca %struct.pt1_adapter*, align 8
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca %struct.pt1_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dvb_adapter*, align 8
  %7 = alloca %struct.dvb_demux*, align 8
  %8 = alloca %struct.dmxdev*, align 8
  %9 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pt1_adapter* @kzalloc(i32 120, i32 %10)
  store %struct.pt1_adapter* %11, %struct.pt1_adapter** %4, align 8
  %12 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %13 = icmp ne %struct.pt1_adapter* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %123

17:                                               ; preds = %1
  %18 = load %struct.pt1*, %struct.pt1** %3, align 8
  %19 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %19, i32 0, i32 9
  store %struct.pt1* %18, %struct.pt1** %20, align 8
  %21 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %22 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64 @__get_free_page(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %17
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %120

35:                                               ; preds = %17
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %45, i32 0, i32 4
  store %struct.dvb_adapter* %46, %struct.dvb_adapter** %6, align 8
  %47 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %48 = load %struct.dvb_adapter*, %struct.dvb_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %48, i32 0, i32 0
  store %struct.pt1_adapter* %47, %struct.pt1_adapter** %49, align 8
  %50 = load %struct.dvb_adapter*, %struct.dvb_adapter** %6, align 8
  %51 = load i32, i32* @DRIVER_NAME, align 4
  %52 = load i32, i32* @THIS_MODULE, align 4
  %53 = load %struct.pt1*, %struct.pt1** %3, align 8
  %54 = getelementptr inbounds %struct.pt1, %struct.pt1* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* @adapter_nr, align 4
  %58 = call i32 @dvb_register_adapter(%struct.dvb_adapter* %50, i32 %51, i32 %52, i32* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %35
  br label %116

62:                                               ; preds = %35
  %63 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %63, i32 0, i32 3
  store %struct.dvb_demux* %64, %struct.dvb_demux** %7, align 8
  %65 = load i32, i32* @DMX_TS_FILTERING, align 4
  %66 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %69 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %72 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %73 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %72, i32 0, i32 6
  store %struct.pt1_adapter* %71, %struct.pt1_adapter** %73, align 8
  %74 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %75 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %74, i32 0, i32 0
  store i32 256, i32* %75, align 8
  %76 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %77 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %76, i32 0, i32 1
  store i32 256, i32* %77, align 4
  %78 = load i32, i32* @pt1_start_feed, align 4
  %79 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %80 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @pt1_stop_feed, align 4
  %82 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %83 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %85 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %84, i32 0, i32 3
  store i32* null, i32** %85, align 8
  %86 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %87 = call i32 @dvb_dmx_init(%struct.dvb_demux* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %62
  br label %113

91:                                               ; preds = %62
  %92 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %92, i32 0, i32 2
  store %struct.dmxdev* %93, %struct.dmxdev** %8, align 8
  %94 = load %struct.dmxdev*, %struct.dmxdev** %8, align 8
  %95 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %94, i32 0, i32 0
  store i32 256, i32* %95, align 8
  %96 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %97 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %96, i32 0, i32 2
  %98 = load %struct.dmxdev*, %struct.dmxdev** %8, align 8
  %99 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %98, i32 0, i32 2
  store %struct.TYPE_4__* %97, %struct.TYPE_4__** %99, align 8
  %100 = load %struct.dmxdev*, %struct.dmxdev** %8, align 8
  %101 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.dmxdev*, %struct.dmxdev** %8, align 8
  %103 = load %struct.dvb_adapter*, %struct.dvb_adapter** %6, align 8
  %104 = call i32 @dvb_dmxdev_init(%struct.dmxdev* %102, %struct.dvb_adapter* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %91
  br label %110

108:                                              ; preds = %91
  %109 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  store %struct.pt1_adapter* %109, %struct.pt1_adapter** %2, align 8
  br label %126

110:                                              ; preds = %107
  %111 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %112 = call i32 @dvb_dmx_release(%struct.dvb_demux* %111)
  br label %113

113:                                              ; preds = %110, %90
  %114 = load %struct.dvb_adapter*, %struct.dvb_adapter** %6, align 8
  %115 = call i32 @dvb_unregister_adapter(%struct.dvb_adapter* %114)
  br label %116

116:                                              ; preds = %113, %61
  %117 = load i8*, i8** %5, align 8
  %118 = ptrtoint i8* %117 to i64
  %119 = call i32 @free_page(i64 %118)
  br label %120

120:                                              ; preds = %116, %32
  %121 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %122 = call i32 @kfree(%struct.pt1_adapter* %121)
  br label %123

123:                                              ; preds = %120, %14
  %124 = load i32, i32* %9, align 4
  %125 = call %struct.pt1_adapter* @ERR_PTR(i32 %124)
  store %struct.pt1_adapter* %125, %struct.pt1_adapter** %2, align 8
  br label %126

126:                                              ; preds = %123, %108
  %127 = load %struct.pt1_adapter*, %struct.pt1_adapter** %2, align 8
  ret %struct.pt1_adapter* %127
}

declare dso_local %struct.pt1_adapter* @kzalloc(i32, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @dvb_register_adapter(%struct.dvb_adapter*, i32, i32, i32*, i32) #1

declare dso_local i32 @dvb_dmx_init(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.dmxdev*, %struct.dvb_adapter*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.dvb_adapter*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.pt1_adapter*) #1

declare dso_local %struct.pt1_adapter* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
