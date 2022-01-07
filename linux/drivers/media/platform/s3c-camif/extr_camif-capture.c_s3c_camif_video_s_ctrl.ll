; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_video_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_video_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32, %struct.camif_vp* }
%struct.camif_vp = type { i32, i32, i32, i32, %struct.camif_dev* }
%struct.camif_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"[vp%d] ctrl: %s, value: %d\0A\00", align 1
@ST_VP_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @s3c_camif_video_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_video_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.camif_vp*, align 8
  %4 = alloca %struct.camif_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %6, i32 0, i32 3
  %8 = load %struct.camif_vp*, %struct.camif_vp** %7, align 8
  store %struct.camif_vp* %8, %struct.camif_vp** %3, align 8
  %9 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %10 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %9, i32 0, i32 4
  %11 = load %struct.camif_dev*, %struct.camif_dev** %10, align 8
  store %struct.camif_dev* %11, %struct.camif_dev** %4, align 8
  %12 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %13 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20)
  %22 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %23 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %41 [
    i32 129, label %29
    i32 128, label %35
  ]

29:                                               ; preds = %1
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %34 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %41

35:                                               ; preds = %1
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %40 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %1, %35, %29
  %42 = load i32, i32* @ST_VP_CONFIG, align 4
  %43 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %44 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %48 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
