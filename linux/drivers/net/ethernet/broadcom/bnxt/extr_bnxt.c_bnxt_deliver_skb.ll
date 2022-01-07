; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_deliver_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_deliver_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i64 }
%struct.bnxt_napi = type { i32, i32 }
%struct.sk_buff = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_napi*, %struct.sk_buff*)* @bnxt_deliver_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_deliver_skb(%struct.bnxt* %0, %struct.bnxt_napi* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_napi*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_napi* %1, %struct.bnxt_napi** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @bnxt_vf_rep_rx(%struct.bnxt* %15, %struct.sk_buff* %16)
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %21 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @skb_record_rx_queue(%struct.sk_buff* %19, i32 %22)
  %24 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %25 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %24, i32 0, i32 0
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @napi_gro_receive(i32* %25, %struct.sk_buff* %26)
  br label %28

28:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @bnxt_vf_rep_rx(%struct.bnxt*, %struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
