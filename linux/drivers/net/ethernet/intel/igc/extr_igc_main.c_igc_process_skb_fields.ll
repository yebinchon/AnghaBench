; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_process_skb_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_process_skb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { i32, i32 }
%union.igc_adv_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_ring*, %union.igc_adv_rx_desc*, %struct.sk_buff*)* @igc_process_skb_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_process_skb_fields(%struct.igc_ring* %0, %union.igc_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.igc_ring*, align 8
  %5 = alloca %union.igc_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.igc_ring* %0, %struct.igc_ring** %4, align 8
  store %union.igc_adv_rx_desc* %1, %union.igc_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %8 = load %union.igc_adv_rx_desc*, %union.igc_adv_rx_desc** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call i32 @igc_rx_hash(%struct.igc_ring* %7, %union.igc_adv_rx_desc* %8, %struct.sk_buff* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %13 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @skb_record_rx_queue(%struct.sk_buff* %11, i32 %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %18 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @eth_type_trans(%struct.sk_buff* %16, i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local i32 @igc_rx_hash(%struct.igc_ring*, %union.igc_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
