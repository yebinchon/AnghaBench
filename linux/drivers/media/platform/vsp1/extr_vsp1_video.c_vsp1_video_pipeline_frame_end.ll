; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_pipeline_frame_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_pipeline_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vsp1_device* }
%struct.vsp1_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VSP1_DL_FRAME_END_COMPLETED = common dso_local global i32 0, align 4
@VSP1_PIPELINE_STOPPED = common dso_local global i32 0, align 4
@VSP1_PIPELINE_STOPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_pipeline*, i32)* @vsp1_video_pipeline_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsp1_video_pipeline_frame_end(%struct.vsp1_pipeline* %0, i32 %1) #0 {
  %3 = alloca %struct.vsp1_pipeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vsp1_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %10 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.vsp1_device*, %struct.vsp1_device** %13, align 8
  store %struct.vsp1_device* %14, %struct.vsp1_device** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @VSP1_DL_FRAME_END_COMPLETED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %23 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %22, i32 0, i32 1
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %54, %2
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.vsp1_device*, %struct.vsp1_device** %5, align 8
  %29 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %27, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %26
  %35 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %36 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %35, i32 0, i32 4
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %54

44:                                               ; preds = %34
  %45 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %46 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %47 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @vsp1_video_frame_end(%struct.vsp1_pipeline* %45, %struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %44, %43
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %26

57:                                               ; preds = %26
  %58 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %59 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %60 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @vsp1_video_frame_end(%struct.vsp1_pipeline* %58, %struct.TYPE_6__* %61)
  %63 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %64 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @VSP1_PIPELINE_STOPPED, align 4
  %67 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %68 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @VSP1_PIPELINE_STOPPING, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %74 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %73, i32 0, i32 2
  %75 = call i32 @wake_up(i32* %74)
  br label %84

76:                                               ; preds = %57
  %77 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %78 = call i64 @vsp1_pipeline_ready(%struct.vsp1_pipeline* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %82 = call i32 @vsp1_video_pipeline_run(%struct.vsp1_pipeline* %81)
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %72
  %85 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %86 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %85, i32 0, i32 1
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vsp1_video_frame_end(%struct.vsp1_pipeline*, %struct.TYPE_6__*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @vsp1_pipeline_ready(%struct.vsp1_pipeline*) #1

declare dso_local i32 @vsp1_video_pipeline_run(%struct.vsp1_pipeline*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
