; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_lite = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@FIMC_IO_DMA = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ST_FLITE_IN_USE = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fimc_lite_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.fimc_lite* @video_drvdata(%struct.file* %6)
  store %struct.fimc_lite* %7, %struct.fimc_lite** %3, align 8
  %8 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.media_entity* %11, %struct.media_entity** %4, align 8
  %12 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %13 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %16 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %15, i32 0, i32 4
  %17 = call i64 @atomic_read(i32* %16)
  %18 = load i64, i64* @FIMC_IO_DMA, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %97

23:                                               ; preds = %1
  %24 = load i32, i32* @ST_FLITE_IN_USE, align 4
  %25 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %26 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %25, i32 0, i32 1
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %29 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i32 @pm_runtime_get_sync(i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %97

36:                                               ; preds = %23
  %37 = load %struct.file*, %struct.file** %2, align 8
  %38 = call i32 @v4l2_fh_open(%struct.file* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %87

42:                                               ; preds = %36
  %43 = load %struct.file*, %struct.file** %2, align 8
  %44 = call i32 @v4l2_fh_is_singular_file(%struct.file* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %48 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %47, i32 0, i32 4
  %49 = call i64 @atomic_read(i32* %48)
  %50 = load i64, i64* @FIMC_IO_DMA, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %42
  br label %97

53:                                               ; preds = %46
  %54 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %55 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %61 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %60, i32 0, i32 3
  %62 = load i32, i32* @open, align 4
  %63 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %64 = call i32 @fimc_pipeline_call(%struct.TYPE_10__* %61, i32 %62, %struct.media_entity* %63, i32 1)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %69 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %67, %53
  %73 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %74 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  %82 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %83 = call i32 @fimc_lite_clear_event_counters(%struct.fimc_lite* %82)
  br label %97

84:                                               ; preds = %72
  %85 = load %struct.file*, %struct.file** %2, align 8
  %86 = call i32 @v4l2_fh_release(%struct.file* %85)
  br label %87

87:                                               ; preds = %84, %41
  %88 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %89 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %88, i32 0, i32 2
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = call i32 @pm_runtime_put_sync(i32* %91)
  %93 = load i32, i32* @ST_FLITE_IN_USE, align 4
  %94 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %95 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %94, i32 0, i32 1
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  br label %97

97:                                               ; preds = %87, %81, %52, %35, %20
  %98 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %99 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.fimc_lite* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @fimc_pipeline_call(%struct.TYPE_10__*, i32, %struct.media_entity*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fimc_lite_clear_event_counters(%struct.fimc_lite*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
