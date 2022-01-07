; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vb_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vb_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.mcam_vb_buffer = type { i32 }
%struct.mcam_camera = type { i64, i32, i32, i32 }

@S_BUFWAIT = common dso_local global i64 0, align 8
@S_STREAMING = common dso_local global i64 0, align 8
@CF_SG_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @mcam_vb_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_vb_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.mcam_vb_buffer*, align 8
  %5 = alloca %struct.mcam_camera*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %8)
  store %struct.vb2_v4l2_buffer* %9, %struct.vb2_v4l2_buffer** %3, align 8
  %10 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %11 = call %struct.mcam_vb_buffer* @vb_to_mvb(%struct.vb2_v4l2_buffer* %10)
  store %struct.mcam_vb_buffer* %11, %struct.mcam_vb_buffer** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %13 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mcam_camera* @vb2_get_drv_priv(i32 %14)
  store %struct.mcam_camera* %15, %struct.mcam_camera** %5, align 8
  %16 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %17 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %21 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @S_BUFWAIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %27 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %26, i32 0, i32 3
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %1
  %32 = phi i1 [ false, %1 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mcam_vb_buffer*, %struct.mcam_vb_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.mcam_vb_buffer, %struct.mcam_vb_buffer* %34, i32 0, i32 0
  %36 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %37 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %36, i32 0, i32 3
  %38 = call i32 @list_add(i32* %35, i32* %37)
  %39 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %40 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @S_STREAMING, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load i32, i32* @CF_SG_RESTART, align 4
  %46 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %47 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %46, i32 0, i32 2
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %52 = call i32 @mcam_sg_restart(%struct.mcam_camera* %51)
  br label %53

53:                                               ; preds = %50, %44, %31
  %54 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %55 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %54, i32 0, i32 1
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %62 = call i32 @mcam_read_setup(%struct.mcam_camera* %61)
  br label %63

63:                                               ; preds = %60, %53
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.mcam_vb_buffer* @vb_to_mvb(%struct.vb2_v4l2_buffer*) #1

declare dso_local %struct.mcam_camera* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mcam_sg_restart(%struct.mcam_camera*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mcam_read_setup(%struct.mcam_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
