; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vsp1_video = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vsp1_pipeline* }
%struct.vsp1_pipeline = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @vsp1_video_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_video*, align 8
  %7 = alloca %struct.vsp1_pipeline*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = call %struct.vsp1_video* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.vsp1_video* %12, %struct.vsp1_video** %6, align 8
  %13 = load %struct.vsp1_video*, %struct.vsp1_video** %6, align 8
  %14 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %17, align 8
  store %struct.vsp1_pipeline* %18, %struct.vsp1_pipeline** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %20 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %19, i32 0, i32 3
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %23 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %26 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %2
  %30 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %31 = call i32 @vsp1_video_setup_pipeline(%struct.vsp1_pipeline* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.vsp1_video*, %struct.vsp1_video** %6, align 8
  %36 = call i32 @vsp1_video_release_buffers(%struct.vsp1_video* %35)
  %37 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %38 = call i32 @vsp1_video_cleanup_pipeline(%struct.vsp1_pipeline* %37)
  %39 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %40 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %39, i32 0, i32 3
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %71

43:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %46 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %50 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %49, i32 0, i32 3
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %71

55:                                               ; preds = %44
  %56 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %57 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %56, i32 0, i32 2
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %61 = call i64 @vsp1_pipeline_ready(%struct.vsp1_pipeline* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %65 = call i32 @vsp1_video_pipeline_run(%struct.vsp1_pipeline* %64)
  br label %66

66:                                               ; preds = %63, %55
  %67 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %68 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %67, i32 0, i32 2
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %54, %34
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.vsp1_video* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vsp1_video_setup_pipeline(%struct.vsp1_pipeline*) #1

declare dso_local i32 @vsp1_video_release_buffers(%struct.vsp1_video*) #1

declare dso_local i32 @vsp1_video_cleanup_pipeline(%struct.vsp1_pipeline*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vsp1_pipeline_ready(%struct.vsp1_pipeline*) #1

declare dso_local i32 @vsp1_video_pipeline_run(%struct.vsp1_pipeline*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
