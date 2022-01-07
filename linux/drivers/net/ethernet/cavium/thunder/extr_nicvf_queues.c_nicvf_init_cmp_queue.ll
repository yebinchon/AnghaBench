; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_init_cmp_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_init_cmp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { double, i32 }
%struct.cmp_queue = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CMP_QUEUE_DESC_SIZE = common dso_local global i32 0, align 4
@NICVF_CQ_BASE_ALIGN_BYTES = common dso_local global i32 0, align 4
@CMP_QUEUE_CQE_THRESH = common dso_local global i32 0, align 4
@CMP_QUEUE_TIMER_THRESH = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.cmp_queue*, i32)* @nicvf_init_cmp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_init_cmp_queue(%struct.nicvf* %0, %struct.cmp_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.cmp_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.cmp_queue* %1, %struct.cmp_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %10 = load %struct.cmp_queue*, %struct.cmp_queue** %6, align 8
  %11 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %10, i32 0, i32 1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @CMP_QUEUE_DESC_SIZE, align 4
  %14 = load i32, i32* @NICVF_CQ_BASE_ALIGN_BYTES, align 4
  %15 = call i32 @nicvf_alloc_q_desc_mem(%struct.nicvf* %9, %struct.TYPE_2__* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.cmp_queue*, %struct.cmp_queue** %6, align 8
  %22 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cmp_queue*, %struct.cmp_queue** %6, align 8
  %26 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %28 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @pass1_silicon(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %35

33:                                               ; preds = %20
  %34 = load i32, i32* @CMP_QUEUE_CQE_THRESH, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  %37 = load %struct.cmp_queue*, %struct.cmp_queue** %6, align 8
  %38 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load double, double* @CMP_QUEUE_TIMER_THRESH, align 8
  %40 = fmul double %39, 5.000000e-02
  %41 = fsub double %40, 1.000000e+00
  %42 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %43 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %42, i32 0, i32 0
  store double %41, double* %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %35, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @nicvf_alloc_q_desc_mem(%struct.nicvf*, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i64 @pass1_silicon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
