; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@VIDEO_STOPPED = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*)* @aspeed_video_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_stop(%struct.aspeed_video* %0) #0 {
  %2 = alloca %struct.aspeed_video*, align 8
  store %struct.aspeed_video* %0, %struct.aspeed_video** %2, align 8
  %3 = load i32, i32* @VIDEO_STOPPED, align 4
  %4 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %5 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %4, i32 0, i32 0
  %6 = call i32 @set_bit(i32 %3, i64* %5)
  %7 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %8 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %7, i32 0, i32 3
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %11 = call i32 @aspeed_video_off(%struct.aspeed_video* %10)
  %12 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %13 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %21 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %22 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = call i32 @aspeed_video_free_buf(%struct.aspeed_video* %20, %struct.TYPE_2__* %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %28 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %36 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %37 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 1
  %40 = call i32 @aspeed_video_free_buf(%struct.aspeed_video* %35, %struct.TYPE_2__* %39)
  br label %41

41:                                               ; preds = %34, %26
  %42 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %43 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %44 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %46 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  ret void
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @aspeed_video_off(%struct.aspeed_video*) #1

declare dso_local i32 @aspeed_video_free_buf(%struct.aspeed_video*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
