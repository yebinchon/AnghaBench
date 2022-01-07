; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_du_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_du_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vsp1_du_atomic_pipe_config = type { %struct.vsp1_du_writeback_config, i32 }
%struct.vsp1_du_writeback_config = type { i32*, i32, i64 }
%struct.vsp1_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.vsp1_drm_pipeline* }
%struct.vsp1_drm_pipeline = type { i32, %struct.vsp1_pipeline }
%struct.vsp1_pipeline = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_du_atomic_flush(%struct.device* %0, i32 %1, %struct.vsp1_du_atomic_pipe_config* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_du_atomic_pipe_config*, align 8
  %7 = alloca %struct.vsp1_device*, align 8
  %8 = alloca %struct.vsp1_drm_pipeline*, align 8
  %9 = alloca %struct.vsp1_pipeline*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vsp1_du_writeback_config*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vsp1_du_atomic_pipe_config* %2, %struct.vsp1_du_atomic_pipe_config** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.vsp1_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.vsp1_device* %13, %struct.vsp1_device** %7, align 8
  %14 = load %struct.vsp1_device*, %struct.vsp1_device** %7, align 8
  %15 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %18, i64 %20
  store %struct.vsp1_drm_pipeline* %21, %struct.vsp1_drm_pipeline** %8, align 8
  %22 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %8, align 8
  %23 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %22, i32 0, i32 1
  store %struct.vsp1_pipeline* %23, %struct.vsp1_pipeline** %9, align 8
  %24 = load %struct.vsp1_du_atomic_pipe_config*, %struct.vsp1_du_atomic_pipe_config** %6, align 8
  %25 = getelementptr inbounds %struct.vsp1_du_atomic_pipe_config, %struct.vsp1_du_atomic_pipe_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %8, align 8
  %28 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.vsp1_device*, %struct.vsp1_device** %7, align 8
  %30 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.vsp1_du_atomic_pipe_config*, %struct.vsp1_du_atomic_pipe_config** %6, align 8
  %35 = getelementptr inbounds %struct.vsp1_du_atomic_pipe_config, %struct.vsp1_du_atomic_pipe_config* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.vsp1_du_writeback_config, %struct.vsp1_du_writeback_config* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %100

39:                                               ; preds = %3
  %40 = load %struct.vsp1_du_atomic_pipe_config*, %struct.vsp1_du_atomic_pipe_config** %6, align 8
  %41 = getelementptr inbounds %struct.vsp1_du_atomic_pipe_config, %struct.vsp1_du_atomic_pipe_config* %40, i32 0, i32 0
  store %struct.vsp1_du_writeback_config* %41, %struct.vsp1_du_writeback_config** %11, align 8
  %42 = load %struct.vsp1_device*, %struct.vsp1_device** %7, align 8
  %43 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %44 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.vsp1_du_writeback_config*, %struct.vsp1_du_writeback_config** %11, align 8
  %47 = getelementptr inbounds %struct.vsp1_du_writeback_config, %struct.vsp1_du_writeback_config* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vsp1_du_writeback_config*, %struct.vsp1_du_writeback_config** %11, align 8
  %50 = getelementptr inbounds %struct.vsp1_du_writeback_config, %struct.vsp1_du_writeback_config* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @vsp1_du_pipeline_set_rwpf_format(%struct.vsp1_device* %42, %struct.TYPE_6__* %45, i64 %48, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %106

59:                                               ; preds = %39
  %60 = load %struct.vsp1_du_writeback_config*, %struct.vsp1_du_writeback_config** %11, align 8
  %61 = getelementptr inbounds %struct.vsp1_du_writeback_config, %struct.vsp1_du_writeback_config* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %66 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %64, i32* %71, align 4
  %72 = load %struct.vsp1_du_writeback_config*, %struct.vsp1_du_writeback_config** %11, align 8
  %73 = getelementptr inbounds %struct.vsp1_du_writeback_config, %struct.vsp1_du_writeback_config* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %78 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %76, i32* %83, align 4
  %84 = load %struct.vsp1_du_writeback_config*, %struct.vsp1_du_writeback_config** %11, align 8
  %85 = getelementptr inbounds %struct.vsp1_du_writeback_config, %struct.vsp1_du_writeback_config* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %90 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %88, i32* %95, align 4
  %96 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %97 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %59, %3
  %101 = load %struct.vsp1_device*, %struct.vsp1_device** %7, align 8
  %102 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %103 = call i32 @vsp1_du_pipeline_setup_inputs(%struct.vsp1_device* %101, %struct.vsp1_pipeline* %102)
  %104 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %9, align 8
  %105 = call i32 @vsp1_du_pipeline_configure(%struct.vsp1_pipeline* %104)
  br label %106

106:                                              ; preds = %100, %58
  %107 = load %struct.vsp1_device*, %struct.vsp1_device** %7, align 8
  %108 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  ret void
}

declare dso_local %struct.vsp1_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vsp1_du_pipeline_set_rwpf_format(%struct.vsp1_device*, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @vsp1_du_pipeline_setup_inputs(%struct.vsp1_device*, %struct.vsp1_pipeline*) #1

declare dso_local i32 @vsp1_du_pipeline_configure(%struct.vsp1_pipeline*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
