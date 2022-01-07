; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_exit_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_exit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @mmc_exit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_exit_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %6)
  store %struct.mmc_queue_req* %7, %struct.mmc_queue_req** %5, align 8
  %8 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %9 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @kfree(i32* %10)
  %12 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  ret void
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
