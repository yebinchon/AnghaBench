; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_job_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_job_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deinterlace_ctx = type { %struct.deinterlace_dev*, %struct.TYPE_2__ }
%struct.deinterlace_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Task ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Task not ready to run\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @deinterlace_job_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deinterlace_job_ready(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.deinterlace_ctx*, align 8
  %5 = alloca %struct.deinterlace_dev*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.deinterlace_ctx*
  store %struct.deinterlace_ctx* %7, %struct.deinterlace_ctx** %4, align 8
  %8 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %8, i32 0, i32 0
  %10 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %9, align 8
  store %struct.deinterlace_dev* %10, %struct.deinterlace_dev** %5, align 8
  %11 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @v4l2_m2m_num_src_bufs_ready(i32 %14)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @v4l2_m2m_num_dst_bufs_ready(i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %25, i32 0, i32 0
  %27 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %26, align 8
  %28 = getelementptr inbounds %struct.deinterlace_dev, %struct.deinterlace_dev* %27, i32 0, i32 0
  %29 = call i32 @atomic_read(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %5, align 8
  %33 = call i32 @dprintk(%struct.deinterlace_dev* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %37

34:                                               ; preds = %24, %17, %1
  %35 = load %struct.deinterlace_dev*, %struct.deinterlace_dev** %5, align 8
  %36 = call i32 @dprintk(%struct.deinterlace_dev* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @v4l2_m2m_num_src_bufs_ready(i32) #1

declare dso_local i64 @v4l2_m2m_num_dst_bufs_ready(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dprintk(%struct.deinterlace_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
