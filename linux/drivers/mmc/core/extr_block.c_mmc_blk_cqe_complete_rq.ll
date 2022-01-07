; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_cqe_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_cqe_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32*, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.request = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.mmc_queue_req = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mmc_request }
%struct.mmc_request = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MMC_CQE_RETRIES = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_cqe_complete_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_cqe_complete_rq(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %12)
  store %struct.mmc_queue_req* %13, %struct.mmc_queue_req** %5, align 8
  %14 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.mmc_request* %16, %struct.mmc_request** %6, align 8
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  %19 = load %struct.request_queue*, %struct.request_queue** %18, align 8
  store %struct.request_queue* %19, %struct.request_queue** %7, align 8
  %20 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.mmc_host*, %struct.mmc_host** %23, align 8
  store %struct.mmc_host* %24, %struct.mmc_host** %8, align 8
  %25 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %26 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %27 = call i32 @mmc_cqe_post_req(%struct.mmc_host* %25, %struct.mmc_request* %26)
  %28 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %29 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %2
  %33 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %34 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %65

45:                                               ; preds = %32, %2
  %46 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %47 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %52 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %59 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  br label %64

63:                                               ; preds = %50, %45
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %57
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %70 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = sext i32 %71 to i64
  %74 = load i64, i64* @MMC_CQE_RETRIES, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.request*, %struct.request** %4, align 8
  %78 = call i32 @blk_mq_requeue_request(%struct.request* %77, i32 1)
  br label %83

79:                                               ; preds = %68
  %80 = load %struct.request*, %struct.request** %4, align 8
  %81 = load i32, i32* @BLK_STS_IOERR, align 4
  %82 = call i32 @blk_mq_end_request(%struct.request* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  br label %112

84:                                               ; preds = %65
  %85 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %86 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load %struct.request*, %struct.request** %4, align 8
  %91 = load i32, i32* @BLK_STS_OK, align 4
  %92 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %93 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @blk_update_request(%struct.request* %90, i32 %91, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load %struct.request*, %struct.request** %4, align 8
  %101 = call i32 @blk_mq_requeue_request(%struct.request* %100, i32 1)
  br label %106

102:                                              ; preds = %89
  %103 = load %struct.request*, %struct.request** %4, align 8
  %104 = load i32, i32* @BLK_STS_OK, align 4
  %105 = call i32 @__blk_mq_end_request(%struct.request* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  br label %111

107:                                              ; preds = %84
  %108 = load %struct.request*, %struct.request** %4, align 8
  %109 = load i32, i32* @BLK_STS_OK, align 4
  %110 = call i32 @blk_mq_end_request(%struct.request* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %106
  br label %112

112:                                              ; preds = %111, %83
  %113 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %114 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %113, i32 0, i32 4
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %118 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %121 = load %struct.request*, %struct.request** %4, align 8
  %122 = call i64 @mmc_issue_type(%struct.mmc_queue* %120, %struct.request* %121)
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %127 = call i64 @mmc_tot_in_flight(%struct.mmc_queue* %126)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %10, align 4
  %130 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %131 = call i32 @mmc_cqe_check_busy(%struct.mmc_queue* %130)
  %132 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %133 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %132, i32 0, i32 4
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %137 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %112
  %141 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %142 = call i32 @blk_mq_run_hw_queues(%struct.request_queue* %141, i32 1)
  br label %143

143:                                              ; preds = %140, %112
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %148 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %151 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %150, i32 0, i32 1
  %152 = call i32 @mmc_put_card(%struct.TYPE_8__* %149, i32* %151)
  br label %153

153:                                              ; preds = %146, %143
  ret void
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i32 @mmc_cqe_post_req(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @blk_mq_requeue_request(%struct.request*, i32) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i64 @blk_update_request(%struct.request*, i32, i32) #1

declare dso_local i32 @__blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mmc_issue_type(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i64 @mmc_tot_in_flight(%struct.mmc_queue*) #1

declare dso_local i32 @mmc_cqe_check_busy(%struct.mmc_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_mq_run_hw_queues(%struct.request_queue*, i32) #1

declare dso_local i32 @mmc_put_card(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
