; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_complete_prev_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_complete_prev_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32, %struct.request*, %struct.TYPE_2__* }
%struct.request = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request**)* @mmc_blk_mq_complete_prev_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_mq_complete_prev_req(%struct.mmc_queue* %0, %struct.request** %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request**, align 8
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request** %1, %struct.request*** %4, align 8
  %5 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @mmc_host_done_complete(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %17, i32 0, i32 1
  %19 = load %struct.request*, %struct.request** %18, align 8
  %20 = icmp ne %struct.request* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %44

22:                                               ; preds = %13
  %23 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %24 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %24, i32 0, i32 1
  %26 = load %struct.request*, %struct.request** %25, align 8
  %27 = call i32 @mmc_blk_mq_poll_completion(%struct.mmc_queue* %23, %struct.request* %26)
  %28 = load %struct.request**, %struct.request*** %4, align 8
  %29 = icmp ne %struct.request** %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %31, i32 0, i32 1
  %33 = load %struct.request*, %struct.request** %32, align 8
  %34 = load %struct.request**, %struct.request*** %4, align 8
  store %struct.request* %33, %struct.request** %34, align 8
  br label %41

35:                                               ; preds = %22
  %36 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %37 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %37, i32 0, i32 1
  %39 = load %struct.request*, %struct.request** %38, align 8
  %40 = call i32 @mmc_blk_mq_post_req(%struct.mmc_queue* %36, %struct.request* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %42, i32 0, i32 1
  store %struct.request* null, %struct.request** %43, align 8
  br label %44

44:                                               ; preds = %41, %21
  %45 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %44, %12
  ret void
}

declare dso_local i64 @mmc_host_done_complete(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mmc_blk_mq_poll_completion(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_blk_mq_post_req(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
