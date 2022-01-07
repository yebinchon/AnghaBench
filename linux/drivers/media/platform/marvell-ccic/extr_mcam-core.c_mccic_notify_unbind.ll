; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mccic_notify_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mccic_notify_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.mcam_camera = type { i32, %struct.v4l2_subdev*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"sensor %s not bound\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sensor %s unbound\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @mccic_notify_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mccic_notify_unbind(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_async_subdev*, align 8
  %7 = alloca %struct.mcam_camera*, align 8
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %6, align 8
  %8 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %9 = call %struct.mcam_camera* @notifier_to_mcam(%struct.v4l2_async_notifier* %8)
  store %struct.mcam_camera* %9, %struct.mcam_camera** %7, align 8
  %10 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %11 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %14 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %13, i32 0, i32 1
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = icmp ne %struct.v4l2_subdev* %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cam_err(%struct.mcam_camera* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %26 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %25, i32 0, i32 2
  %27 = call i32 @video_unregister_device(i32* %26)
  %28 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %29 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %28, i32 0, i32 1
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %29, align 8
  %30 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cam_dbg(%struct.mcam_camera* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %24, %18
  %36 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %37 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local %struct.mcam_camera* @notifier_to_mcam(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cam_err(%struct.mcam_camera*, i8*, i32) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @cam_dbg(%struct.mcam_camera*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
