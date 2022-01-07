; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_query_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_query_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32, i32 }
%struct.aspeed_video = type { i64, i32, i32, i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@VIDEO_RES_CHANGE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@V4L2_DV_BT_656_1120 = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @aspeed_video_query_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_video_query_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aspeed_video*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.aspeed_video* @video_drvdata(%struct.file* %10)
  store %struct.aspeed_video* %11, %struct.aspeed_video** %9, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @O_NONBLOCK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32, i32* @VIDEO_RES_CHANGE, align 4
  %20 = load %struct.aspeed_video*, %struct.aspeed_video** %9, align 8
  %21 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %20, i32 0, i32 2
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %18
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.aspeed_video*, %struct.aspeed_video** %9, align 8
  %30 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @VIDEO_RES_CHANGE, align 4
  %33 = load %struct.aspeed_video*, %struct.aspeed_video** %9, align 8
  %34 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %33, i32 0, i32 2
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @wait_event_interruptible(i32 %31, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* @EINTR, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %65

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i32, i32* @V4L2_DV_BT_656_1120, align 4
  %48 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.aspeed_video*, %struct.aspeed_video** %9, align 8
  %51 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.aspeed_video*, %struct.aspeed_video** %9, align 8
  %56 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @ENOLINK, align 4
  %61 = sub nsw i32 0, %60
  br label %63

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %42, %24
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.aspeed_video* @video_drvdata(%struct.file*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
