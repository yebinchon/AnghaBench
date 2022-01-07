; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_mq_timed_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_mq_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request_queue* }
%struct.request_queue = type { %struct.mmc_queue* }
%struct.mmc_queue = type { i32, i32, i64 }

@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32)* @mmc_mq_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_mq_timed_out(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.mmc_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %5, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load %struct.mmc_queue*, %struct.mmc_queue** %13, align 8
  store %struct.mmc_queue* %14, %struct.mmc_queue** %6, align 8
  %15 = load %struct.mmc_queue*, %struct.mmc_queue** %6, align 8
  %16 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.mmc_queue*, %struct.mmc_queue** %6, align 8
  %20 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.mmc_queue*, %struct.mmc_queue** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.request*, %struct.request** %3, align 8
  %32 = call i32 @mmc_cqe_timed_out(%struct.request* %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = load %struct.mmc_queue*, %struct.mmc_queue** %6, align 8
  %35 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmc_cqe_timed_out(%struct.request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
