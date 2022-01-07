; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_notify_monitor_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_notify_monitor_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ad9389b_monitor_detect = type { i32 }
%struct.ad9389b_state = type { i32 }

@AD9389B_MONITOR_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @ad9389b_notify_monitor_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad9389b_notify_monitor_detect(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.ad9389b_monitor_detect, align 4
  %4 = alloca %struct.ad9389b_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev* %5)
  store %struct.ad9389b_state* %6, %struct.ad9389b_state** %4, align 8
  %7 = load %struct.ad9389b_state*, %struct.ad9389b_state** %4, align 8
  %8 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.ad9389b_monitor_detect, %struct.ad9389b_monitor_detect* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %12 = load i32, i32* @AD9389B_MONITOR_DETECT, align 4
  %13 = bitcast %struct.ad9389b_monitor_detect* %3 to i8*
  %14 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %11, i32 %12, i8* %13)
  ret void
}

declare dso_local %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
