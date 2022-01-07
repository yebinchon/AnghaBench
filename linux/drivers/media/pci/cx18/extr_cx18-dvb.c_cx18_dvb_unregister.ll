; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-dvb.c_cx18_dvb_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-dvb.c_cx18_dvb_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { %struct.cx18_dvb*, %struct.cx18* }
%struct.cx18_dvb = type { i32, i32, i32, i32, i32, %struct.dvb_demux, %struct.dvb_adapter, i32 }
%struct.dvb_demux = type { %struct.dmx_demux }
%struct.dmx_demux = type { i32 (%struct.dmx_demux*, i32*)*, i32 (%struct.dmx_demux*)* }
%struct.dvb_adapter = type { i32 }
%struct.cx18 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"unregister DVB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_dvb_unregister(%struct.cx18_stream* %0) #0 {
  %2 = alloca %struct.cx18_stream*, align 8
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.cx18_dvb*, align 8
  %5 = alloca %struct.dvb_adapter*, align 8
  %6 = alloca %struct.dvb_demux*, align 8
  %7 = alloca %struct.dmx_demux*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %2, align 8
  %8 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %9 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %8, i32 0, i32 1
  %10 = load %struct.cx18*, %struct.cx18** %9, align 8
  store %struct.cx18* %10, %struct.cx18** %3, align 8
  %11 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %12 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %11, i32 0, i32 0
  %13 = load %struct.cx18_dvb*, %struct.cx18_dvb** %12, align 8
  store %struct.cx18_dvb* %13, %struct.cx18_dvb** %4, align 8
  %14 = call i32 @CX18_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %16 = icmp eq %struct.cx18_dvb* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %19 = getelementptr inbounds %struct.cx18_dvb, %struct.cx18_dvb* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %1
  br label %67

23:                                               ; preds = %17
  %24 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %25 = getelementptr inbounds %struct.cx18_dvb, %struct.cx18_dvb* %24, i32 0, i32 6
  store %struct.dvb_adapter* %25, %struct.dvb_adapter** %5, align 8
  %26 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %27 = getelementptr inbounds %struct.cx18_dvb, %struct.cx18_dvb* %26, i32 0, i32 5
  store %struct.dvb_demux* %27, %struct.dvb_demux** %6, align 8
  %28 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %29 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %28, i32 0, i32 0
  store %struct.dmx_demux* %29, %struct.dmx_demux** %7, align 8
  %30 = load %struct.dmx_demux*, %struct.dmx_demux** %7, align 8
  %31 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %30, i32 0, i32 1
  %32 = load i32 (%struct.dmx_demux*)*, i32 (%struct.dmx_demux*)** %31, align 8
  %33 = load %struct.dmx_demux*, %struct.dmx_demux** %7, align 8
  %34 = call i32 %32(%struct.dmx_demux* %33)
  %35 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %36 = getelementptr inbounds %struct.cx18_dvb, %struct.cx18_dvb* %35, i32 0, i32 4
  %37 = call i32 @dvb_net_release(i32* %36)
  %38 = load %struct.dmx_demux*, %struct.dmx_demux** %7, align 8
  %39 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %38, i32 0, i32 0
  %40 = load i32 (%struct.dmx_demux*, i32*)*, i32 (%struct.dmx_demux*, i32*)** %39, align 8
  %41 = load %struct.dmx_demux*, %struct.dmx_demux** %7, align 8
  %42 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %43 = getelementptr inbounds %struct.cx18_dvb, %struct.cx18_dvb* %42, i32 0, i32 3
  %44 = call i32 %40(%struct.dmx_demux* %41, i32* %43)
  %45 = load %struct.dmx_demux*, %struct.dmx_demux** %7, align 8
  %46 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %45, i32 0, i32 0
  %47 = load i32 (%struct.dmx_demux*, i32*)*, i32 (%struct.dmx_demux*, i32*)** %46, align 8
  %48 = load %struct.dmx_demux*, %struct.dmx_demux** %7, align 8
  %49 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %50 = getelementptr inbounds %struct.cx18_dvb, %struct.cx18_dvb* %49, i32 0, i32 2
  %51 = call i32 %47(%struct.dmx_demux* %48, i32* %50)
  %52 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %53 = getelementptr inbounds %struct.cx18_dvb, %struct.cx18_dvb* %52, i32 0, i32 1
  %54 = call i32 @dvb_dmxdev_release(i32* %53)
  %55 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %56 = call i32 @dvb_dmx_release(%struct.dvb_demux* %55)
  %57 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %58 = getelementptr inbounds %struct.cx18_dvb, %struct.cx18_dvb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dvb_unregister_frontend(i32 %59)
  %61 = load %struct.cx18_dvb*, %struct.cx18_dvb** %4, align 8
  %62 = getelementptr inbounds %struct.cx18_dvb, %struct.cx18_dvb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dvb_frontend_detach(i32 %63)
  %65 = load %struct.dvb_adapter*, %struct.dvb_adapter** %5, align 8
  %66 = call i32 @dvb_unregister_adapter(%struct.dvb_adapter* %65)
  br label %67

67:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @CX18_INFO(i8*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_unregister_frontend(i32) #1

declare dso_local i32 @dvb_frontend_detach(i32) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.dvb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
