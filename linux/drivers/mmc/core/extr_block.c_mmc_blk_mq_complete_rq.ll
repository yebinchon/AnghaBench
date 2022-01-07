; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@MMC_MAX_RETRIES = common dso_local global i64 0, align 8
@RQF_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_mq_complete_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_mq_complete_rq(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %7)
  store %struct.mmc_queue_req* %8, %struct.mmc_queue_req** %5, align 8
  %9 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %10 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = load i32, i32* @BLK_STS_OK, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @blk_update_request(%struct.request* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call i32 @blk_mq_requeue_request(%struct.request* %23, i32 1)
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.request*, %struct.request** %4, align 8
  %27 = load i32, i32* @BLK_STS_OK, align 4
  %28 = call i32 @__blk_mq_end_request(%struct.request* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  br label %67

30:                                               ; preds = %2
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = call i32 @blk_rq_bytes(%struct.request* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.request*, %struct.request** %4, align 8
  %36 = load i32, i32* @BLK_STS_IOERR, align 4
  %37 = call i32 @__blk_mq_end_request(%struct.request* %35, i32 %36)
  br label %66

38:                                               ; preds = %30
  %39 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = sext i32 %41 to i64
  %44 = load i64, i64* @MMC_MAX_RETRIES, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.request*, %struct.request** %4, align 8
  %48 = call i32 @blk_mq_requeue_request(%struct.request* %47, i32 1)
  br label %65

49:                                               ; preds = %38
  %50 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @mmc_card_removed(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @RQF_QUIET, align 4
  %57 = load %struct.request*, %struct.request** %4, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.request*, %struct.request** %4, align 8
  %63 = load i32, i32* @BLK_STS_IOERR, align 4
  %64 = call i32 @blk_mq_end_request(%struct.request* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %46
  br label %66

66:                                               ; preds = %65, %34
  br label %67

67:                                               ; preds = %66, %29
  ret void
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i64 @blk_update_request(%struct.request*, i32, i32) #1

declare dso_local i32 @blk_mq_requeue_request(%struct.request*, i32) #1

declare dso_local i32 @__blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @mmc_card_removed(i32) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
