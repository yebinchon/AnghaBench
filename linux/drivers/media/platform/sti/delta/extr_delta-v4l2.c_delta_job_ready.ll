; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_job_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_job_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, i64, %struct.TYPE_2__, %struct.delta_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.delta_dev = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"%s not ready: not enough video buffers.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s not ready: not enough video capture buffers.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s job not ready: aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s job ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @delta_job_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_job_ready(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_dev*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.delta_ctx*
  store %struct.delta_ctx* %8, %struct.delta_ctx** %4, align 8
  %9 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %9, i32 0, i32 3
  %11 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  store %struct.delta_dev* %11, %struct.delta_dev** %5, align 8
  %12 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @v4l2_m2m_num_src_bufs_ready(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %21 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %2, align 4
  br label %63

27:                                               ; preds = %1
  %28 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @v4l2_m2m_num_dst_bufs_ready(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %36 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 0, i32* %2, align 4
  br label %63

42:                                               ; preds = %27
  %43 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %49 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 0, i32* %2, align 4
  br label %63

55:                                               ; preds = %42
  %56 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %57 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %47, %34, %19
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @v4l2_m2m_num_src_bufs_ready(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @v4l2_m2m_num_dst_bufs_ready(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
