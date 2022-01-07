; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_poll_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_poll_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_mq_poll_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_mq_poll_completion(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %7)
  store %struct.mmc_queue_req* %8, %struct.mmc_queue_req** %5, align 8
  %9 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %6, align 8
  %14 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %14, i32 0, i32 0
  %16 = call i64 @mmc_blk_rq_error(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = call i64 @mmc_blk_card_busy(%struct.TYPE_2__* %21, %struct.request* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18, %2
  %26 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %27 = load %struct.request*, %struct.request** %4, align 8
  %28 = call i32 @mmc_blk_mq_rw_recovery(%struct.mmc_queue* %26, %struct.request* %27)
  br label %35

29:                                               ; preds = %18
  %30 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = call i32 @mmc_blk_rw_reset_success(%struct.mmc_queue* %30, %struct.request* %31)
  %33 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %34 = call i32 @mmc_retune_release(%struct.mmc_host* %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %37 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %38 = call i32 @mmc_blk_urgent_bkops(%struct.mmc_queue* %36, %struct.mmc_queue_req* %37)
  ret void
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i64 @mmc_blk_rq_error(i32*) #1

declare dso_local i64 @mmc_blk_card_busy(%struct.TYPE_2__*, %struct.request*) #1

declare dso_local i32 @mmc_blk_mq_rw_recovery(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_blk_rw_reset_success(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_retune_release(%struct.mmc_host*) #1

declare dso_local i32 @mmc_blk_urgent_bkops(%struct.mmc_queue*, %struct.mmc_queue_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
