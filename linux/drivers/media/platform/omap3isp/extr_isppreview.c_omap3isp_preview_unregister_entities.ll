; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_omap3isp_preview_unregister_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_omap3isp_preview_unregister_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_preview_unregister_entities(%struct.isp_prev_device* %0) #0 {
  %2 = alloca %struct.isp_prev_device*, align 8
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %2, align 8
  %3 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %4 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %3, i32 0, i32 2
  %5 = call i32 @v4l2_device_unregister_subdev(i32* %4)
  %6 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %6, i32 0, i32 1
  %8 = call i32 @omap3isp_video_unregister(i32* %7)
  %9 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %10 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %9, i32 0, i32 0
  %11 = call i32 @omap3isp_video_unregister(i32* %10)
  ret void
}

declare dso_local i32 @v4l2_device_unregister_subdev(i32*) #1

declare dso_local i32 @omap3isp_video_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
