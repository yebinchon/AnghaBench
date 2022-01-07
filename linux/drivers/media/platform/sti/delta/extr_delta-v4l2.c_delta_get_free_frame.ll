; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_get_free_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_get_free_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, %struct.TYPE_2__, %struct.delta_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.delta_dev = type { i32 }
%struct.delta_frame = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s no frame available\00", align 1
@EIO = common dso_local global i32 0, align 4
@DELTA_FRAME_M2M = common dso_local global i32 0, align 4
@DELTA_FRAME_FREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s frame[%d] is not free\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s get free frame[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_get_free_frame(%struct.delta_ctx* %0, %struct.delta_frame** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_frame**, align 8
  %6 = alloca %struct.delta_dev*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.delta_frame*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %4, align 8
  store %struct.delta_frame** %1, %struct.delta_frame*** %5, align 8
  %9 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %9, i32 0, i32 2
  %11 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  store %struct.delta_dev* %11, %struct.delta_dev** %6, align 8
  %12 = load %struct.delta_frame**, %struct.delta_frame*** %5, align 8
  store %struct.delta_frame* null, %struct.delta_frame** %12, align 8
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %16)
  store %struct.vb2_v4l2_buffer* %17, %struct.vb2_v4l2_buffer** %7, align 8
  %18 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %19 = icmp ne %struct.vb2_v4l2_buffer* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %22 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %2
  %31 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %32 = call %struct.delta_frame* @to_frame(%struct.vb2_v4l2_buffer* %31)
  store %struct.delta_frame* %32, %struct.delta_frame** %8, align 8
  %33 = load i32, i32* @DELTA_FRAME_M2M, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %36 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %40 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DELTA_FRAME_FREE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %30
  %45 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %46 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %52 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %56 = call i32 @dump_frames_status(%struct.delta_ctx* %55)
  %57 = load i32, i32* @ENODATA, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %30
  %60 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %61 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %67 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %71 = load %struct.delta_frame**, %struct.delta_frame*** %5, align 8
  store %struct.delta_frame* %70, %struct.delta_frame** %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %59, %44, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local %struct.delta_frame* @to_frame(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @dump_frames_status(%struct.delta_ctx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
