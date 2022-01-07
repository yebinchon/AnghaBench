; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_frame_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_rwpf = type { %struct.vsp1_video* }
%struct.vsp1_video = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vsp1_vb2_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_pipeline*, %struct.vsp1_rwpf*)* @vsp1_video_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsp1_video_frame_end(%struct.vsp1_pipeline* %0, %struct.vsp1_rwpf* %1) #0 {
  %3 = alloca %struct.vsp1_pipeline*, align 8
  %4 = alloca %struct.vsp1_rwpf*, align 8
  %5 = alloca %struct.vsp1_video*, align 8
  %6 = alloca %struct.vsp1_vb2_buffer*, align 8
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %3, align 8
  store %struct.vsp1_rwpf* %1, %struct.vsp1_rwpf** %4, align 8
  %7 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %8 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %7, i32 0, i32 0
  %9 = load %struct.vsp1_video*, %struct.vsp1_video** %8, align 8
  store %struct.vsp1_video* %9, %struct.vsp1_video** %5, align 8
  %10 = load %struct.vsp1_video*, %struct.vsp1_video** %5, align 8
  %11 = call %struct.vsp1_vb2_buffer* @vsp1_video_complete_buffer(%struct.vsp1_video* %10)
  store %struct.vsp1_vb2_buffer* %11, %struct.vsp1_vb2_buffer** %6, align 8
  %12 = load %struct.vsp1_vb2_buffer*, %struct.vsp1_vb2_buffer** %6, align 8
  %13 = icmp eq %struct.vsp1_vb2_buffer* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.vsp1_vb2_buffer*, %struct.vsp1_vb2_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.vsp1_vb2_buffer, %struct.vsp1_vb2_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vsp1_video*, %struct.vsp1_video** %5, align 8
  %20 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.vsp1_video*, %struct.vsp1_video** %5, align 8
  %24 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  %27 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %28 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.vsp1_vb2_buffer* @vsp1_video_complete_buffer(%struct.vsp1_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
