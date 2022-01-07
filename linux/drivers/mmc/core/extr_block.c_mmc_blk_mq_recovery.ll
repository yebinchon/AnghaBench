; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32, %struct.request*, %struct.TYPE_2__* }
%struct.request = type { i32 }
%struct.TYPE_2__ = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.mmc_queue_req = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_blk_mq_recovery(%struct.mmc_queue* %0) #0 {
  %2 = alloca %struct.mmc_queue*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  store %struct.mmc_queue* %0, %struct.mmc_queue** %2, align 8
  %6 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %6, i32 0, i32 1
  %8 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %8, %struct.request** %3, align 8
  %9 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %4, align 8
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %14)
  store %struct.mmc_queue_req* %15, %struct.mmc_queue_req** %5, align 8
  %16 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %17 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %16, i32 0, i32 1
  store %struct.request* null, %struct.request** %17, align 8
  %18 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %19 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %20, i32 0, i32 0
  %22 = call i64 @mmc_blk_rq_error(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %26 = call i32 @mmc_retune_hold_now(%struct.mmc_host* %25)
  %27 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = call i32 @mmc_blk_mq_rw_recovery(%struct.mmc_queue* %27, %struct.request* %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %32 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %33 = call i32 @mmc_blk_urgent_bkops(%struct.mmc_queue* %31, %struct.mmc_queue_req* %32)
  %34 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %35 = load %struct.request*, %struct.request** %3, align 8
  %36 = call i32 @mmc_blk_mq_post_req(%struct.mmc_queue* %34, %struct.request* %35)
  ret void
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i64 @mmc_blk_rq_error(i32*) #1

declare dso_local i32 @mmc_retune_hold_now(%struct.mmc_host*) #1

declare dso_local i32 @mmc_blk_mq_rw_recovery(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_blk_urgent_bkops(%struct.mmc_queue*, %struct.mmc_queue_req*) #1

declare dso_local i32 @mmc_blk_mq_post_req(%struct.mmc_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
