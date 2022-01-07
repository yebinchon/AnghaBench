; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vb_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vb_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.mcam_camera = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"stop_streaming: %d frames, %d singles, %d delivered\0A\00", align 1
@S_BUFWAIT = common dso_local global i64 0, align 8
@S_IDLE = common dso_local global i64 0, align 8
@S_STREAMING = common dso_local global i64 0, align 8
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @mcam_vb_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_vb_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.mcam_camera*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.mcam_camera* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.mcam_camera* %5, %struct.mcam_camera** %3, align 8
  %6 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %7 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %8 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %12 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %16 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @cam_dbg(%struct.mcam_camera* %6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %18)
  %20 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %21 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @S_BUFWAIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i64, i64* @S_IDLE, align 8
  %27 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %28 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %42

29:                                               ; preds = %1
  %30 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %31 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S_STREAMING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %42

36:                                               ; preds = %29
  %37 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %38 = call i32 @mcam_ctlr_stop_dma(%struct.mcam_camera* %37)
  %39 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %40 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %41 = call i32 @mcam_vb_requeue_bufs(%struct.vb2_queue* %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %35, %25
  ret void
}

declare dso_local %struct.mcam_camera* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @cam_dbg(%struct.mcam_camera*, i8*, i32, i32, i32) #1

declare dso_local i32 @mcam_ctlr_stop_dma(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_vb_requeue_bufs(%struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
