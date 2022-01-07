; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_dvb_video_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_dvb_video_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { %struct.dvb_video_events }
%struct.dvb_video_events = type { i32, i32, i32, i32, i32, i32* }
%struct.video_event = type { i32 }

@MAX_VIDEO_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_video_add_event(%struct.av7110* %0, %struct.video_event* %1) #0 {
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca %struct.video_event*, align 8
  %5 = alloca %struct.dvb_video_events*, align 8
  %6 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  store %struct.video_event* %1, %struct.video_event** %4, align 8
  %7 = load %struct.av7110*, %struct.av7110** %3, align 8
  %8 = getelementptr inbounds %struct.av7110, %struct.av7110* %7, i32 0, i32 0
  store %struct.dvb_video_events* %8, %struct.dvb_video_events** %5, align 8
  %9 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %9, i32 0, i32 4
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @MAX_VIDEO_EVENT, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %25 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @MAX_VIDEO_EVENT, align 4
  %31 = srem i32 %29, %30
  %32 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %23, %2
  %35 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %36 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load %struct.video_event*, %struct.video_event** %4, align 8
  %44 = call i32 @memcpy(i32* %42, %struct.video_event* %43, i32 4)
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %47 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %49 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %48, i32 0, i32 4
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load %struct.dvb_video_events*, %struct.dvb_video_events** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_video_events, %struct.dvb_video_events* %51, i32 0, i32 3
  %53 = call i32 @wake_up_interruptible(i32* %52)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.video_event*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
