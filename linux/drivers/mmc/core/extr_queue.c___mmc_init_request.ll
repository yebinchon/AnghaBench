; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c___mmc_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c___mmc_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { %struct.mmc_card* }
%struct.mmc_card = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_queue*, %struct.request*, i32)* @__mmc_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mmc_init_request(%struct.mmc_queue* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_queue_req*, align 8
  %9 = alloca %struct.mmc_card*, align 8
  %10 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_queue* %0, %struct.mmc_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.request*, %struct.request** %6, align 8
  %12 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %11)
  store %struct.mmc_queue_req* %12, %struct.mmc_queue_req** %8, align 8
  %13 = load %struct.mmc_queue*, %struct.mmc_queue** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %13, i32 0, i32 0
  %15 = load %struct.mmc_card*, %struct.mmc_card** %14, align 8
  store %struct.mmc_card* %15, %struct.mmc_card** %9, align 8
  %16 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 0
  %18 = load %struct.mmc_host*, %struct.mmc_host** %17, align 8
  store %struct.mmc_host* %18, %struct.mmc_host** %10, align 8
  %19 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %20 = call i32 @mmc_get_max_segments(%struct.mmc_host* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @mmc_alloc_sg(i32 %20, i32 %21)
  %23 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %8, align 8
  %24 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %8, align 8
  %26 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i32 @mmc_alloc_sg(i32, i32) #1

declare dso_local i32 @mmc_get_max_segments(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
