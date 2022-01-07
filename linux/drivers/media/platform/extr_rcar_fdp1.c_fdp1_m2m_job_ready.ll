; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_m2m_job_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_m2m_job_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { i32, %struct.TYPE_4__, %struct.fdp1_q_data }
%struct.TYPE_4__ = type { i32 }
%struct.fdp1_q_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"+ Src: %d : Dst: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Not enough buffers available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fdp1_m2m_job_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp1_m2m_job_ready(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fdp1_ctx*, align 8
  %5 = alloca %struct.fdp1_q_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.fdp1_ctx*
  store %struct.fdp1_ctx* %9, %struct.fdp1_ctx** %4, align 8
  %10 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %10, i32 0, i32 2
  store %struct.fdp1_q_data* %11, %struct.fdp1_q_data** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %12 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @v4l2_m2m_num_src_bufs_ready(i32 %18)
  %20 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @v4l2_m2m_num_dst_bufs_ready(i32 %23)
  %25 = call i32 (i32, i8*, ...) @dprintk(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24)
  %26 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %5, align 8
  %27 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 2, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @v4l2_m2m_num_src_bufs_ready(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @v4l2_m2m_num_dst_bufs_ready(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41, %33
  %50 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dprintk(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

54:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @v4l2_m2m_num_src_bufs_ready(i32) #1

declare dso_local i32 @v4l2_m2m_num_dst_bufs_ready(i32) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
