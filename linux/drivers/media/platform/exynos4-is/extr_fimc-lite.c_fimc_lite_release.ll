; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_lite = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@FIMC_IO_DMA = common dso_local global i64 0, align 8
@close = common dso_local global i32 0, align 4
@ST_FLITE_IN_USE = common dso_local global i32 0, align 4
@ST_FLITE_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fimc_lite_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.media_entity*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.fimc_lite* @video_drvdata(%struct.file* %5)
  store %struct.fimc_lite* %6, %struct.fimc_lite** %3, align 8
  %7 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %8 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.media_entity* %10, %struct.media_entity** %4, align 8
  %11 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %12 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.file*, %struct.file** %2, align 8
  %15 = call i64 @v4l2_fh_is_singular_file(%struct.file* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %1
  %18 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %19 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %18, i32 0, i32 5
  %20 = call i64 @atomic_read(i32* %19)
  %21 = load i64, i64* @FIMC_IO_DMA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %17
  %24 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %25 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %30 = call i32 @media_pipeline_stop(%struct.media_entity* %29)
  %31 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %32 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %35 = call i32 @fimc_lite_stop_capture(%struct.fimc_lite* %34, i32 0)
  %36 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %37 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %36, i32 0, i32 4
  %38 = load i32, i32* @close, align 4
  %39 = call i32 @fimc_pipeline_call(%struct.TYPE_10__* %37, i32 %38)
  %40 = load i32, i32* @ST_FLITE_IN_USE, align 4
  %41 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %42 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %41, i32 0, i32 2
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  %44 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %45 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %51 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %55 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %60

60:                                               ; preds = %33, %17, %1
  %61 = load %struct.file*, %struct.file** %2, align 8
  %62 = call i32 @_vb2_fop_release(%struct.file* %61, i32* null)
  %63 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %64 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %63, i32 0, i32 3
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = call i32 @pm_runtime_put(i32* %66)
  %68 = load i32, i32* @ST_FLITE_SUSPENDED, align 4
  %69 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %70 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %69, i32 0, i32 2
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  %72 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %73 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  ret i32 0
}

declare dso_local %struct.fimc_lite* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @media_pipeline_stop(%struct.media_entity*) #1

declare dso_local i32 @fimc_lite_stop_capture(%struct.fimc_lite*, i32) #1

declare dso_local i32 @fimc_pipeline_call(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_vb2_fop_release(%struct.file*, i32*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
