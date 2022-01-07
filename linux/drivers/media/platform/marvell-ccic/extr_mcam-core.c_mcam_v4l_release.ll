; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_v4l_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_v4l_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.mcam_camera = type { i64, i32 }

@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@B_vmalloc = common dso_local global i64 0, align 8
@alloc_bufs_at_read = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @mcam_v4l_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_v4l_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.mcam_camera*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.mcam_camera* @video_drvdata(%struct.file* %5)
  store %struct.mcam_camera* %6, %struct.mcam_camera** %3, align 8
  %7 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %8 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = call i32 @v4l2_fh_is_singular_file(%struct.file* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.file*, %struct.file** %2, align 8
  %13 = call i32 @_vb2_fop_release(%struct.file* %12, i32* null)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %18 = call i32 @mcam_disable_mipi(%struct.mcam_camera* %17)
  %19 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %20 = load i32, i32* @core, align 4
  %21 = load i32, i32* @s_power, align 4
  %22 = call i32 @sensor_call(%struct.mcam_camera* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %24 = call i32 @mcam_clk_disable(%struct.mcam_camera* %23)
  %25 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %26 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @B_vmalloc, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load i64, i64* @alloc_bufs_at_read, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %35 = call i32 @mcam_free_dma_bufs(%struct.mcam_camera* %34)
  br label %36

36:                                               ; preds = %33, %30, %16
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %39 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  ret i32 0
}

declare dso_local %struct.mcam_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @_vb2_fop_release(%struct.file*, i32*) #1

declare dso_local i32 @mcam_disable_mipi(%struct.mcam_camera*) #1

declare dso_local i32 @sensor_call(%struct.mcam_camera*, i32, i32, i32) #1

declare dso_local i32 @mcam_clk_disable(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_free_dma_bufs(%struct.mcam_camera*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
