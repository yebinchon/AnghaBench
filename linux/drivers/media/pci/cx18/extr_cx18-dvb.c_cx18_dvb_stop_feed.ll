; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-dvb.c_cx18_dvb_stop_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-dvb.c_cx18_dvb_stop_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, %struct.dvb_demux* }
%struct.dvb_demux = type { i64 }
%struct.cx18_stream = type { %struct.TYPE_2__*, %struct.cx18* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.cx18 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Stop feed: pid = 0x%x index = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Stopping Transport DMA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @cx18_dvb_stop_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_dvb_stop_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca %struct.dvb_demux_feed*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca %struct.cx18_stream*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %2, align 8
  %7 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %7, i32 0, i32 2
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  store %struct.dvb_demux* %9, %struct.dvb_demux** %3, align 8
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cx18_stream*
  store %struct.cx18_stream* %13, %struct.cx18_stream** %4, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %17 = icmp ne %struct.cx18_stream* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %1
  %19 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %20 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %19, i32 0, i32 1
  %21 = load %struct.cx18*, %struct.cx18** %20, align 8
  store %struct.cx18* %21, %struct.cx18** %5, align 8
  %22 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %26 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %30 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %35 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %18
  %42 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.cx18*, %struct.cx18** %5, align 8
  %44 = getelementptr inbounds %struct.cx18, %struct.cx18* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %47 = call i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.cx18*, %struct.cx18** %5, align 8
  %49 = getelementptr inbounds %struct.cx18, %struct.cx18* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %52

51:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %41
  %53 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %54 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %52, %1
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @CX18_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
