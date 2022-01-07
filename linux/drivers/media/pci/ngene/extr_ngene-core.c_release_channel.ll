; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_release_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_release_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32, i32, i64, %struct.dvb_demux, i32, i32, i32, i32, i32*, i32**, i64, i32*, i32*, i32, i64, %struct.ngene* }
%struct.dvb_demux = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*)* }
%struct.ngene = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene_channel*)* @release_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_channel(%struct.ngene_channel* %0) #0 {
  %2 = alloca %struct.ngene_channel*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca %struct.ngene*, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %2, align 8
  %5 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %5, i32 0, i32 3
  store %struct.dvb_demux* %6, %struct.dvb_demux** %3, align 8
  %7 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %8 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %7, i32 0, i32 15
  %9 = load %struct.ngene*, %struct.ngene** %8, align 8
  store %struct.ngene* %9, %struct.ngene** %4, align 8
  %10 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %11 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %10, i32 0, i32 14
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %16 = call i32 @set_transfer(%struct.ngene_channel* %15, i32 0)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %19 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %18, i32 0, i32 13
  %20 = call i32 @tasklet_kill(i32* %19)
  %21 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %22 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %21, i32 0, i32 12
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %27 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %26, i32 0, i32 12
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dvb_unregister_device(i32* %28)
  %30 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %31 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %30, i32 0, i32 12
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %17
  %33 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %34 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %33, i32 0, i32 11
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %39 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %38, i32 0, i32 11
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dvb_unregister_frontend(i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %44 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %49 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dvb_unregister_frontend(i32* %50)
  %52 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %53 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %47
  %57 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %58 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %57, i32 0, i32 9
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @dvb_module_release(i32* %61)
  %63 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %64 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %63, i32 0, i32 9
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %56, %47
  %68 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %69 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @dvb_frontend_detach(i32* %70)
  %72 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %73 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %72, i32 0, i32 8
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %42
  %75 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %76 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %74
  %80 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %81 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %80, i32 0, i32 7
  %82 = call i32 @dvb_net_release(i32* %81)
  %83 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %85, align 8
  %87 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %88 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %87, i32 0, i32 0
  %89 = call i32 %86(%struct.TYPE_4__* %88)
  %90 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %91 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %92, align 8
  %94 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %94, i32 0, i32 0
  %96 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %97 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %96, i32 0, i32 6
  %98 = call i32 %93(%struct.TYPE_4__* %95, i32* %97)
  %99 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %100 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %101, align 8
  %103 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %104 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %103, i32 0, i32 0
  %105 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %106 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %105, i32 0, i32 5
  %107 = call i32 %102(%struct.TYPE_4__* %104, i32* %106)
  %108 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %109 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %108, i32 0, i32 4
  %110 = call i32 @dvb_dmxdev_release(i32* %109)
  %111 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %112 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %111, i32 0, i32 3
  %113 = call i32 @dvb_dmx_release(%struct.dvb_demux* %112)
  %114 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %115 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  br label %116

116:                                              ; preds = %79, %74
  %117 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %118 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load %struct.ngene*, %struct.ngene** %4, align 8
  %123 = getelementptr inbounds %struct.ngene, %struct.ngene* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %126 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = call i32 @dvb_unregister_adapter(i32* %128)
  %130 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %131 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %121, %116
  ret void
}

declare dso_local i32 @set_transfer(%struct.ngene_channel*, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dvb_unregister_device(i32*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_module_release(i32*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
