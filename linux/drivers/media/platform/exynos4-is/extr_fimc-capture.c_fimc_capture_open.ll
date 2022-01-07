; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_dev = type { i32, %struct.TYPE_5__*, i32, %struct.fimc_vid_cap }
%struct.TYPE_5__ = type { i32 }
%struct.fimc_vid_cap = type { i32, i32, i64, %struct.exynos_video_entity }
%struct.exynos_video_entity = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pid: %d, state: 0x%lx\00", align 1
@current = common dso_local global i32 0, align 4
@ST_CAPT_BUSY = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fimc_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_capture_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_vid_cap*, align 8
  %5 = alloca %struct.exynos_video_entity*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.fimc_dev* @video_drvdata(%struct.file* %7)
  store %struct.fimc_dev* %8, %struct.fimc_dev** %3, align 8
  %9 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %9, i32 0, i32 3
  store %struct.fimc_vid_cap* %10, %struct.fimc_vid_cap** %4, align 8
  %11 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %12 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %11, i32 0, i32 3
  store %struct.exynos_video_entity* %12, %struct.exynos_video_entity** %5, align 8
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @current, align 4
  %16 = call i32 @task_pid_nr(i32 %15)
  %17 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %18 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %22 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %25 = call i64 @fimc_m2m_active(%struct.fimc_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %127

28:                                               ; preds = %1
  %29 = load i32, i32* @ST_CAPT_BUSY, align 4
  %30 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %31 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %30, i32 0, i32 2
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %34 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @pm_runtime_get_sync(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %127

41:                                               ; preds = %28
  %42 = load %struct.file*, %struct.file** %2, align 8
  %43 = call i32 @v4l2_fh_open(%struct.file* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %48 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @pm_runtime_put_sync(i32* %50)
  br label %127

52:                                               ; preds = %41
  %53 = load %struct.file*, %struct.file** %2, align 8
  %54 = call i64 @v4l2_fh_is_singular_file(%struct.file* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %126

56:                                               ; preds = %52
  %57 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %58 = call i32 @fimc_md_graph_lock(%struct.exynos_video_entity* %57)
  %59 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %60 = load i32, i32* @open, align 4
  %61 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %62 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @fimc_pipeline_call(%struct.exynos_video_entity* %59, i32 %60, %struct.TYPE_6__* %63, i32 1)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %56
  %68 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %69 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %74 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %79 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @fimc_ctrls_delete(i32 %80)
  %82 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %83 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fimc_ctrls_create(i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %90 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %77
  br label %92

92:                                               ; preds = %91, %72, %67, %56
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %97 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %95, %92
  %103 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %104 = call i32 @fimc_md_graph_unlock(%struct.exynos_video_entity* %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %109 = call i32 @fimc_capture_set_default_format(%struct.fimc_dev* %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load i32, i32* @ST_CAPT_BUSY, align 4
  %115 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %116 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %115, i32 0, i32 2
  %117 = call i32 @clear_bit(i32 %114, i32* %116)
  %118 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %119 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = call i32 @pm_runtime_put_sync(i32* %121)
  %123 = load %struct.file*, %struct.file** %2, align 8
  %124 = call i32 @v4l2_fh_release(%struct.file* %123)
  br label %125

125:                                              ; preds = %113, %110
  br label %126

126:                                              ; preds = %125, %52
  br label %127

127:                                              ; preds = %126, %46, %40, %27
  %128 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %129 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.fimc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @fimc_m2m_active(%struct.fimc_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @fimc_md_graph_lock(%struct.exynos_video_entity*) #1

declare dso_local i32 @fimc_pipeline_call(%struct.exynos_video_entity*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @fimc_ctrls_delete(i32) #1

declare dso_local i32 @fimc_ctrls_create(i32) #1

declare dso_local i32 @fimc_md_graph_unlock(%struct.exynos_video_entity*) #1

declare dso_local i32 @fimc_capture_set_default_format(%struct.fimc_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
