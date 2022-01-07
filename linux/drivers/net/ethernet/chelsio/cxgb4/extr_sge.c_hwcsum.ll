; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_hwcsum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_hwcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@CHELSIO_T5 = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TX_CSUM_TCPIP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@TX_CSUM_UDPIP = common dso_local global i32 0, align 4
@TXPKT_L4CSUM_DIS_F = common dso_local global i32 0, align 4
@TX_CSUM_TCPIP6 = common dso_local global i32 0, align 4
@TX_CSUM_UDPIP6 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*)* @hwcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwcsum(i32 %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @CHELSIO_CHIP_VERSION(i32 %19)
  %21 = load i64, i64* @CHELSIO_T5, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %18, %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call %struct.TYPE_8__* @inner_ip_hdr(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_8__* @inner_ip_hdr(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %44

39:                                               ; preds = %27
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call %struct.TYPE_7__* @inner_ipv6_hdr(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i32 [ %38, %34 ], [ %43, %39 ]
  store i32 %45, i32* %8, align 4
  br label %65

46:                                               ; preds = %24
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %63

58:                                               ; preds = %46
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i32 [ %57, %53 ], [ %62, %58 ]
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %44
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @IPPROTO_TCP, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @TX_CSUM_TCPIP, align 4
  store i32 %73, i32* %6, align 4
  br label %84

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @IPPROTO_UDP, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @TX_CSUM_UDPIP, align 4
  store i32 %79, i32* %6, align 4
  br label %83

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %97, %80
  %82 = load i32, i32* @TXPKT_L4CSUM_DIS_F, align 4
  store i32 %82, i32* %3, align 4
  br label %162

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %72
  br label %100

85:                                               ; preds = %65
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @IPPROTO_TCP, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @TX_CSUM_TCPIP6, align 4
  store i32 %90, i32* %6, align 4
  br label %99

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @IPPROTO_UDP, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @TX_CSUM_UDPIP6, align 4
  store i32 %96, i32* %6, align 4
  br label %98

97:                                               ; preds = %91
  br label %81

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %89
  br label %100

100:                                              ; preds = %99, %84
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @TX_CSUM_TCPIP, align 4
  %103 = icmp sge i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @likely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %146

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = call i32 @skb_inner_network_header_len(%struct.sk_buff* %111)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @skb_inner_network_offset(%struct.sk_buff* %113)
  %115 = load i32, i32* @ETH_HLEN, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %10, align 4
  br label %124

117:                                              ; preds = %107
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = call i32 @skb_network_header_len(%struct.sk_buff* %118)
  store i32 %119, i32* %11, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call i32 @skb_network_offset(%struct.sk_buff* %120)
  %122 = load i32, i32* @ETH_HLEN, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %117, %110
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @TXPKT_IPHDR_LEN_V(i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i64 @CHELSIO_CHIP_VERSION(i32 %127)
  %129 = load i64, i64* @CHELSIO_T5, align 8
  %130 = icmp sle i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @TXPKT_ETHHDR_LEN_V(i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %12, align 4
  br label %141

136:                                              ; preds = %124
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @T6_TXPKT_ETHHDR_LEN_V(i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %136, %131
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @TXPKT_CSUM_TYPE_V(i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %3, align 4
  br label %162

146:                                              ; preds = %100
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = call i32 @skb_transport_offset(%struct.sk_buff* %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @TXPKT_CSUM_TYPE_V(i32 %149)
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @TXPKT_CSUM_START_V(i32 %151)
  %153 = or i32 %150, %152
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = call i32 @TXPKT_CSUM_LOC_V(i64 %159)
  %161 = or i32 %153, %160
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %146, %141, %81
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local %struct.TYPE_8__* @inner_ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @inner_ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_inner_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @TXPKT_IPHDR_LEN_V(i32) #1

declare dso_local i32 @TXPKT_ETHHDR_LEN_V(i32) #1

declare dso_local i32 @T6_TXPKT_ETHHDR_LEN_V(i32) #1

declare dso_local i32 @TXPKT_CSUM_TYPE_V(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @TXPKT_CSUM_START_V(i32) #1

declare dso_local i32 @TXPKT_CSUM_LOC_V(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
