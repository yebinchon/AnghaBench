; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_start_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.ddb_input* }
%struct.ddb_input = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ddb_dvb* }
%struct.ddb_dvb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca %struct.dvb_demux_feed*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca %struct.ddb_input*, align 8
  %5 = alloca %struct.ddb_dvb*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %2, align 8
  %6 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %6, i32 0, i32 0
  %8 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  store %struct.dvb_demux* %8, %struct.dvb_demux** %3, align 8
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %9, i32 0, i32 0
  %11 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  store %struct.ddb_input* %11, %struct.ddb_input** %4, align 8
  %12 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %13 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ddb_dvb*, %struct.ddb_dvb** %15, align 8
  %17 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %18 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %16, i64 %21
  store %struct.ddb_dvb* %22, %struct.ddb_dvb** %5, align 8
  %23 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %24 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %29 = call i32 @ddb_input_start_all(%struct.ddb_input* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %32 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  ret i32 %34
}

declare dso_local i32 @ddb_input_start_all(%struct.ddb_input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
