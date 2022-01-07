; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_dvb_feed_stop_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_dvb_feed_stop_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, i32, %struct.dvb_demux* }
%struct.dvb_demux = type { i32*, i64, i64, %struct.av7110* }
%struct.av7110 = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@RP_VIDEO = common dso_local global i32 0, align 4
@RP_AUDIO = common dso_local global i32 0, align 4
@TS_PACKET = common dso_local global i32 0, align 4
@pids_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @dvb_feed_stop_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_feed_stop_pid(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.av7110*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %10 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %10, i32 0, i32 3
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %11, align 8
  store %struct.dvb_demux* %12, %struct.dvb_demux** %4, align 8
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 3
  %15 = load %struct.av7110*, %struct.av7110** %14, align 8
  store %struct.av7110* %15, %struct.av7110** %5, align 8
  %16 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.av7110*, %struct.av7110** %5, align 8
  %20 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %19)
  %21 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %59

25:                                               ; preds = %1
  %26 = load %struct.av7110*, %struct.av7110** %5, align 8
  %27 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @RP_VIDEO, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @RP_AUDIO, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = call i32 @av7110_av_stop(%struct.av7110* %26, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %2, align 4
  br label %125

42:                                               ; preds = %35
  %43 = load %struct.av7110*, %struct.av7110** %5, align 8
  %44 = getelementptr inbounds %struct.av7110, %struct.av7110* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %49 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.av7110*, %struct.av7110** %5, align 8
  %52 = getelementptr inbounds %struct.av7110, %struct.av7110* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %1
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 65535, i32* %60, align 16
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 65535, i32* %61, align 4
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 65535, i32* %62, align 8
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 65535, i32* %63, align 4
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 65535, i32* %64, align 16
  %65 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %107 [
    i32 2, label %69
    i32 0, label %83
    i32 1, label %83
    i32 4, label %83
  ]

69:                                               ; preds = %59
  %70 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TS_PACKET, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @StopHWFilter(i32 %79)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %76, %69
  %82 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %82, align 8
  br label %107

83:                                               ; preds = %59, %59, %59
  %84 = load i32, i32* @pids_off, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %125

87:                                               ; preds = %83
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 32768
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %102

96:                                               ; preds = %87
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  br label %102

102:                                              ; preds = %96, %95
  %103 = phi i32 [ 0, %95 ], [ %101, %96 ]
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %59, %102, %81
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %107
  %111 = load %struct.av7110*, %struct.av7110** %5, align 8
  %112 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %115 = load i32, i32* %114, align 16
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %121 = load i32, i32* %120, align 16
  %122 = call i32 @ChangePIDs(%struct.av7110* %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121)
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %110, %107
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %86, %40
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @av7110_av_stop(%struct.av7110*, i32) #1

declare dso_local i32 @StopHWFilter(i32) #1

declare dso_local i32 @ChangePIDs(%struct.av7110*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
