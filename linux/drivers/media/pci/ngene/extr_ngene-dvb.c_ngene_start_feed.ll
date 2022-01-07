; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-dvb.c_ngene_start_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-dvb.c_ngene_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.ngene_channel* }
%struct.ngene_channel = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngene_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca %struct.dvb_demux_feed*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca %struct.ngene_channel*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %2, align 8
  %5 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %5, i32 0, i32 0
  %7 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  store %struct.dvb_demux* %7, %struct.dvb_demux** %3, align 8
  %8 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %8, i32 0, i32 0
  %10 = load %struct.ngene_channel*, %struct.ngene_channel** %9, align 8
  store %struct.ngene_channel* %10, %struct.ngene_channel** %4, align 8
  %11 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %12 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %29 = call i32 @set_transfer(%struct.ngene_channel* %28, i32 1)
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

declare dso_local i32 @set_transfer(%struct.ngene_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
