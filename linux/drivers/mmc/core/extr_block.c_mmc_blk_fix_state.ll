; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_fix_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_fix_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { %struct.mmc_blk_request }
%struct.mmc_blk_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.request*)* @mmc_blk_fix_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_fix_state(%struct.mmc_card* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  %6 = alloca %struct.mmc_blk_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %9)
  store %struct.mmc_queue_req* %10, %struct.mmc_queue_req** %5, align 8
  %11 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %11, i32 0, i32 0
  store %struct.mmc_blk_request* %12, %struct.mmc_blk_request** %6, align 8
  %13 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %6, align 8
  %17 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %16, i32 0, i32 0
  %18 = call i32 @mmc_blk_data_timeout_ms(i32 %15, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mmc_retune_hold_now(i32 %21)
  %23 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mmc_blk_send_stop(%struct.mmc_card* %23, i32 %24)
  %26 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = call i32 @card_busy_detect(%struct.mmc_card* %26, i32 %27, %struct.request* %28, i32* null)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mmc_retune_release(i32 %32)
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i32 @mmc_blk_data_timeout_ms(i32, i32*) #1

declare dso_local i32 @mmc_retune_hold_now(i32) #1

declare dso_local i32 @mmc_blk_send_stop(%struct.mmc_card*, i32) #1

declare dso_local i32 @card_busy_detect(%struct.mmc_card*, i32, %struct.request*, i32*) #1

declare dso_local i32 @mmc_retune_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
