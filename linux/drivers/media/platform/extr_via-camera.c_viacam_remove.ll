; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_camera = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.viafb_dev* }
%struct.viafb_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@via_cam_info = common dso_local global %struct.via_camera* null, align 8
@viacam_pm_hooks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @viacam_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viacam_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.via_camera*, align 8
  %4 = alloca %struct.viafb_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.via_camera*, %struct.via_camera** @via_cam_info, align 8
  store %struct.via_camera* %5, %struct.via_camera** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.viafb_dev*, %struct.viafb_dev** %8, align 8
  store %struct.viafb_dev* %9, %struct.viafb_dev** %4, align 8
  %10 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %11 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %10, i32 0, i32 2
  %12 = call i32 @video_unregister_device(i32* %11)
  %13 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %14 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %13, i32 0, i32 1
  %15 = call i32 @v4l2_device_unregister(i32* %14)
  %16 = load %struct.viafb_dev*, %struct.viafb_dev** %4, align 8
  %17 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.via_camera* %21)
  %23 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %24 = call i32 @via_sensor_power_release(%struct.via_camera* %23)
  %25 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %26 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %25, i32 0, i32 0
  %27 = call i32 @v4l2_ctrl_handler_free(i32* %26)
  %28 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %29 = call i32 @kfree(%struct.via_camera* %28)
  store %struct.via_camera* null, %struct.via_camera** @via_cam_info, align 8
  ret i32 0
}

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.via_camera*) #1

declare dso_local i32 @via_sensor_power_release(%struct.via_camera*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @kfree(%struct.via_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
