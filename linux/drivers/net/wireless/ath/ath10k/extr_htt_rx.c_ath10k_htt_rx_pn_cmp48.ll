; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_pn_cmp48.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_pn_cmp48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.htt_rx_pn_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.htt_rx_pn_t*, %union.htt_rx_pn_t*)* @ath10k_htt_rx_pn_cmp48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_rx_pn_cmp48(%union.htt_rx_pn_t* %0, %union.htt_rx_pn_t* %1) #0 {
  %3 = alloca %union.htt_rx_pn_t*, align 8
  %4 = alloca %union.htt_rx_pn_t*, align 8
  store %union.htt_rx_pn_t* %0, %union.htt_rx_pn_t** %3, align 8
  store %union.htt_rx_pn_t* %1, %union.htt_rx_pn_t** %4, align 8
  %5 = load %union.htt_rx_pn_t*, %union.htt_rx_pn_t** %3, align 8
  %6 = bitcast %union.htt_rx_pn_t* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = and i64 %8, 281474976710655
  %10 = load %union.htt_rx_pn_t*, %union.htt_rx_pn_t** %4, align 8
  %11 = bitcast %union.htt_rx_pn_t* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 281474976710655
  %15 = icmp ule i64 %9, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
