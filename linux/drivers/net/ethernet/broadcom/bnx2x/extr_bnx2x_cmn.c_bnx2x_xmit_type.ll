; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_xmit_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_xmit_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@XMIT_PLAIN = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@XMIT_CSUM_V6 = common dso_local global i32 0, align 4
@XMIT_CSUM_V4 = common dso_local global i32 0, align 4
@XMIT_CSUM_ENC_V6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@XMIT_CSUM_TCP = common dso_local global i32 0, align 4
@XMIT_CSUM_ENC_V4 = common dso_local global i32 0, align 4
@XMIT_GSO_V6 = common dso_local global i32 0, align 4
@XMIT_CSUM_ENC = common dso_local global i32 0, align 4
@XMIT_GSO_ENC_V6 = common dso_local global i32 0, align 4
@XMIT_GSO_V4 = common dso_local global i32 0, align 4
@XMIT_GSO_ENC_V4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.sk_buff*)* @bnx2x_xmit_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_xmit_type(%struct.bnx2x* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @XMIT_PLAIN, align 4
  store i32 %15, i32* %3, align 4
  br label %130

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i64 @vlan_get_protocol(%struct.sk_buff* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* @ETH_P_IPV6, align 4
  %21 = call i64 @htons(i32 %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* @XMIT_CSUM_V6, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  br label %35

29:                                               ; preds = %16
  %30 = load i32, i32* @XMIT_CSUM_V4, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %37 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %81, label %39

39:                                               ; preds = %35
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call %struct.TYPE_8__* @inner_ip_hdr(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i32, i32* @XMIT_CSUM_ENC_V6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call %struct.TYPE_7__* @inner_ipv6_hdr(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IPPROTO_TCP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %50
  br label %80

65:                                               ; preds = %44
  %66 = load i32, i32* @XMIT_CSUM_ENC_V4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call %struct.TYPE_8__* @inner_ip_hdr(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IPPROTO_TCP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %65
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %39, %35
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @IPPROTO_TCP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i64 @skb_is_gso(%struct.sk_buff* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %128

93:                                               ; preds = %89
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i64 @skb_is_gso_v6(%struct.sk_buff* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32, i32* @XMIT_GSO_V6, align 4
  %99 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @XMIT_CSUM_ENC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load i32, i32* @XMIT_GSO_ENC_V6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %97
  br label %127

112:                                              ; preds = %93
  %113 = load i32, i32* @XMIT_GSO_V4, align 4
  %114 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @XMIT_CSUM_ENC, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load i32, i32* @XMIT_GSO_ENC_V4, align 4
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %112
  br label %127

127:                                              ; preds = %126, %111
  br label %128

128:                                              ; preds = %127, %89
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %14
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local %struct.TYPE_8__* @inner_ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @inner_ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso_v6(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
