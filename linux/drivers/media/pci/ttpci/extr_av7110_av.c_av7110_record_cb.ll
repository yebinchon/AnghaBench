; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_av7110_record_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_av7110_record_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_filter_pes2ts = type { i64 }
%struct.dvb_demux_feed = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32*, i64, i32*, i32, i32*, i32*)* }

@TS_PACKET = common dso_local global i32 0, align 4
@TS_PAYLOAD_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_record_cb(%struct.dvb_filter_pes2ts* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_filter_pes2ts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dvb_demux_feed*, align 8
  store %struct.dvb_filter_pes2ts* %0, %struct.dvb_filter_pes2ts** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %12, %struct.dvb_demux_feed** %8, align 8
  %13 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %14 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TS_PACKET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 224
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %32 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TS_PAYLOAD_ONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %39 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (i32*, i64, i32*, i32, i32*, i32*)*, i32 (i32*, i64, i32*, i32, i32*, i32*)** %40, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %45 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 %41(i32* %42, i64 %43, i32* null, i32 0, i32* %46, i32* null)
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %30
  %49 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @dvb_filter_pes2ts(%struct.dvb_filter_pes2ts* %49, i32* %50, i64 %51, i32 1)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %37, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @dvb_filter_pes2ts(%struct.dvb_filter_pes2ts*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
