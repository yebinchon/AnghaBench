; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_device_frame_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_device_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_dev = type { i32, i32, i32 }
%struct.fdp1_ctx = type { i64, i64, %struct.TYPE_4__, %struct.fdp1_dev*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fdp1_job = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"+\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Instance released before the end of transaction\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"curr_ctx->num_processed %d curr_ctx->translen %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Finishing transaction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_dev*, i32)* @device_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_frame_end(%struct.fdp1_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.fdp1_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdp1_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fdp1_job*, align 8
  store %struct.fdp1_dev* %0, %struct.fdp1_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %9 = call %struct.fdp1_job* @get_hw_queued_job(%struct.fdp1_dev* %8)
  store %struct.fdp1_job* %9, %struct.fdp1_job** %7, align 8
  %10 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %11 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %13 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fdp1_ctx* @v4l2_m2m_get_curr_priv(i32 %14)
  store %struct.fdp1_ctx* %15, %struct.fdp1_ctx** %5, align 8
  %16 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %17 = icmp eq %struct.fdp1_ctx* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %20 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %19, i32 0, i32 2
  %21 = call i32 @v4l2_err(i32* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %103

22:                                               ; preds = %2
  %23 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @FDP1_DEINT_MODE_USES_PREV(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %34 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %35 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fdp1_field_complete(%struct.fdp1_ctx* %33, i32 %36)
  br label %44

38:                                               ; preds = %22
  %39 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %40 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %41 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @fdp1_field_complete(%struct.fdp1_ctx* %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %46 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %50 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @v4l2_m2m_buf_done(i32 %53, i32 %54)
  %56 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %57 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %56, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %57, align 8
  %58 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %59 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %63 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %64 = call i32 @fdp1_job_free(%struct.fdp1_dev* %62, %struct.fdp1_job* %63)
  %65 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %66 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %71)
  %73 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %44
  %81 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80, %44
  %86 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %86, i32 0, i32 3
  %88 = load %struct.fdp1_dev*, %struct.fdp1_dev** %87, align 8
  %89 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %93 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @v4l2_m2m_job_finish(i32 %94, i32 %98)
  br label %103

100:                                              ; preds = %80
  %101 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %5, align 8
  %102 = call i32 @fdp1_device_process(%struct.fdp1_ctx* %101)
  br label %103

103:                                              ; preds = %18, %100, %85
  ret void
}

declare dso_local %struct.fdp1_job* @get_hw_queued_job(%struct.fdp1_dev*) #1

declare dso_local i32 @dprintk(%struct.fdp1_dev*, i8*, ...) #1

declare dso_local %struct.fdp1_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i64 @FDP1_DEINT_MODE_USES_PREV(i32) #1

declare dso_local i32 @fdp1_field_complete(%struct.fdp1_ctx*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v4l2_m2m_buf_done(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fdp1_job_free(%struct.fdp1_dev*, %struct.fdp1_job*) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

declare dso_local i32 @fdp1_device_process(%struct.fdp1_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
