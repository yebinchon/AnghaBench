; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.video_i2c_data = type { i64, %struct.TYPE_4__, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.video_i2c_data*)* }
%struct.device = type { i32 }

@video_i2c_thread_vid_cap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-vid-cap\00", align 1
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_i2c_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.video_i2c_data* @vb2_get_drv_priv(%struct.vb2_queue* %9)
  store %struct.video_i2c_data* %10, %struct.video_i2c_data** %6, align 8
  %11 = load %struct.video_i2c_data*, %struct.video_i2c_data** %6, align 8
  %12 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.device* @regmap_get_device(i32 %13)
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.video_i2c_data*, %struct.video_i2c_data** %6, align 8
  %16 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call i32 @pm_runtime_get_sync(%struct.device* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = call i32 @pm_runtime_put_noidle(%struct.device* %26)
  br label %64

28:                                               ; preds = %20
  %29 = load %struct.video_i2c_data*, %struct.video_i2c_data** %6, align 8
  %30 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.video_i2c_data*)*, i32 (%struct.video_i2c_data*)** %32, align 8
  %34 = load %struct.video_i2c_data*, %struct.video_i2c_data** %6, align 8
  %35 = call i32 %33(%struct.video_i2c_data* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %59

39:                                               ; preds = %28
  %40 = load %struct.video_i2c_data*, %struct.video_i2c_data** %6, align 8
  %41 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @video_i2c_thread_vid_cap, align 4
  %43 = load %struct.video_i2c_data*, %struct.video_i2c_data** %6, align 8
  %44 = load %struct.video_i2c_data*, %struct.video_i2c_data** %6, align 8
  %45 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @kthread_run(i32 %42, %struct.video_i2c_data* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.video_i2c_data*, %struct.video_i2c_data** %6, align 8
  %50 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.video_i2c_data*, %struct.video_i2c_data** %6, align 8
  %52 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @PTR_ERR_OR_ZERO(i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %69

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call i32 @pm_runtime_mark_last_busy(%struct.device* %60)
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = call i32 @pm_runtime_put_autosuspend(%struct.device* %62)
  br label %64

64:                                               ; preds = %59, %25
  %65 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %66 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %67 = call i32 @video_i2c_del_list(%struct.vb2_queue* %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %57, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.video_i2c_data* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i64 @kthread_run(i32, %struct.video_i2c_data*, i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @video_i2c_del_list(%struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
