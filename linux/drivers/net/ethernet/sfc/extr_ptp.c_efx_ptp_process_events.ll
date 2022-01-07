; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_process_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i64 }
%struct.efx_ptp_match = type { i64, i32 }

@PTP_PACKET_STATE_MATCH_UNWANTED = common dso_local global i64 0, align 8
@PTP_PACKET_STATE_MATCHED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@PTP_PACKET_STATE_TIMED_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.sk_buff_head*)* @efx_ptp_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ptp_process_events(%struct.efx_nic* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.efx_ptp_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.efx_ptp_match*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %9, align 8
  store %struct.efx_ptp_data* %10, %struct.efx_ptp_data** %5, align 8
  br label %11

11:                                               ; preds = %65, %2
  %12 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %13 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %12, i32 0, i32 0
  %14 = call %struct.sk_buff* @skb_dequeue(i32* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %66

16:                                               ; preds = %11
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.efx_ptp_match*
  store %struct.efx_ptp_match* %20, %struct.efx_ptp_match** %7, align 8
  %21 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %7, align 8
  %22 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PTP_PACKET_STATE_MATCH_UNWANTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %27, %struct.sk_buff* %28)
  br label %65

30:                                               ; preds = %16
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i64 @efx_ptp_match_rx(%struct.efx_nic* %31, %struct.sk_buff* %32)
  %34 = load i64, i64* @PTP_PACKET_STATE_MATCHED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %37, %struct.sk_buff* %38)
  br label %64

40:                                               ; preds = %30
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %7, align 8
  %43 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @time_after(i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i64, i64* @PTP_PACKET_STATE_TIMED_OUT, align 8
  %49 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %7, align 8
  %50 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %52 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %55, %struct.sk_buff* %56)
  br label %63

58:                                               ; preds = %40
  %59 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %60 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %59, i32 0, i32 0
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i32 @skb_queue_head(i32* %60, %struct.sk_buff* %61)
  br label %66

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %26
  br label %11

66:                                               ; preds = %58, %11
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i64 @efx_ptp_match_rx(%struct.efx_nic*, %struct.sk_buff*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
