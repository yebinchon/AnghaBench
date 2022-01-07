; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_dev = type { i32, %struct.TYPE_8__*, i32, %struct.fimc_vid_cap }
%struct.TYPE_8__ = type { i32 }
%struct.fimc_vid_cap = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"pid: %d, state: 0x%lx\00", align 1
@current = common dso_local global i32 0, align 4
@ST_CAPT_BUSY = common dso_local global i32 0, align 4
@ST_CAPT_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fimc_capture_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_capture_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_vid_cap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.fimc_dev* @video_drvdata(%struct.file* %7)
  store %struct.fimc_dev* %8, %struct.fimc_dev** %3, align 8
  %9 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %9, i32 0, i32 3
  store %struct.fimc_vid_cap* %10, %struct.fimc_vid_cap** %4, align 8
  %11 = load %struct.file*, %struct.file** %2, align 8
  %12 = call i32 @v4l2_fh_is_singular_file(%struct.file* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @task_pid_nr(i32 %13)
  %15 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %20 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %26 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %31 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @media_pipeline_stop(%struct.TYPE_9__* %33)
  %35 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %36 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %24, %1
  %38 = load %struct.file*, %struct.file** %2, align 8
  %39 = call i32 @_vb2_fop_release(%struct.file* %38, i32* null)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i32, i32* @ST_CAPT_BUSY, align 4
  %44 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %45 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %44, i32 0, i32 2
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %48 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %47, i32 0, i32 1
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @fimc_pipeline_call(%struct.TYPE_10__* %48, i32 %49)
  %51 = load i32, i32* @ST_CAPT_SUSPENDED, align 4
  %52 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %53 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %52, i32 0, i32 2
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %56 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %55, i32 0, i32 1
  %57 = call i32 @fimc_md_graph_lock(%struct.TYPE_10__* %56)
  %58 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %59 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %66 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %65, i32 0, i32 1
  %67 = call i32 @fimc_md_graph_unlock(%struct.TYPE_10__* %66)
  br label %68

68:                                               ; preds = %42, %37
  %69 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %70 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @pm_runtime_put_sync(i32* %72)
  %74 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %75 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.fimc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @media_pipeline_stop(%struct.TYPE_9__*) #1

declare dso_local i32 @_vb2_fop_release(%struct.file*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fimc_pipeline_call(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @fimc_md_graph_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @fimc_md_graph_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
