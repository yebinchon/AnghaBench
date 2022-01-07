; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_restart_feeds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_restart_feeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32, i64, %struct.dvb_demux }
%struct.dvb_demux = type { i32, i32, %struct.TYPE_6__*, %struct.dvb_demux_feed* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.dvb_demux_feed = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@DMX_STATE_GO = common dso_local global i64 0, align 8
@DMX_TYPE_SEC = common dso_local global i64 0, align 8
@DMX_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.av7110*)* @restart_feeds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_feeds(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca %struct.dvb_demux_feed*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %9 = load %struct.av7110*, %struct.av7110** %2, align 8
  %10 = getelementptr inbounds %struct.av7110, %struct.av7110* %9, i32 0, i32 3
  store %struct.dvb_demux* %10, %struct.dvb_demux** %3, align 8
  %11 = load %struct.av7110*, %struct.av7110** %2, align 8
  %12 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %11)
  %13 = load %struct.av7110*, %struct.av7110** %2, align 8
  %14 = getelementptr inbounds %struct.av7110, %struct.av7110* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.av7110*, %struct.av7110** %2, align 8
  %17 = getelementptr inbounds %struct.av7110, %struct.av7110* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.av7110*, %struct.av7110** %2, align 8
  %19 = getelementptr inbounds %struct.av7110, %struct.av7110* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.av7110*, %struct.av7110** %2, align 8
  %21 = getelementptr inbounds %struct.av7110, %struct.av7110* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %110, %1
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %113

29:                                               ; preds = %23
  %30 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %30, i32 0, i32 3
  %32 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %32, i64 %34
  store %struct.dvb_demux_feed* %35, %struct.dvb_demux_feed** %4, align 8
  %36 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DMX_STATE_GO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %109

41:                                               ; preds = %29
  %42 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %43 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DMX_TYPE_SEC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %106

47:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %102, %47
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %48
  %55 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DMX_TYPE_SEC, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %102

66:                                               ; preds = %54
  %67 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %77 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = icmp ne i32* %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %102

81:                                               ; preds = %66
  %82 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DMX_STATE_GO, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %81
  %93 = load i64, i64* @DMX_STATE_READY, align 8
  %94 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i64 %93, i64* %100, align 8
  br label %101

101:                                              ; preds = %92, %81
  br label %102

102:                                              ; preds = %101, %80, %65
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %48

105:                                              ; preds = %48
  br label %106

106:                                              ; preds = %105, %41
  %107 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %108 = call i32 @av7110_start_feed(%struct.dvb_demux_feed* %107)
  br label %109

109:                                              ; preds = %106, %29
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %23

113:                                              ; preds = %23
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.av7110*, %struct.av7110** %2, align 8
  %116 = getelementptr inbounds %struct.av7110, %struct.av7110* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.av7110*, %struct.av7110** %2, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @av7110_av_start_play(%struct.av7110* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %113
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @av7110_start_feed(%struct.dvb_demux_feed*) #1

declare dso_local i32 @av7110_av_start_play(%struct.av7110*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
