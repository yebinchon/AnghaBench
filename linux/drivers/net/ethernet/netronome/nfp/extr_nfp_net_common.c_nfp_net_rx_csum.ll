; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nfp_net_r_vector = type { i32, i32, i32, i32, i32 }
%struct.nfp_net_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nfp_meta_parsed = type { i32, i64 }
%struct.sk_buff = type { i32, i64 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@PCIE_DESC_RX_TCP_CSUM_OK = common dso_local global i32 0, align 4
@PCIE_DESC_RX_UDP_CSUM_OK = common dso_local global i32 0, align 4
@PCIE_DESC_RX_I_TCP_CSUM_OK = common dso_local global i32 0, align 4
@PCIE_DESC_RX_I_UDP_CSUM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.nfp_net_rx_desc*, %struct.nfp_meta_parsed*, %struct.sk_buff*)* @nfp_net_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_rx_csum(%struct.nfp_net_dp* %0, %struct.nfp_net_r_vector* %1, %struct.nfp_net_rx_desc* %2, %struct.nfp_meta_parsed* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.nfp_net_dp*, align 8
  %7 = alloca %struct.nfp_net_r_vector*, align 8
  %8 = alloca %struct.nfp_net_rx_desc*, align 8
  %9 = alloca %struct.nfp_meta_parsed*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %6, align 8
  store %struct.nfp_net_r_vector* %1, %struct.nfp_net_r_vector** %7, align 8
  store %struct.nfp_net_rx_desc* %2, %struct.nfp_net_rx_desc** %8, align 8
  store %struct.nfp_meta_parsed* %3, %struct.nfp_meta_parsed** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %12 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %11)
  %13 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %14 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %125

22:                                               ; preds = %5
  %23 = load %struct.nfp_meta_parsed*, %struct.nfp_meta_parsed** %9, align 8
  %24 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.nfp_meta_parsed*, %struct.nfp_meta_parsed** %9, align 8
  %29 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.nfp_meta_parsed*, %struct.nfp_meta_parsed** %9, align 8
  %34 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %39 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %38, i32 0, i32 0
  %40 = call i32 @u64_stats_update_begin(i32* %39)
  %41 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %42 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %46 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %45, i32 0, i32 0
  %47 = call i32 @u64_stats_update_end(i32* %46)
  br label %125

48:                                               ; preds = %22
  %49 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %8, align 8
  %50 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = call i64 @nfp_net_rx_csum_has_errors(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %58 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %57, i32 0, i32 0
  %59 = call i32 @u64_stats_update_begin(i32* %58)
  %60 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %61 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %65 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %64, i32 0, i32 0
  %66 = call i32 @u64_stats_update_end(i32* %65)
  br label %125

67:                                               ; preds = %48
  %68 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %8, align 8
  %69 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PCIE_DESC_RX_TCP_CSUM_OK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %8, align 8
  %77 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PCIE_DESC_RX_UDP_CSUM_OK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %75, %67
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = call i32 @__skb_incr_checksum_unnecessary(%struct.sk_buff* %84)
  %86 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %87 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %86, i32 0, i32 0
  %88 = call i32 @u64_stats_update_begin(i32* %87)
  %89 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %90 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %94 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %93, i32 0, i32 0
  %95 = call i32 @u64_stats_update_end(i32* %94)
  br label %96

96:                                               ; preds = %83, %75
  %97 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %8, align 8
  %98 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PCIE_DESC_RX_I_TCP_CSUM_OK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %96
  %105 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %8, align 8
  %106 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PCIE_DESC_RX_I_UDP_CSUM_OK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %104, %96
  %113 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %114 = call i32 @__skb_incr_checksum_unnecessary(%struct.sk_buff* %113)
  %115 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %116 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %115, i32 0, i32 0
  %117 = call i32 @u64_stats_update_begin(i32* %116)
  %118 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %119 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %123 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %122, i32 0, i32 0
  %124 = call i32 @u64_stats_update_end(i32* %123)
  br label %125

125:                                              ; preds = %21, %27, %56, %112, %104
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i64 @nfp_net_rx_csum_has_errors(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @__skb_incr_checksum_unnecessary(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
