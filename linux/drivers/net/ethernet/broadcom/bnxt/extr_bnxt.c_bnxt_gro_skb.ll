; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_gro_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_gro_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.sk_buff* (%struct.bnxt_tpa_info*, i32, i32, %struct.sk_buff*)* }
%struct.bnxt_tpa_info = type { i32 }
%struct.rx_tpa_end_cmp = type { i32 }
%struct.rx_tpa_end_cmp_ext = type { i32 }
%struct.sk_buff = type { i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bnxt*, %struct.bnxt_tpa_info*, %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp_ext*, %struct.sk_buff*)* @bnxt_gro_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bnxt_gro_skb(%struct.bnxt* %0, %struct.bnxt_tpa_info* %1, %struct.rx_tpa_end_cmp* %2, %struct.rx_tpa_end_cmp_ext* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_tpa_info*, align 8
  %8 = alloca %struct.rx_tpa_end_cmp*, align 8
  %9 = alloca %struct.rx_tpa_end_cmp_ext*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_tpa_info* %1, %struct.bnxt_tpa_info** %7, align 8
  store %struct.rx_tpa_end_cmp* %2, %struct.rx_tpa_end_cmp** %8, align 8
  store %struct.rx_tpa_end_cmp_ext* %3, %struct.rx_tpa_end_cmp_ext** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
