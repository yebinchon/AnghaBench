; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_stop_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_stop_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.ddb_input* }
%struct.ddb_input = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ddb_dvb* }
%struct.ddb_dvb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @stop_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.ddb_input*, align 8
  %6 = alloca %struct.ddb_dvb*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %7 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %7, i32 0, i32 0
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  store %struct.dvb_demux* %9, %struct.dvb_demux** %4, align 8
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %10, i32 0, i32 0
  %12 = load %struct.ddb_input*, %struct.ddb_input** %11, align 8
  store %struct.ddb_input* %12, %struct.ddb_input** %5, align 8
  %13 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %14 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ddb_dvb*, %struct.ddb_dvb** %16, align 8
  %18 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %19 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %17, i64 %22
  store %struct.ddb_dvb* %23, %struct.ddb_dvb** %6, align 8
  %24 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %25 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %31 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %35 = call i32 @ddb_input_stop_all(%struct.ddb_input* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ddb_input_stop_all(%struct.ddb_input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
