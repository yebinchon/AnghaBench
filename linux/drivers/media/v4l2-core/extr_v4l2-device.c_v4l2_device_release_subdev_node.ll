; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-device.c_v4l2_device_release_subdev_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-device.c_v4l2_device_release_subdev_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_device*)* @v4l2_device_release_subdev_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_device_release_subdev_node(%struct.video_device* %0) #0 {
  %2 = alloca %struct.video_device*, align 8
  store %struct.video_device* %0, %struct.video_device** %2, align 8
  %3 = load %struct.video_device*, %struct.video_device** %2, align 8
  %4 = call i32 @video_get_drvdata(%struct.video_device* %3)
  %5 = call i32 @v4l2_subdev_release(i32 %4)
  %6 = load %struct.video_device*, %struct.video_device** %2, align 8
  %7 = call i32 @kfree(%struct.video_device* %6)
  ret void
}

declare dso_local i32 @v4l2_subdev_release(i32) #1

declare dso_local i32 @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @kfree(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
