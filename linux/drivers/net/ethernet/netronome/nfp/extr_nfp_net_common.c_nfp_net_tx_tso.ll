; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_r_vector = type { i32, i32 }
%struct.nfp_net_tx_buf = type { i32, i32 }
%struct.nfp_net_tx_desc = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PCIE_DESC_TX_MSS_MASK = common dso_local global i32 0, align 4
@PCIE_DESC_TX_LSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_r_vector*, %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_desc*, %struct.sk_buff*, i32)* @nfp_net_tx_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tx_tso(%struct.nfp_net_r_vector* %0, %struct.nfp_net_tx_buf* %1, %struct.nfp_net_tx_desc* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.nfp_net_r_vector*, align 8
  %7 = alloca %struct.nfp_net_tx_buf*, align 8
  %8 = alloca %struct.nfp_net_tx_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nfp_net_r_vector* %0, %struct.nfp_net_r_vector** %6, align 8
  store %struct.nfp_net_tx_buf* %1, %struct.nfp_net_tx_buf** %7, align 8
  store %struct.nfp_net_tx_desc* %2, %struct.nfp_net_tx_desc** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = call i32 @skb_is_gso(%struct.sk_buff* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %105

19:                                               ; preds = %5
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call i32 @skb_network_offset(%struct.sk_buff* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call i32 @skb_transport_offset(%struct.sk_buff* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = call i32 @skb_transport_offset(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = call i32 @tcp_hdrlen(%struct.sk_buff* %31)
  %33 = add nsw i32 %30, %32
  store i32 %33, i32* %13, align 4
  br label %48

34:                                               ; preds = %19
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call i32 @skb_inner_network_offset(%struct.sk_buff* %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = call i32 @skb_inner_transport_offset(%struct.sk_buff* %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = call i32 @skb_inner_transport_header(%struct.sk_buff* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = call i32 @inner_tcp_hdrlen(%struct.sk_buff* %45)
  %47 = add nsw i32 %44, %46
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %34, %24
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %54 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %57 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = mul nsw i32 %55, %59
  %61 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %62 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PCIE_DESC_TX_MSS_MASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %8, align 8
  %75 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %8, align 8
  %80 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %8, align 8
  %85 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @cpu_to_le16(i32 %86)
  %88 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %8, align 8
  %89 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @PCIE_DESC_TX_LSO, align 4
  %91 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %8, align 8
  %92 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %6, align 8
  %96 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %95, i32 0, i32 0
  %97 = call i32 @u64_stats_update_begin(i32* %96)
  %98 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %6, align 8
  %99 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %6, align 8
  %103 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %102, i32 0, i32 0
  %104 = call i32 @u64_stats_update_end(i32* %103)
  br label %105

105:                                              ; preds = %48, %18
  ret void
}

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @inner_tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
