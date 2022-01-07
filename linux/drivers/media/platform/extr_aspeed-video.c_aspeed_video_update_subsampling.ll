; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_update_subsampling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_update_subsampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VE_SEQ_CTRL = common dso_local global i32 0, align 4
@VE_SEQ_CTRL_YUV420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*)* @aspeed_video_update_subsampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_update_subsampling(%struct.aspeed_video* %0) #0 {
  %2 = alloca %struct.aspeed_video*, align 8
  store %struct.aspeed_video* %0, %struct.aspeed_video** %2, align 8
  %3 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %10 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %14 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @aspeed_video_init_jpeg_table(i64 %12, i64 %15)
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %19 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %24 = load i32, i32* @VE_SEQ_CTRL, align 4
  %25 = load i32, i32* @VE_SEQ_CTRL_YUV420, align 4
  %26 = call i32 @aspeed_video_update(%struct.aspeed_video* %23, i32 %24, i32 0, i32 %25)
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %29 = load i32, i32* @VE_SEQ_CTRL, align 4
  %30 = load i32, i32* @VE_SEQ_CTRL_YUV420, align 4
  %31 = call i32 @aspeed_video_update(%struct.aspeed_video* %28, i32 %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @aspeed_video_init_jpeg_table(i64, i64) #1

declare dso_local i32 @aspeed_video_update(%struct.aspeed_video*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
