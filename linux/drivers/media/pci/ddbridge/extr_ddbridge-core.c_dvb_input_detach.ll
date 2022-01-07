; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dvb_input_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dvb_input_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ddb_dvb* }
%struct.ddb_dvb = type { i32, %struct.dvb_demux, i32, i32, i32, i32, i32*, i32*, i32** }
%struct.dvb_demux = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_input*)* @dvb_input_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_input_detach(%struct.ddb_input* %0) #0 {
  %2 = alloca %struct.ddb_input*, align 8
  %3 = alloca %struct.ddb_dvb*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  store %struct.ddb_input* %0, %struct.ddb_input** %2, align 8
  %5 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %6 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %10 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %11 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %9, i64 %14
  store %struct.ddb_dvb* %15, %struct.ddb_dvb** %3, align 8
  %16 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %17 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %16, i32 0, i32 1
  store %struct.dvb_demux* %17, %struct.dvb_demux** %4, align 8
  %18 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %19 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %109 [
    i32 49, label %21
    i32 48, label %42
    i32 32, label %77
    i32 18, label %81
    i32 17, label %100
    i32 16, label %104
    i32 1, label %108
  ]

21:                                               ; preds = %1
  %22 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %23 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %28 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @dvb_unregister_frontend(i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %33 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %38 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @dvb_unregister_frontend(i32* %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %1, %41
  %43 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %44 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %43, i32 0, i32 8
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @dvb_module_release(i32* %47)
  %49 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %50 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %49, i32 0, i32 8
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %54 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %59 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dvb_frontend_detach(i32* %60)
  br label %62

62:                                               ; preds = %57, %42
  %63 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %64 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %69 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @dvb_frontend_detach(i32* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %74 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %73, i32 0, i32 7
  store i32* null, i32** %74, align 8
  %75 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %76 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %75, i32 0, i32 6
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %1, %72
  %78 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %79 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %78, i32 0, i32 5
  %80 = call i32 @dvb_net_release(i32* %79)
  br label %81

81:                                               ; preds = %1, %77
  %82 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %83 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %84, align 8
  %86 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %87 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %86, i32 0, i32 0
  %88 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %89 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %88, i32 0, i32 4
  %90 = call i32 %85(%struct.TYPE_5__* %87, i32* %89)
  %91 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %92 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %93, align 8
  %95 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %96 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %95, i32 0, i32 0
  %97 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %98 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %97, i32 0, i32 3
  %99 = call i32 %94(%struct.TYPE_5__* %96, i32* %98)
  br label %100

100:                                              ; preds = %1, %81
  %101 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %102 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %101, i32 0, i32 2
  %103 = call i32 @dvb_dmxdev_release(i32* %102)
  br label %104

104:                                              ; preds = %1, %100
  %105 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %106 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %105, i32 0, i32 1
  %107 = call i32 @dvb_dmx_release(%struct.dvb_demux* %106)
  br label %108

108:                                              ; preds = %1, %104
  br label %109

109:                                              ; preds = %1, %108
  %110 = load %struct.ddb_dvb*, %struct.ddb_dvb** %3, align 8
  %111 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  ret void
}

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_module_release(i32*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
