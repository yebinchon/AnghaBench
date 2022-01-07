; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ptp.c_cxgb4_ptp_is_ptp_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ptp.c_cxgb4_ptp_is_ptp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.udphdr = type { i64, i64 }

@ETH_HLEN = common dso_local global i64 0, align 8
@PTP_EVENT_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_ptp_is_ptp_rx(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ETH_HLEN, align 8
  %8 = add nsw i64 %6, %7
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @IPV4_HLEN(i64 %11)
  %13 = add nsw i64 %8, %12
  %14 = inttoptr i64 %13 to %struct.udphdr*
  store %struct.udphdr* %14, %struct.udphdr** %3, align 8
  %15 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %16 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @PTP_EVENT_PORT, align 4
  %19 = call i64 @htons(i32 %18)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %23 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @PTP_EVENT_PORT, align 4
  %26 = call i64 @htons(i32 %25)
  %27 = icmp eq i64 %24, %26
  br label %28

28:                                               ; preds = %21, %1
  %29 = phi i1 [ false, %1 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i64 @IPV4_HLEN(i64) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
