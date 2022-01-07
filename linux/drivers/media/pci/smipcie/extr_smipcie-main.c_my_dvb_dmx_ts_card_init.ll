; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_my_dvb_dmx_ts_card_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_my_dvb_dmx_ts_card_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux = type { i32, i32, i32 (%struct.dvb_demux_feed*)*, i32 (%struct.dvb_demux_feed.0*)*, %struct.TYPE_2__, i32*, i8* }
%struct.dvb_demux_feed = type opaque
%struct.dvb_demux_feed.0 = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.dvb_demux_feed.1 = type opaque
%struct.dvb_demux_feed.2 = type opaque

@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux*, i8*, i32 (%struct.dvb_demux_feed.1*)*, i32 (%struct.dvb_demux_feed.2*)*, i8*)* @my_dvb_dmx_ts_card_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_dvb_dmx_ts_card_init(%struct.dvb_demux* %0, i8* %1, i32 (%struct.dvb_demux_feed.1*)* %2, i32 (%struct.dvb_demux_feed.2*)* %3, i8* %4) #0 {
  %6 = alloca %struct.dvb_demux*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (%struct.dvb_demux_feed.1*)*, align 8
  %9 = alloca i32 (%struct.dvb_demux_feed.2*)*, align 8
  %10 = alloca i8*, align 8
  store %struct.dvb_demux* %0, %struct.dvb_demux** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (%struct.dvb_demux_feed.1*)* %2, i32 (%struct.dvb_demux_feed.1*)** %8, align 8
  store i32 (%struct.dvb_demux_feed.2*)* %3, i32 (%struct.dvb_demux_feed.2*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %14, i32 0, i32 0
  store i32 256, i32* %15, align 8
  %16 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %17 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %16, i32 0, i32 1
  store i32 256, i32* %17, align 4
  %18 = load i32 (%struct.dvb_demux_feed.1*)*, i32 (%struct.dvb_demux_feed.1*)** %8, align 8
  %19 = bitcast i32 (%struct.dvb_demux_feed.1*)* %18 to i32 (%struct.dvb_demux_feed*)*
  %20 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %21 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %20, i32 0, i32 2
  store i32 (%struct.dvb_demux_feed*)* %19, i32 (%struct.dvb_demux_feed*)** %21, align 8
  %22 = load i32 (%struct.dvb_demux_feed.2*)*, i32 (%struct.dvb_demux_feed.2*)** %9, align 8
  %23 = bitcast i32 (%struct.dvb_demux_feed.2*)* %22 to i32 (%struct.dvb_demux_feed.0*)*
  %24 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %25 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %24, i32 0, i32 3
  store i32 (%struct.dvb_demux_feed.0*)* %23, i32 (%struct.dvb_demux_feed.0*)** %25, align 8
  %26 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %27 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @DMX_TS_FILTERING, align 4
  %29 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %34 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %37 = call i32 @dvb_dmx_init(%struct.dvb_demux* %36)
  ret i32 %37
}

declare dso_local i32 @dvb_dmx_init(%struct.dvb_demux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
