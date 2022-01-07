; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_process_skb_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_process_skb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { i32, i32, i32 }
%union.iavf_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_ring*, %union.iavf_rx_desc*, %struct.sk_buff*, i32)* @iavf_process_skb_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_process_skb_fields(%struct.iavf_ring* %0, %union.iavf_rx_desc* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.iavf_ring*, align 8
  %6 = alloca %union.iavf_rx_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.iavf_ring* %0, %struct.iavf_ring** %5, align 8
  store %union.iavf_rx_desc* %1, %union.iavf_rx_desc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %10 = load %union.iavf_rx_desc*, %union.iavf_rx_desc** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @iavf_rx_hash(%struct.iavf_ring* %9, %union.iavf_rx_desc* %10, %struct.sk_buff* %11, i32 %12)
  %14 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %15 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load %union.iavf_rx_desc*, %union.iavf_rx_desc** %6, align 8
  %19 = call i32 @iavf_rx_checksum(i32 %16, %struct.sk_buff* %17, %union.iavf_rx_desc* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %22 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @skb_record_rx_queue(%struct.sk_buff* %20, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %27 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @eth_type_trans(%struct.sk_buff* %25, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @iavf_rx_hash(%struct.iavf_ring*, %union.iavf_rx_desc*, %struct.sk_buff*, i32) #1

declare dso_local i32 @iavf_rx_checksum(i32, %struct.sk_buff*, %union.iavf_rx_desc*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
