; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_device = type { %struct.vsp1_rwpf**, %struct.TYPE_4__* }
%struct.vsp1_rwpf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vsp1_pipeline* }
%struct.vsp1_pipeline = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_video_resume(%struct.vsp1_device* %0) #0 {
  %2 = alloca %struct.vsp1_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vsp1_rwpf*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  store %struct.vsp1_device* %0, %struct.vsp1_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %10 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %8, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %7
  %16 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %17 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %16, i32 0, i32 0
  %18 = load %struct.vsp1_rwpf**, %struct.vsp1_rwpf*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %18, i64 %20
  %22 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %21, align 8
  store %struct.vsp1_rwpf* %22, %struct.vsp1_rwpf** %5, align 8
  %23 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %5, align 8
  %24 = icmp eq %struct.vsp1_rwpf* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %52

26:                                               ; preds = %15
  %27 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %5, align 8
  %28 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %29, align 8
  store %struct.vsp1_pipeline* %30, %struct.vsp1_pipeline** %6, align 8
  %31 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %32 = icmp eq %struct.vsp1_pipeline* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %52

34:                                               ; preds = %26
  %35 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %36 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %38 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %37, i32 0, i32 1
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %42 = call i64 @vsp1_pipeline_ready(%struct.vsp1_pipeline* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %46 = call i32 @vsp1_video_pipeline_run(%struct.vsp1_pipeline* %45)
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %49 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %48, i32 0, i32 1
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %47, %33, %25
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %7

55:                                               ; preds = %7
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vsp1_pipeline_ready(%struct.vsp1_pipeline*) #1

declare dso_local i32 @vsp1_video_pipeline_run(%struct.vsp1_pipeline*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
