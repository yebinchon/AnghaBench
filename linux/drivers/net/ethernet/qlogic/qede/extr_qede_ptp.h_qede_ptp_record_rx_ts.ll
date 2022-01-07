; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.h_qede_ptp_record_rx_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.h_qede_ptp_record_rx_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%union.eth_rx_cqe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@PARSING_AND_ERR_FLAGS_TIMESTAMPRECORDED_SHIFT = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_TIMESYNCPKT_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timestamp recorded for non PTP packets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %union.eth_rx_cqe*, %struct.sk_buff*)* @qede_ptp_record_rx_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_ptp_record_rx_ts(%struct.qede_dev* %0, %union.eth_rx_cqe* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %union.eth_rx_cqe*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %union.eth_rx_cqe* %1, %union.eth_rx_cqe** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %5, align 8
  %8 = bitcast %union.eth_rx_cqe* %7 to %struct.TYPE_4__*
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  %13 = load i32, i32* @PARSING_AND_ERR_FLAGS_TIMESTAMPRECORDED_SHIFT, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %5, align 8
  %20 = bitcast %union.eth_rx_cqe* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = load i32, i32* @PARSING_AND_ERR_FLAGS_TIMESYNCPKT_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @qede_ptp_rx_ts(%struct.qede_dev* %31, %struct.sk_buff* %32)
  br label %37

34:                                               ; preds = %18
  %35 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %36 = call i32 @DP_INFO(%struct.qede_dev* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %3
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qede_ptp_rx_ts(%struct.qede_dev*, %struct.sk_buff*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
