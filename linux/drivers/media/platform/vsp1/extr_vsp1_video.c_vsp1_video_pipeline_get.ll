; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_pipeline_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_pipeline_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_video = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vsp1_pipeline* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vsp1_pipeline* (%struct.vsp1_video*)* @vsp1_video_pipeline_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vsp1_pipeline* @vsp1_video_pipeline_get(%struct.vsp1_video* %0) #0 {
  %2 = alloca %struct.vsp1_pipeline*, align 8
  %3 = alloca %struct.vsp1_video*, align 8
  %4 = alloca %struct.vsp1_pipeline*, align 8
  %5 = alloca i32, align 4
  store %struct.vsp1_video* %0, %struct.vsp1_video** %3, align 8
  %6 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %7 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %10, align 8
  %12 = icmp ne %struct.vsp1_pipeline* %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vsp1_pipeline* @kzalloc(i32 4, i32 %14)
  store %struct.vsp1_pipeline* %15, %struct.vsp1_pipeline** %4, align 8
  %16 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %17 = icmp ne %struct.vsp1_pipeline* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.vsp1_pipeline* @ERR_PTR(i32 %20)
  store %struct.vsp1_pipeline* %21, %struct.vsp1_pipeline** %2, align 8
  br label %48

22:                                               ; preds = %13
  %23 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %24 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %25 = call i32 @vsp1_video_pipeline_init(%struct.vsp1_pipeline* %23, %struct.vsp1_video* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %30 = call i32 @vsp1_pipeline_reset(%struct.vsp1_pipeline* %29)
  %31 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %32 = call i32 @kfree(%struct.vsp1_pipeline* %31)
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.vsp1_pipeline* @ERR_PTR(i32 %33)
  store %struct.vsp1_pipeline* %34, %struct.vsp1_pipeline** %2, align 8
  br label %48

35:                                               ; preds = %22
  br label %46

36:                                               ; preds = %1
  %37 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %38 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %41, align 8
  store %struct.vsp1_pipeline* %42, %struct.vsp1_pipeline** %4, align 8
  %43 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %44 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %43, i32 0, i32 0
  %45 = call i32 @kref_get(i32* %44)
  br label %46

46:                                               ; preds = %36, %35
  %47 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  store %struct.vsp1_pipeline* %47, %struct.vsp1_pipeline** %2, align 8
  br label %48

48:                                               ; preds = %46, %28, %18
  %49 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  ret %struct.vsp1_pipeline* %49
}

declare dso_local %struct.vsp1_pipeline* @kzalloc(i32, i32) #1

declare dso_local %struct.vsp1_pipeline* @ERR_PTR(i32) #1

declare dso_local i32 @vsp1_video_pipeline_init(%struct.vsp1_pipeline*, %struct.vsp1_video*) #1

declare dso_local i32 @vsp1_pipeline_reset(%struct.vsp1_pipeline*) #1

declare dso_local i32 @kfree(%struct.vsp1_pipeline*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
