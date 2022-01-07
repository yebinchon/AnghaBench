; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-dvb.c_my_dvb_dmxdev_ts_card_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-dvb.c_my_dvb_dmxdev_ts_card_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.dmx_frontend*)*, i32 (%struct.TYPE_4__*, %struct.dmx_frontend.0*)* }
%struct.dmx_frontend = type opaque
%struct.dmx_frontend.0 = type opaque
%struct.dvb_demux = type { %struct.TYPE_4__ }
%struct.dmx_frontend.1 = type { i32 }
%struct.dvb_adapter = type { i32 }

@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@DMX_MEMORY_FE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @my_dvb_dmxdev_ts_card_init(%struct.dmxdev* %0, %struct.dvb_demux* %1, %struct.dmx_frontend.1* %2, %struct.dmx_frontend.1* %3, %struct.dvb_adapter* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmxdev*, align 8
  %8 = alloca %struct.dvb_demux*, align 8
  %9 = alloca %struct.dmx_frontend.1*, align 8
  %10 = alloca %struct.dmx_frontend.1*, align 8
  %11 = alloca %struct.dvb_adapter*, align 8
  %12 = alloca i32, align 4
  store %struct.dmxdev* %0, %struct.dmxdev** %7, align 8
  store %struct.dvb_demux* %1, %struct.dvb_demux** %8, align 8
  store %struct.dmx_frontend.1* %2, %struct.dmx_frontend.1** %9, align 8
  store %struct.dmx_frontend.1* %3, %struct.dmx_frontend.1** %10, align 8
  store %struct.dvb_adapter* %4, %struct.dvb_adapter** %11, align 8
  %13 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %14 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %13, i32 0, i32 0
  store i32 256, i32* %14, align 8
  %15 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %16 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %15, i32 0, i32 0
  %17 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %18 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %17, i32 0, i32 2
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %20 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %22 = load %struct.dvb_adapter*, %struct.dvb_adapter** %11, align 8
  %23 = call i32 @dvb_dmxdev_init(%struct.dmxdev* %21, %struct.dvb_adapter* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %62

28:                                               ; preds = %5
  %29 = load i32, i32* @DMX_FRONTEND_0, align 4
  %30 = load %struct.dmx_frontend.1*, %struct.dmx_frontend.1** %9, align 8
  %31 = getelementptr inbounds %struct.dmx_frontend.1, %struct.dmx_frontend.1* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %33 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_4__*, %struct.dmx_frontend.0*)*, i32 (%struct.TYPE_4__*, %struct.dmx_frontend.0*)** %34, align 8
  %36 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %37 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %36, i32 0, i32 0
  %38 = load %struct.dmx_frontend.1*, %struct.dmx_frontend.1** %9, align 8
  %39 = bitcast %struct.dmx_frontend.1* %38 to %struct.dmx_frontend.0*
  %40 = call i32 %35(%struct.TYPE_4__* %37, %struct.dmx_frontend.0* %39)
  %41 = load i32, i32* @DMX_MEMORY_FE, align 4
  %42 = load %struct.dmx_frontend.1*, %struct.dmx_frontend.1** %10, align 8
  %43 = getelementptr inbounds %struct.dmx_frontend.1, %struct.dmx_frontend.1* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %45 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32 (%struct.TYPE_4__*, %struct.dmx_frontend.0*)*, i32 (%struct.TYPE_4__*, %struct.dmx_frontend.0*)** %46, align 8
  %48 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %49 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %48, i32 0, i32 0
  %50 = load %struct.dmx_frontend.1*, %struct.dmx_frontend.1** %10, align 8
  %51 = bitcast %struct.dmx_frontend.1* %50 to %struct.dmx_frontend.0*
  %52 = call i32 %47(%struct.TYPE_4__* %49, %struct.dmx_frontend.0* %51)
  %53 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %54 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_4__*, %struct.dmx_frontend*)*, i32 (%struct.TYPE_4__*, %struct.dmx_frontend*)** %55, align 8
  %57 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %58 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %57, i32 0, i32 0
  %59 = load %struct.dmx_frontend.1*, %struct.dmx_frontend.1** %9, align 8
  %60 = bitcast %struct.dmx_frontend.1* %59 to %struct.dmx_frontend*
  %61 = call i32 %56(%struct.TYPE_4__* %58, %struct.dmx_frontend* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %28, %26
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @dvb_dmxdev_init(%struct.dmxdev*, %struct.dvb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
