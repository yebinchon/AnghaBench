; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_job_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_job_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s job not ready: no frame buffers\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s job not ready: no stream buffers\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s job not ready: aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hva_job_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_job_ready(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hva_ctx*, align 8
  %5 = alloca %struct.device*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.hva_ctx*
  store %struct.hva_ctx* %7, %struct.hva_ctx** %4, align 8
  %8 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %9 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %8)
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @v4l2_m2m_num_src_bufs_ready(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %2, align 4
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @v4l2_m2m_num_dst_bufs_ready(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %47

35:                                               ; preds = %22
  %36 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.hva_ctx*, %struct.hva_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32 0, i32* %2, align 4
  br label %47

46:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %40, %29, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @v4l2_m2m_num_src_bufs_ready(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @v4l2_m2m_num_dst_bufs_ready(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
