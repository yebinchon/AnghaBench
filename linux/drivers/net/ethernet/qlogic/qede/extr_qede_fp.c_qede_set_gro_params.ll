; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_set_gro_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_set_gro_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.eth_fast_path_rx_tpa_start_cqe = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@PARSING_AND_ERR_FLAGS_L3TYPE_SHIFT = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_L3TYPE_MASK = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.sk_buff*, %struct.eth_fast_path_rx_tpa_start_cqe*)* @qede_set_gro_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_set_gro_params(%struct.qede_dev* %0, %struct.sk_buff* %1, %struct.eth_fast_path_rx_tpa_start_cqe* %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.eth_fast_path_rx_tpa_start_cqe*, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.eth_fast_path_rx_tpa_start_cqe* %2, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %8 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %9 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PARSING_AND_ERR_FLAGS_L3TYPE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = load i32, i32* @PARSING_AND_ERR_FLAGS_L3TYPE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %31 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @__le16_to_cpu(i32 %32)
  %34 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %35 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
