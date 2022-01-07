; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_m2m_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_m2m_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { i64, %struct.TYPE_2__, %struct.fdp1_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.fdp1_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.fdp1_buffer = type { i32, %struct.fdp1_field_buffer* }
%struct.fdp1_field_buffer = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"+\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Queued Buffer [%d] last_field:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"No jobs were processed. M2M action complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fdp1_m2m_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_m2m_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fdp1_ctx*, align 8
  %4 = alloca %struct.fdp1_dev*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.fdp1_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fdp1_field_buffer*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.fdp1_ctx*
  store %struct.fdp1_ctx* %10, %struct.fdp1_ctx** %3, align 8
  %11 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %11, i32 0, i32 2
  %13 = load %struct.fdp1_dev*, %struct.fdp1_dev** %12, align 8
  store %struct.fdp1_dev* %13, %struct.fdp1_dev** %4, align 8
  %14 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %15 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %21)
  store %struct.vb2_v4l2_buffer* %22, %struct.vb2_v4l2_buffer** %5, align 8
  %23 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %24 = call %struct.fdp1_buffer* @to_fdp1_buffer(%struct.vb2_v4l2_buffer* %23)
  store %struct.fdp1_buffer* %24, %struct.fdp1_buffer** %6, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %47, %1
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.fdp1_buffer*, %struct.fdp1_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.fdp1_buffer, %struct.fdp1_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.fdp1_buffer*, %struct.fdp1_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.fdp1_buffer, %struct.fdp1_buffer* %32, i32 0, i32 1
  %34 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %34, i64 %36
  store %struct.fdp1_field_buffer* %37, %struct.fdp1_field_buffer** %8, align 8
  %38 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %39 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %40 = call i32 @fdp1_queue_field(%struct.fdp1_ctx* %38, %struct.fdp1_field_buffer* %39)
  %41 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %44 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %25

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %55, %50
  %52 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %53 = call i64 @fdp1_prepare_job(%struct.fdp1_ctx* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %51

56:                                               ; preds = %51
  %57 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %63 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %65 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @v4l2_m2m_job_finish(i32 %66, i32 %70)
  br label %75

72:                                               ; preds = %56
  %73 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %74 = call i32 @fdp1_device_process(%struct.fdp1_ctx* %73)
  br label %75

75:                                               ; preds = %72, %61
  ret void
}

declare dso_local i32 @dprintk(%struct.fdp1_dev*, i8*, ...) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.fdp1_buffer* @to_fdp1_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @fdp1_queue_field(%struct.fdp1_ctx*, %struct.fdp1_field_buffer*) #1

declare dso_local i64 @fdp1_prepare_job(%struct.fdp1_ctx*) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

declare dso_local i32 @fdp1_device_process(%struct.fdp1_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
