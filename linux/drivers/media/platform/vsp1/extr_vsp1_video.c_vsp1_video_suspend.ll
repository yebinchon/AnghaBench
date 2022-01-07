; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_device = type { i32, %struct.vsp1_rwpf**, %struct.TYPE_3__* }
%struct.vsp1_rwpf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.vsp1_pipeline* }
%struct.vsp1_pipeline = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@VSP1_PIPELINE_RUNNING = common dso_local global i64 0, align 8
@VSP1_PIPELINE_STOPPING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"pipeline %u stop timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_video_suspend(%struct.vsp1_device* %0) #0 {
  %2 = alloca %struct.vsp1_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_rwpf*, align 8
  %7 = alloca %struct.vsp1_pipeline*, align 8
  %8 = alloca %struct.vsp1_rwpf*, align 8
  %9 = alloca %struct.vsp1_pipeline*, align 8
  store %struct.vsp1_device* %0, %struct.vsp1_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %56, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %13 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %11, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %10
  %19 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %20 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %19, i32 0, i32 1
  %21 = load %struct.vsp1_rwpf**, %struct.vsp1_rwpf*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %21, i64 %23
  %25 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %24, align 8
  store %struct.vsp1_rwpf* %25, %struct.vsp1_rwpf** %6, align 8
  %26 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %27 = icmp eq %struct.vsp1_rwpf* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %56

29:                                               ; preds = %18
  %30 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %31 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %32, align 8
  store %struct.vsp1_pipeline* %33, %struct.vsp1_pipeline** %7, align 8
  %34 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %35 = icmp eq %struct.vsp1_pipeline* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %56

37:                                               ; preds = %29
  %38 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %39 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %38, i32 0, i32 2
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %43 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VSP1_PIPELINE_RUNNING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i64, i64* @VSP1_PIPELINE_STOPPING, align 8
  %49 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %50 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %37
  %52 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %7, align 8
  %53 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %52, i32 0, i32 2
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %36, %28
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %10

59:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %107, %59
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %63 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ult i32 %61, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %60
  %69 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %70 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %69, i32 0, i32 1
  %71 = load %struct.vsp1_rwpf**, %struct.vsp1_rwpf*** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %71, i64 %73
  %75 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %74, align 8
  store %struct.vsp1_rwpf* %75, %struct.vsp1_rwpf** %8, align 8
  %76 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %8, align 8
  %77 = icmp eq %struct.vsp1_rwpf* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %107

79:                                               ; preds = %68
  %80 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %8, align 8
  %81 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %82, align 8
  store %struct.vsp1_pipeline* %83, %struct.vsp1_pipeline** %9, align 8
  %84 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %85 = icmp eq %struct.vsp1_pipeline* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %107

87:                                               ; preds = %79
  %88 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %89 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %92 = call i32 @vsp1_pipeline_stopped(%struct.vsp1_pipeline* %91)
  %93 = call i32 @msecs_to_jiffies(i32 500)
  %94 = call i32 @wait_event_timeout(i32 %90, i32 %92, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %99 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %8, align 8
  %102 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_warn(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %97, %87
  br label %107

107:                                              ; preds = %106, %86, %78
  %108 = load i32, i32* %4, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %60

110:                                              ; preds = %60
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @vsp1_pipeline_stopped(%struct.vsp1_pipeline*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
