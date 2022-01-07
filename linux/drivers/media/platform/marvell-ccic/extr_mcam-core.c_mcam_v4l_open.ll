; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_v4l_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_v4l_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.mcam_camera = type { i32 }

@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @mcam_v4l_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_v4l_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.mcam_camera*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.mcam_camera* @video_drvdata(%struct.file* %5)
  store %struct.mcam_camera* %6, %struct.mcam_camera** %3, align 8
  %7 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %8 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = call i32 @v4l2_fh_open(%struct.file* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.file*, %struct.file** %2, align 8
  %17 = call i64 @v4l2_fh_is_singular_file(%struct.file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %21 = load i32, i32* @core, align 4
  %22 = load i32, i32* @s_power, align 4
  %23 = call i32 @sensor_call(%struct.mcam_camera* %20, i32 %21, i32 %22, i32 1)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %19
  %28 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %29 = call i32 @mcam_clk_enable(%struct.mcam_camera* %28)
  %30 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %31 = call i32 @__mcam_cam_reset(%struct.mcam_camera* %30)
  %32 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %33 = call i32 @mcam_set_config_needed(%struct.mcam_camera* %32, i32 1)
  br label %34

34:                                               ; preds = %27, %15
  br label %35

35:                                               ; preds = %34, %26, %14
  %36 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %37 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.file*, %struct.file** %2, align 8
  %43 = call i32 @v4l2_fh_release(%struct.file* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.mcam_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @sensor_call(%struct.mcam_camera*, i32, i32, i32) #1

declare dso_local i32 @mcam_clk_enable(%struct.mcam_camera*) #1

declare dso_local i32 @__mcam_cam_reset(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_set_config_needed(%struct.mcam_camera*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
