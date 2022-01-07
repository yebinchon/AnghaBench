; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vsp1_video = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vsp1_pipeline* }
%struct.vsp1_pipeline = type { i32, i64, i64, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pipeline stop timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @vsp1_video_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsp1_video_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.vsp1_video*, align 8
  %4 = alloca %struct.vsp1_pipeline*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %8 = call %struct.vsp1_video* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.vsp1_video* %8, %struct.vsp1_video** %3, align 8
  %9 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %10 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %13, align 8
  store %struct.vsp1_pipeline* %14, %struct.vsp1_pipeline** %4, align 8
  %15 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %16 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %15, i32 0, i32 3
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %20 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %25 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %29 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %28, i32 0, i32 3
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %33 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %32, i32 0, i32 3
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %36 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %40 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %1
  %44 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %45 = call i32 @vsp1_pipeline_stop(%struct.vsp1_pipeline* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %52 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %59 = call i32 @vsp1_video_cleanup_pipeline(%struct.vsp1_pipeline* %58)
  br label %60

60:                                               ; preds = %57, %1
  %61 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %62 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %61, i32 0, i32 3
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %65 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @media_pipeline_stop(i32* %66)
  %68 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %69 = call i32 @vsp1_video_release_buffers(%struct.vsp1_video* %68)
  %70 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %71 = call i32 @vsp1_video_pipeline_put(%struct.vsp1_pipeline* %70)
  ret void
}

declare dso_local %struct.vsp1_video* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vsp1_pipeline_stop(%struct.vsp1_pipeline*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vsp1_video_cleanup_pipeline(%struct.vsp1_pipeline*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @media_pipeline_stop(i32*) #1

declare dso_local i32 @vsp1_video_release_buffers(%struct.vsp1_video*) #1

declare dso_local i32 @vsp1_video_pipeline_put(%struct.vsp1_pipeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
