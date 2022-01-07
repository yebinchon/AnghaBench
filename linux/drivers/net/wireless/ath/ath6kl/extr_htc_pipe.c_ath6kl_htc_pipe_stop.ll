; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.htc_endpoint* }
%struct.htc_endpoint = type { i32 }

@ENDPOINT_MAX = common dso_local global i32 0, align 4
@HTC_TX_PACKET_TAG_ALL = common dso_local global i32 0, align 4
@HTC_OP_STATE_SETUP_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*)* @ath6kl_htc_pipe_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_pipe_stop(%struct.htc_target* %0) #0 {
  %2 = alloca %struct.htc_target*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.htc_endpoint*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ENDPOINT_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %11 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %10, i32 0, i32 1
  %12 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %12, i64 %14
  store %struct.htc_endpoint* %15, %struct.htc_endpoint** %4, align 8
  %16 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %17 = load %struct.htc_endpoint*, %struct.htc_endpoint** %4, align 8
  %18 = call i32 @htc_flush_rx_queue(%struct.htc_target* %16, %struct.htc_endpoint* %17)
  %19 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %20 = load %struct.htc_endpoint*, %struct.htc_endpoint** %4, align 8
  %21 = load i32, i32* @HTC_TX_PACKET_TAG_ALL, align 4
  %22 = call i32 @htc_flush_tx_endpoint(%struct.htc_target* %19, %struct.htc_endpoint* %20, i32 %21)
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

26:                                               ; preds = %5
  %27 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %28 = call i32 @reset_endpoint_states(%struct.htc_target* %27)
  %29 = load i32, i32* @HTC_OP_STATE_SETUP_COMPLETE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %32 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  ret void
}

declare dso_local i32 @htc_flush_rx_queue(%struct.htc_target*, %struct.htc_endpoint*) #1

declare dso_local i32 @htc_flush_tx_endpoint(%struct.htc_target*, %struct.htc_endpoint*, i32) #1

declare dso_local i32 @reset_endpoint_states(%struct.htc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
