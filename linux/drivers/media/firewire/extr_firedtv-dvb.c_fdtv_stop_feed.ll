; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-dvb.c_fdtv_stop_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-dvb.c_fdtv_stop_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i64, i32, i64, i64, %struct.dvb_demux* }
%struct.dvb_demux = type { i32*, i32**, %struct.TYPE_4__, %struct.firedtv* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.firedtv = type { i32 }

@DMX_TYPE_TS = common dso_local global i64 0, align 8
@TS_PACKET = common dso_local global i32 0, align 4
@DMX_MEMORY_FE = common dso_local global i64 0, align 8
@TS_DECODER = common dso_local global i32 0, align 4
@DMX_PES_OTHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdtv_stop_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.firedtv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %10 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %10, i32 0, i32 4
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %11, align 8
  store %struct.dvb_demux* %12, %struct.dvb_demux** %4, align 8
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 3
  %15 = load %struct.firedtv*, %struct.firedtv** %14, align 8
  store %struct.firedtv* %15, %struct.firedtv** %5, align 8
  %16 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DMX_TYPE_TS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %1
  %22 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TS_PACKET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DMX_MEMORY_FE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %95, label %37

37:                                               ; preds = %28, %21
  %38 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TS_DECODER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %37
  %45 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DMX_PES_OTHER, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %52 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %50, %44
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %122

63:                                               ; preds = %50
  %64 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %65 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, 32768
  store i32 %72, i32* %70, align 4
  %73 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %74 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %77 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32*, i32** %75, i64 %78
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %63, %37
  %81 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TS_DECODER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %89 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DMX_PES_OTHER, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %94, label %93

93:                                               ; preds = %87, %80
  store i32 0, i32* %2, align 4
  br label %122

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %28, %1
  %96 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %97 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %96, i32 0, i32 0
  %98 = call i64 @mutex_lock_interruptible(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @EINTR, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %122

103:                                              ; preds = %95
  %104 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %105 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %7, align 4
  %108 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @dealloc_channel(%struct.firedtv* %108, i32 %109)
  %111 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %113 = call i32 @collect_channels(%struct.firedtv* %111, i32* %6, i32* %112)
  %114 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %117 = call i32 @avc_tuner_set_pids(%struct.firedtv* %114, i32 %115, i32* %116)
  store i32 %117, i32* %8, align 4
  %118 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %119 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %103, %100, %93, %60
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dealloc_channel(%struct.firedtv*, i32) #1

declare dso_local i32 @collect_channels(%struct.firedtv*, i32*, i32*) #1

declare dso_local i32 @avc_tuner_set_pids(%struct.firedtv*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
