; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_prepare_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_prepare_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_job = type { %struct.TYPE_14__*, %struct.TYPE_12__*, i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.fdp1_ctx = type { i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_8__, %struct.fdp1_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.fdp1_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.fdp1_buffer = type { %struct.TYPE_12__* }

@.str = private unnamed_addr constant [3 x i8] c"+\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"No free jobs currently available\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"No input buffers currently available\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"+ Buffer en-route...\0A\00", align 1
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Job Queued translen = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fdp1_job* (%struct.fdp1_ctx*)* @fdp1_prepare_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fdp1_job* @fdp1_prepare_job(%struct.fdp1_ctx* %0) #0 {
  %2 = alloca %struct.fdp1_job*, align 8
  %3 = alloca %struct.fdp1_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.fdp1_buffer*, align 8
  %6 = alloca %struct.fdp1_dev*, align 8
  %7 = alloca %struct.fdp1_job*, align 8
  %8 = alloca i32, align 4
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %3, align 8
  %9 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %9, i32 0, i32 6
  %11 = load %struct.fdp1_dev*, %struct.fdp1_dev** %10, align 8
  store %struct.fdp1_dev* %11, %struct.fdp1_dev** %6, align 8
  store i32 1, i32* %8, align 4
  %12 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %13 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @FDP1_DEINT_MODE_USES_NEXT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 2, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store %struct.fdp1_job* null, %struct.fdp1_job** %2, align 8
  br label %159

27:                                               ; preds = %20
  %28 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %29 = call %struct.fdp1_job* @fdp1_job_alloc(%struct.fdp1_dev* %28)
  store %struct.fdp1_job* %29, %struct.fdp1_job** %7, align 8
  %30 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %31 = icmp ne %struct.fdp1_job* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %34 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.fdp1_job* null, %struct.fdp1_job** %2, align 8
  br label %159

35:                                               ; preds = %27
  %36 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %37 = call %struct.TYPE_14__* @fdp1_dequeue_field(%struct.fdp1_ctx* %36)
  %38 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %39 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %38, i32 0, i32 0
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %39, align 8
  %40 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %41 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %46 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %48 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %49 = call i32 @fdp1_job_free(%struct.fdp1_dev* %47, %struct.fdp1_job* %48)
  store %struct.fdp1_job* null, %struct.fdp1_job** %2, align 8
  br label %159

50:                                               ; preds = %35
  %51 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %52 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %56)
  store %struct.vb2_v4l2_buffer* %57, %struct.vb2_v4l2_buffer** %4, align 8
  %58 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %59 = call %struct.fdp1_buffer* @to_fdp1_buffer(%struct.vb2_v4l2_buffer* %58)
  store %struct.fdp1_buffer* %59, %struct.fdp1_buffer** %5, align 8
  %60 = load %struct.fdp1_buffer*, %struct.fdp1_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.fdp1_buffer, %struct.fdp1_buffer* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 0
  %64 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %65 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %64, i32 0, i32 1
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %65, align 8
  %66 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %70 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i32 %68, i32* %74, align 4
  %75 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %79 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  store i32 %77, i32* %83, align 4
  %84 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @FDP1_DEINT_MODE_USES_PREV(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %50
  %94 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %94, i32 0, i32 3
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %98 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %97, i32 0, i32 3
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %98, align 8
  %99 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %100 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %99, i32 0, i32 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %102, i32 0, i32 3
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %103, align 8
  br label %104

104:                                              ; preds = %93, %50
  %105 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @FDP1_DEINT_MODE_USES_NEXT(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %112 = call i32 @fdp1_peek_queued_field(%struct.fdp1_ctx* %111)
  %113 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %114 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %110, %104
  %116 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %117 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %125 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %124, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i32 %123, i32* %130, align 4
  %131 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %132 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %131, i32 0, i32 0
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %139 = and i32 %137, %138
  %140 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %141 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  store i32 %139, i32* %145, align 4
  %146 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %147 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %151 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %152 = call i32 @queue_job(%struct.fdp1_dev* %150, %struct.fdp1_job* %151)
  %153 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %154 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %155 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  store %struct.fdp1_job* %158, %struct.fdp1_job** %2, align 8
  br label %159

159:                                              ; preds = %115, %44, %32, %26
  %160 = load %struct.fdp1_job*, %struct.fdp1_job** %2, align 8
  ret %struct.fdp1_job* %160
}

declare dso_local i32 @dprintk(%struct.fdp1_dev*, i8*, ...) #1

declare dso_local i64 @FDP1_DEINT_MODE_USES_NEXT(i32) #1

declare dso_local %struct.fdp1_job* @fdp1_job_alloc(%struct.fdp1_dev*) #1

declare dso_local %struct.TYPE_14__* @fdp1_dequeue_field(%struct.fdp1_ctx*) #1

declare dso_local i32 @fdp1_job_free(%struct.fdp1_dev*, %struct.fdp1_job*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local %struct.fdp1_buffer* @to_fdp1_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @FDP1_DEINT_MODE_USES_PREV(i32) #1

declare dso_local i32 @fdp1_peek_queued_field(%struct.fdp1_ctx*) #1

declare dso_local i32 @queue_job(%struct.fdp1_dev*, %struct.fdp1_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
