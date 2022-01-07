; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_enable_tx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_enable_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_priv = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.qm_fd = type { i32 }
%struct.fman_prs_result = type { i32*, i32, i32, i8* }
%struct.ipv6hdr = type { i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@FM_L3_PARSE_RESULT_IPV4 = common dso_local global i32 0, align 4
@FM_L3_PARSE_RESULT_IPV6 = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Can't compute HW csum for L3 proto 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FM_L4_PARSE_RESULT_UDP = common dso_local global i32 0, align 4
@FM_L4_PARSE_RESULT_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Can't compute HW csum for L4 proto 0x%x\0A\00", align 1
@FM_FD_CMD_RPD = common dso_local global i32 0, align 4
@FM_FD_CMD_DTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa_priv*, %struct.sk_buff*, %struct.qm_fd*, i8*)* @dpaa_enable_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_enable_tx_csum(%struct.dpaa_priv* %0, %struct.sk_buff* %1, %struct.qm_fd* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpaa_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.qm_fd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fman_prs_result*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipv6hdr*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dpaa_priv* %0, %struct.dpaa_priv** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.qm_fd* %2, %struct.qm_fd** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ntohs(i32 %18)
  store i32 %19, i32* %11, align 4
  store %struct.ipv6hdr* null, %struct.ipv6hdr** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %136

26:                                               ; preds = %4
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to %struct.fman_prs_result*
  store %struct.fman_prs_result* %28, %struct.fman_prs_result** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ETH_P_8021Q, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = call i32 @skb_reset_mac_header(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call %struct.TYPE_2__* @vlan_eth_hdr(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohs(i32 %38)
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %32, %26
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %72 [
    i32 131, label %42
    i32 130, label %57
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @FM_L3_PARSE_RESULT_IPV4, align 4
  %44 = call i8* @cpu_to_be16(i32 %43)
  %45 = load %struct.fman_prs_result*, %struct.fman_prs_result** %10, align 8
  %46 = getelementptr inbounds %struct.fman_prs_result, %struct.fman_prs_result* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %47)
  store %struct.iphdr* %48, %struct.iphdr** %13, align 8
  %49 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %50 = icmp ne %struct.iphdr* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %55 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %15, align 4
  br label %89

57:                                               ; preds = %40
  %58 = load i32, i32* @FM_L3_PARSE_RESULT_IPV6, align 4
  %59 = call i8* @cpu_to_be16(i32 %58)
  %60 = load %struct.fman_prs_result*, %struct.fman_prs_result** %10, align 8
  %61 = getelementptr inbounds %struct.fman_prs_result, %struct.fman_prs_result* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %62)
  store %struct.ipv6hdr* %63, %struct.ipv6hdr** %12, align 8
  %64 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %65 = icmp ne %struct.ipv6hdr* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @WARN_ON(i32 %67)
  %69 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %70 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %15, align 4
  br label %89

72:                                               ; preds = %40
  %73 = call i32 (...) @net_ratelimit()
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.dpaa_priv*, %struct.dpaa_priv** %6, align 8
  %77 = load i32, i32* @tx_err, align 4
  %78 = load %struct.dpaa_priv*, %struct.dpaa_priv** %6, align 8
  %79 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ntohs(i32 %83)
  %85 = call i32 @netif_alert(%struct.dpaa_priv* %76, i32 %77, i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %75, %72
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %14, align 4
  br label %134

89:                                               ; preds = %57, %42
  %90 = load i32, i32* %15, align 4
  switch i32 %90, label %99 [
    i32 128, label %91
    i32 129, label %95
  ]

91:                                               ; preds = %89
  %92 = load i32, i32* @FM_L4_PARSE_RESULT_UDP, align 4
  %93 = load %struct.fman_prs_result*, %struct.fman_prs_result** %10, align 8
  %94 = getelementptr inbounds %struct.fman_prs_result, %struct.fman_prs_result* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %113

95:                                               ; preds = %89
  %96 = load i32, i32* @FM_L4_PARSE_RESULT_TCP, align 4
  %97 = load %struct.fman_prs_result*, %struct.fman_prs_result** %10, align 8
  %98 = getelementptr inbounds %struct.fman_prs_result, %struct.fman_prs_result* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %113

99:                                               ; preds = %89
  %100 = call i32 (...) @net_ratelimit()
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load %struct.dpaa_priv*, %struct.dpaa_priv** %6, align 8
  %104 = load i32, i32* @tx_err, align 4
  %105 = load %struct.dpaa_priv*, %struct.dpaa_priv** %6, align 8
  %106 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @netif_alert(%struct.dpaa_priv* %103, i32 %104, i32 %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %102, %99
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %14, align 4
  br label %134

113:                                              ; preds = %95, %91
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = call i64 @skb_network_offset(%struct.sk_buff* %114)
  %116 = trunc i64 %115 to i32
  %117 = load %struct.fman_prs_result*, %struct.fman_prs_result** %10, align 8
  %118 = getelementptr inbounds %struct.fman_prs_result, %struct.fman_prs_result* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %116, i32* %120, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = call i64 @skb_transport_offset(%struct.sk_buff* %121)
  %123 = trunc i64 %122 to i32
  %124 = load %struct.fman_prs_result*, %struct.fman_prs_result** %10, align 8
  %125 = getelementptr inbounds %struct.fman_prs_result, %struct.fman_prs_result* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @FM_FD_CMD_RPD, align 4
  %127 = load i32, i32* @FM_FD_CMD_DTC, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @cpu_to_be32(i32 %128)
  %130 = load %struct.qm_fd*, %struct.qm_fd** %8, align 8
  %131 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %113, %110, %86
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %25
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @vlan_eth_hdr(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @net_ratelimit(...) #1

declare dso_local i32 @netif_alert(%struct.dpaa_priv*, i32, i32, i8*, i32) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
