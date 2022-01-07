; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.vsp1_video = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vsp1_pipeline* }
%struct.vsp1_pipeline = type { i32, i32 }
%struct.vsp1_vb2_buffer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @vsp1_video_buffer_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsp1_video_buffer_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.vsp1_video*, align 8
  %5 = alloca %struct.vsp1_pipeline*, align 8
  %6 = alloca %struct.vsp1_vb2_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %3, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vsp1_video* @vb2_get_drv_priv(i32 %13)
  store %struct.vsp1_video* %14, %struct.vsp1_video** %4, align 8
  %15 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %16 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %19, align 8
  store %struct.vsp1_pipeline* %20, %struct.vsp1_pipeline** %5, align 8
  %21 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %22 = call %struct.vsp1_vb2_buffer* @to_vsp1_vb2_buffer(%struct.vb2_v4l2_buffer* %21)
  store %struct.vsp1_vb2_buffer* %22, %struct.vsp1_vb2_buffer** %6, align 8
  %23 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %24 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %23, i32 0, i32 3
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %28 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %27, i32 0, i32 4
  %29 = call i32 @list_empty(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.vsp1_vb2_buffer*, %struct.vsp1_vb2_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.vsp1_vb2_buffer, %struct.vsp1_vb2_buffer* %30, i32 0, i32 1
  %32 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %33 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %32, i32 0, i32 4
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %36 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %35, i32 0, i32 3
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %1
  br label %78

42:                                               ; preds = %1
  %43 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %44 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %43, i32 0, i32 1
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.vsp1_vb2_buffer*, %struct.vsp1_vb2_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.vsp1_vb2_buffer, %struct.vsp1_vb2_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %51 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %55 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %59 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.vsp1_video*, %struct.vsp1_video** %4, align 8
  %63 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %62, i32 0, i32 1
  %64 = call i64 @vb2_is_streaming(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %42
  %67 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %68 = call i64 @vsp1_pipeline_ready(%struct.vsp1_pipeline* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %72 = call i32 @vsp1_video_pipeline_run(%struct.vsp1_pipeline* %71)
  br label %73

73:                                               ; preds = %70, %66, %42
  %74 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %75 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %74, i32 0, i32 1
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %41
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.vsp1_video* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.vsp1_vb2_buffer* @to_vsp1_vb2_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @vb2_is_streaming(i32*) #1

declare dso_local i64 @vsp1_pipeline_ready(%struct.vsp1_pipeline*) #1

declare dso_local i32 @vsp1_video_pipeline_run(%struct.vsp1_pipeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
