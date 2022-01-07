; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vb_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vb_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.mcam_camera = type { i64, i64, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@S_IDLE = common dso_local global i64 0, align 8
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B_vmalloc = common dso_local global i64 0, align 8
@S_BUFWAIT = common dso_local global i64 0, align 8
@CF_FRAME_SOF0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @mcam_vb_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_vb_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mcam_camera*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.mcam_camera* @vb2_get_drv_priv(%struct.vb2_queue* %9)
  store %struct.mcam_camera* %10, %struct.mcam_camera** %6, align 8
  %11 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %12 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @S_IDLE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %18 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %19 = call i32 @mcam_vb_requeue_bufs(%struct.vb2_queue* %17, i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %24 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %27 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %30 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %33 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %35 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @B_vmalloc, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %41 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %40, i32 0, i32 4
  %42 = call i64 @list_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* @S_BUFWAIT, align 8
  %46 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %47 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  store i32 0, i32* %3, align 4
  br label %77

48:                                               ; preds = %39, %22
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %52 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i64, i64* @CF_FRAME_SOF0, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %61 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %60, i32 0, i32 3
  %62 = call i32 @clear_bit(i64 %59, i32* %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %49

66:                                               ; preds = %49
  %67 = load %struct.mcam_camera*, %struct.mcam_camera** %6, align 8
  %68 = call i32 @mcam_read_setup(%struct.mcam_camera* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %73 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %74 = call i32 @mcam_vb_requeue_bufs(%struct.vb2_queue* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %44, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.mcam_camera* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @mcam_vb_requeue_bufs(%struct.vb2_queue*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @mcam_read_setup(%struct.mcam_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
