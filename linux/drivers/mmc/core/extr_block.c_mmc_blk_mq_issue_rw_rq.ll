; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_issue_rw_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_issue_rw_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@mmc_blk_mq_req_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_queue*, %struct.request*)* @mmc_blk_mq_issue_rw_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_mq_issue_rw_rq(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %9)
  store %struct.mmc_queue_req* %10, %struct.mmc_queue_req** %5, align 8
  %11 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.mmc_host*, %struct.mmc_host** %14, align 8
  store %struct.mmc_host* %15, %struct.mmc_host** %6, align 8
  store %struct.request* null, %struct.request** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %17 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %21 = call i32 @mmc_blk_rw_rq_prep(%struct.mmc_queue_req* %16, %struct.TYPE_8__* %19, i32 0, %struct.mmc_queue* %20)
  %22 = load i32, i32* @mmc_blk_mq_req_done, align 4
  %23 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %24 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %28 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @mmc_pre_req(%struct.mmc_host* %27, %struct.TYPE_7__* %30)
  %32 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %33 = call i32 @mmc_blk_rw_wait(%struct.mmc_queue* %32, %struct.request** %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %68

37:                                               ; preds = %2
  %38 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %41 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @mmc_start_request(%struct.mmc_host* %40, %struct.TYPE_7__* %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.request*, %struct.request** %7, align 8
  %46 = icmp ne %struct.request* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %49 = load %struct.request*, %struct.request** %7, align 8
  %50 = call i32 @mmc_blk_mq_post_req(%struct.mmc_queue* %48, %struct.request* %49)
  br label %51

51:                                               ; preds = %47, %37
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %56 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %62 = call i64 @mmc_host_done_complete(%struct.mmc_host* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %57
  %65 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %66 = call i32 @mmc_retune_release(%struct.mmc_host* %65)
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %73 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %74 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @mmc_post_req(%struct.mmc_host* %72, %struct.TYPE_7__* %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %68
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i32 @mmc_blk_rw_rq_prep(%struct.mmc_queue_req*, %struct.TYPE_8__*, i32, %struct.mmc_queue*) #1

declare dso_local i32 @mmc_pre_req(%struct.mmc_host*, %struct.TYPE_7__*) #1

declare dso_local i32 @mmc_blk_rw_wait(%struct.mmc_queue*, %struct.request**) #1

declare dso_local i32 @mmc_start_request(%struct.mmc_host*, %struct.TYPE_7__*) #1

declare dso_local i32 @mmc_blk_mq_post_req(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i64 @mmc_host_done_complete(%struct.mmc_host*) #1

declare dso_local i32 @mmc_retune_release(%struct.mmc_host*) #1

declare dso_local i32 @mmc_post_req(%struct.mmc_host*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
