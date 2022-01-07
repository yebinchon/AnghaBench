; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32 }
%struct.nfp_net_r_vector = type { i32, i32, i32 }
%struct.nfp_net_tx_buf = type { i64 }
%struct.nfp_net_tx_desc = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ipv6hdr = type { i32, i32 }
%struct.iphdr = type { i32, i32 }

@NFP_NET_CFG_CTRL_TXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@PCIE_DESC_TX_CSUM = common dso_local global i32 0, align 4
@PCIE_DESC_TX_ENCAP = common dso_local global i32 0, align 4
@PCIE_DESC_TX_IP4_CSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"partial checksum but ipv=%x!\0A\00", align 1
@PCIE_DESC_TX_TCP_CSUM = common dso_local global i32 0, align 4
@PCIE_DESC_TX_UDP_CSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"partial checksum but l4 proto=%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_desc*, %struct.sk_buff*)* @nfp_net_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tx_csum(%struct.nfp_net_dp* %0, %struct.nfp_net_r_vector* %1, %struct.nfp_net_tx_buf* %2, %struct.nfp_net_tx_desc* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.nfp_net_dp*, align 8
  %7 = alloca %struct.nfp_net_r_vector*, align 8
  %8 = alloca %struct.nfp_net_tx_buf*, align 8
  %9 = alloca %struct.nfp_net_tx_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %6, align 8
  store %struct.nfp_net_r_vector* %1, %struct.nfp_net_r_vector** %7, align 8
  store %struct.nfp_net_tx_buf* %2, %struct.nfp_net_tx_buf** %8, align 8
  store %struct.nfp_net_tx_desc* %3, %struct.nfp_net_tx_desc** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %14 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %15 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFP_NET_CFG_CTRL_TXCSUM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %148

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %148

28:                                               ; preds = %21
  %29 = load i32, i32* @PCIE_DESC_TX_CSUM, align 4
  %30 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %9, align 8
  %31 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32, i32* @PCIE_DESC_TX_ENCAP, align 4
  %40 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %9, align 8
  %41 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %28
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = call %struct.iphdr* @inner_ip_hdr(%struct.sk_buff* %50)
  br label %55

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi %struct.iphdr* [ %51, %49 ], [ %54, %52 ]
  store %struct.iphdr* %56, %struct.iphdr** %12, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = call %struct.ipv6hdr* @inner_ipv6_hdr(%struct.sk_buff* %62)
  br label %67

64:                                               ; preds = %55
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi %struct.ipv6hdr* [ %63, %61 ], [ %66, %64 ]
  store %struct.ipv6hdr* %68, %struct.ipv6hdr** %11, align 8
  %69 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %70 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i32, i32* @PCIE_DESC_TX_IP4_CSUM, align 4
  %75 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %9, align 8
  %76 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  br label %98

82:                                               ; preds = %67
  %83 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %84 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %89 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %13, align 4
  br label %97

91:                                               ; preds = %82
  %92 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %93 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %94 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nn_dp_warn(%struct.nfp_net_dp* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %148

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %73
  %99 = load i32, i32* %13, align 4
  switch i32 %99, label %112 [
    i32 129, label %100
    i32 128, label %106
  ]

100:                                              ; preds = %98
  %101 = load i32, i32* @PCIE_DESC_TX_TCP_CSUM, align 4
  %102 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %9, align 8
  %103 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %116

106:                                              ; preds = %98
  %107 = load i32, i32* @PCIE_DESC_TX_UDP_CSUM, align 4
  %108 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %9, align 8
  %109 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %116

112:                                              ; preds = %98
  %113 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @nn_dp_warn(%struct.nfp_net_dp* %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %148

116:                                              ; preds = %106, %100
  %117 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %118 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %117, i32 0, i32 0
  %119 = call i32 @u64_stats_update_begin(i32* %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %8, align 8
  %126 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %129 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  br label %144

134:                                              ; preds = %116
  %135 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %8, align 8
  %136 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %139 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %137
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  br label %144

144:                                              ; preds = %134, %124
  %145 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %146 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %145, i32 0, i32 0
  %147 = call i32 @u64_stats_update_end(i32* %146)
  br label %148

148:                                              ; preds = %144, %112, %91, %27, %20
  ret void
}

declare dso_local %struct.iphdr* @inner_ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @inner_ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nn_dp_warn(%struct.nfp_net_dp*, i8*, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
