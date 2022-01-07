; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_post_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_post_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mmc_request }
%struct.mmc_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_mq_post_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_mq_post_req(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  %7 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %8)
  store %struct.mmc_queue_req* %9, %struct.mmc_queue_req** %5, align 8
  %10 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.mmc_request* %12, %struct.mmc_request** %6, align 8
  %13 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.mmc_host*, %struct.mmc_host** %16, align 8
  store %struct.mmc_host* %17, %struct.mmc_host** %7, align 8
  %18 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %19 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %20 = call i32 @mmc_post_req(%struct.mmc_host* %18, %struct.mmc_request* %19, i32 0)
  %21 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %27 = load %struct.request*, %struct.request** %4, align 8
  %28 = call i32 @mmc_blk_mq_complete_rq(%struct.mmc_queue* %26, %struct.request* %27)
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = call i32 @blk_mq_complete_request(%struct.request* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %34 = load %struct.request*, %struct.request** %4, align 8
  %35 = call i32 @mmc_blk_mq_dec_in_flight(%struct.mmc_queue* %33, %struct.request* %34)
  ret void
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i32 @mmc_post_req(%struct.mmc_host*, %struct.mmc_request*, i32) #1

declare dso_local i32 @mmc_blk_mq_complete_rq(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @blk_mq_complete_request(%struct.request*) #1

declare dso_local i32 @mmc_blk_mq_dec_in_flight(%struct.mmc_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
