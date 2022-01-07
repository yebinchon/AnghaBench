; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_s_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_s_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.video_device = type { i32 }
%struct.media_device = type { i32 }
%struct.v4l2_ext_controls = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_s_ext_ctrls(%struct.v4l2_fh* %0, %struct.v4l2_ctrl_handler* %1, %struct.video_device* %2, %struct.media_device* %3, %struct.v4l2_ext_controls* %4) #0 {
  %6 = alloca %struct.v4l2_fh*, align 8
  %7 = alloca %struct.v4l2_ctrl_handler*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.media_device*, align 8
  %10 = alloca %struct.v4l2_ext_controls*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %6, align 8
  store %struct.v4l2_ctrl_handler* %1, %struct.v4l2_ctrl_handler** %7, align 8
  store %struct.video_device* %2, %struct.video_device** %8, align 8
  store %struct.media_device* %3, %struct.media_device** %9, align 8
  store %struct.v4l2_ext_controls* %4, %struct.v4l2_ext_controls** %10, align 8
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %13 = load %struct.video_device*, %struct.video_device** %8, align 8
  %14 = load %struct.media_device*, %struct.media_device** %9, align 8
  %15 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %10, align 8
  %16 = call i32 @try_set_ext_ctrls(%struct.v4l2_fh* %11, %struct.v4l2_ctrl_handler* %12, %struct.video_device* %13, %struct.media_device* %14, %struct.v4l2_ext_controls* %15, i32 1)
  ret i32 %16
}

declare dso_local i32 @try_set_ext_ctrls(%struct.v4l2_fh*, %struct.v4l2_ctrl_handler*, %struct.video_device*, %struct.media_device*, %struct.v4l2_ext_controls*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
