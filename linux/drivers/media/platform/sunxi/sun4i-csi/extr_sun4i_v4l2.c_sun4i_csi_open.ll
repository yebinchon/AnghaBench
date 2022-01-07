; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_v4l2.c_sun4i_csi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_v4l2.c_sun4i_csi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.sun4i_csi = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @sun4i_csi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_csi_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.sun4i_csi*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.sun4i_csi* @video_drvdata(%struct.file* %6)
  store %struct.sun4i_csi* %7, %struct.sun4i_csi** %4, align 8
  %8 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %9 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock_interruptible(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %17 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_runtime_get_sync(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %46

23:                                               ; preds = %15
  %24 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %25 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @v4l2_pipeline_pm_use(i32* %26, i32 1)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %46

31:                                               ; preds = %23
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = call i32 @v4l2_fh_open(%struct.file* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  %38 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %39 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  store i32 0, i32* %2, align 4
  br label %55

41:                                               ; preds = %36
  %42 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %43 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @v4l2_pipeline_pm_use(i32* %44, i32 0)
  br label %46

46:                                               ; preds = %41, %30, %22
  %47 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %48 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pm_runtime_put(i32 %49)
  %51 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %52 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %46, %37, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.sun4i_csi* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
