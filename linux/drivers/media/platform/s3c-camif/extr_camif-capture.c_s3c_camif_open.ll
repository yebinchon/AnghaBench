; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.camif_vp = type { i32, i32, i32, %struct.camif_dev* }
%struct.camif_dev = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"[vp%d] state: %#x,  owner: %p, pid: %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @s3c_camif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.camif_vp*, align 8
  %5 = alloca %struct.camif_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.camif_vp* @video_drvdata(%struct.file* %7)
  store %struct.camif_vp* %8, %struct.camif_vp** %4, align 8
  %9 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %10 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %9, i32 0, i32 3
  %11 = load %struct.camif_dev*, %struct.camif_dev** %10, align 8
  store %struct.camif_dev* %11, %struct.camif_dev** %5, align 8
  %12 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %13 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %16 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %19 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @current, align 4
  %22 = call i32 @task_pid_nr(i32 %21)
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %22)
  %24 = load %struct.camif_dev*, %struct.camif_dev** %5, align 8
  %25 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %24, i32 0, i32 0
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %64

31:                                               ; preds = %1
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = call i32 @v4l2_fh_open(%struct.file* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %59

37:                                               ; preds = %31
  %38 = load %struct.camif_dev*, %struct.camif_dev** %5, align 8
  %39 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pm_runtime_get_sync(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %56

45:                                               ; preds = %37
  %46 = load %struct.camif_dev*, %struct.camif_dev** %5, align 8
  %47 = call i32 @sensor_set_power(%struct.camif_dev* %46, i32 1)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %59

51:                                               ; preds = %45
  %52 = load %struct.camif_dev*, %struct.camif_dev** %5, align 8
  %53 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pm_runtime_put(i32 %54)
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.file*, %struct.file** %3, align 8
  %58 = call i32 @v4l2_fh_release(%struct.file* %57)
  br label %59

59:                                               ; preds = %56, %50, %36
  %60 = load %struct.camif_dev*, %struct.camif_dev** %5, align 8
  %61 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %28
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

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
