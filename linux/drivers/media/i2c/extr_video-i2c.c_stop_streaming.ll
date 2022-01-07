; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.video_i2c_data = type { i32, i32* }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.video_i2c_data*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.video_i2c_data* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.video_i2c_data* %5, %struct.video_i2c_data** %3, align 8
  %6 = load %struct.video_i2c_data*, %struct.video_i2c_data** %3, align 8
  %7 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.video_i2c_data*, %struct.video_i2c_data** %3, align 8
  %13 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kthread_stop(i32* %14)
  %16 = load %struct.video_i2c_data*, %struct.video_i2c_data** %3, align 8
  %17 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.video_i2c_data*, %struct.video_i2c_data** %3, align 8
  %19 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regmap_get_device(i32 %20)
  %22 = call i32 @pm_runtime_mark_last_busy(i32 %21)
  %23 = load %struct.video_i2c_data*, %struct.video_i2c_data** %3, align 8
  %24 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @regmap_get_device(i32 %25)
  %27 = call i32 @pm_runtime_put_autosuspend(i32 %26)
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %29 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %30 = call i32 @video_i2c_del_list(%struct.vb2_queue* %28, i32 %29)
  br label %31

31:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.video_i2c_data* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @regmap_get_device(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @video_i2c_del_list(%struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
