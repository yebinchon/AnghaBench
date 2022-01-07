; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mccic_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mccic_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Removing a device with users!\0A\00", align 1
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@B_vmalloc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mccic_shutdown(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %3 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %4 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %10 = call i32 @cam_warn(%struct.mcam_camera* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %12 = load i32, i32* @core, align 4
  %13 = load i32, i32* @s_power, align 4
  %14 = call i32 @sensor_call(%struct.mcam_camera* %11, i32 %12, i32 %13, i32 0)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %17 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @B_vmalloc, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %23 = call i32 @mcam_free_dma_bufs(%struct.mcam_camera* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %26 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %25, i32 0, i32 3
  %27 = call i32 @v4l2_ctrl_handler_free(i32* %26)
  %28 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %29 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %28, i32 0, i32 2
  %30 = call i32 @v4l2_async_notifier_unregister(i32* %29)
  %31 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %32 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %31, i32 0, i32 1
  %33 = call i32 @v4l2_device_unregister(i32* %32)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @cam_warn(%struct.mcam_camera*, i8*) #1

declare dso_local i32 @sensor_call(%struct.mcam_camera*, i32, i32, i32) #1

declare dso_local i32 @mcam_free_dma_bufs(%struct.mcam_camera*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
