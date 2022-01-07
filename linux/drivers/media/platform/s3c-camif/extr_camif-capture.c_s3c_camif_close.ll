; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.camif_vp = type { i64, i32, i32, i32, %struct.camif_dev* }
%struct.camif_dev = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"[vp%d] state: %#x, owner: %p, pid: %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @s3c_camif_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.camif_vp*, align 8
  %4 = alloca %struct.camif_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.camif_vp* @video_drvdata(%struct.file* %6)
  store %struct.camif_vp* %7, %struct.camif_vp** %3, align 8
  %8 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %9 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %8, i32 0, i32 4
  %10 = load %struct.camif_dev*, %struct.camif_dev** %9, align 8
  store %struct.camif_dev* %10, %struct.camif_dev** %4, align 8
  %11 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %12 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %15 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %18 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @current, align 4
  %21 = call i32 @task_pid_nr(i32 %20)
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i64 %19, i32 %21)
  %23 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %24 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %27 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.file*, %struct.file** %2, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %35 = call i32 @camif_stop_capture(%struct.camif_vp* %34)
  %36 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %37 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %36, i32 0, i32 1
  %38 = call i32 @vb2_queue_release(i32* %37)
  %39 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %40 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %33, %1
  %42 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %43 = call i32 @sensor_set_power(%struct.camif_dev* %42, i32 0)
  %44 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %45 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pm_runtime_put(i32 %46)
  %48 = load %struct.file*, %struct.file** %2, align 8
  %49 = call i32 @v4l2_fh_release(%struct.file* %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %51 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @camif_stop_capture(%struct.camif_vp*) #1

declare dso_local i32 @vb2_queue_release(i32*) #1

declare dso_local i32 @sensor_set_power(%struct.camif_dev*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
