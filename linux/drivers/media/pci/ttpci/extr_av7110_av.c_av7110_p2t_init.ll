; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_av7110_p2t_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_av7110_p2t_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110_p2t = type { %struct.dvb_demux_feed*, i64, i64, i64, i32 }
%struct.dvb_demux_feed = type { i32 }

@TS_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av7110_p2t_init(%struct.av7110_p2t* %0, %struct.dvb_demux_feed* %1) #0 {
  %3 = alloca %struct.av7110_p2t*, align 8
  %4 = alloca %struct.dvb_demux_feed*, align 8
  store %struct.av7110_p2t* %0, %struct.av7110_p2t** %3, align 8
  store %struct.dvb_demux_feed* %1, %struct.dvb_demux_feed** %4, align 8
  %5 = load %struct.av7110_p2t*, %struct.av7110_p2t** %3, align 8
  %6 = getelementptr inbounds %struct.av7110_p2t, %struct.av7110_p2t* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TS_SIZE, align 4
  %9 = call i32 @memset(i32 %7, i32 0, i32 %8)
  %10 = load %struct.av7110_p2t*, %struct.av7110_p2t** %3, align 8
  %11 = getelementptr inbounds %struct.av7110_p2t, %struct.av7110_p2t* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.av7110_p2t*, %struct.av7110_p2t** %3, align 8
  %13 = getelementptr inbounds %struct.av7110_p2t, %struct.av7110_p2t* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.av7110_p2t*, %struct.av7110_p2t** %3, align 8
  %15 = getelementptr inbounds %struct.av7110_p2t, %struct.av7110_p2t* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %17 = icmp ne %struct.dvb_demux_feed* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %20 = load %struct.av7110_p2t*, %struct.av7110_p2t** %3, align 8
  %21 = getelementptr inbounds %struct.av7110_p2t, %struct.av7110_p2t* %20, i32 0, i32 0
  store %struct.dvb_demux_feed* %19, %struct.dvb_demux_feed** %21, align 8
  br label %22

22:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
