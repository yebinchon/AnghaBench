; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i32, %struct.brcmf_pub*, i32 }
%struct.brcmf_pub = type { %struct.brcmf_if*, %struct.TYPE_3__* }
%struct.brcmf_if = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.msgbuf_rx_complete = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@BRCMF_MSGBUF_PKT_FLAGS_FRAME_MASK = common dso_local global i32 0, align 4
@BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_11 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Received unexpected monitor pkt\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Received pkt for invalid ifidx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*, i8*)* @brcmf_msgbuf_process_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_process_rx_complete(%struct.brcmf_msgbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.msgbuf_rx_complete*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %13, i32 0, i32 1
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  store %struct.brcmf_pub* %15, %struct.brcmf_pub** %5, align 8
  %16 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %17 = call i32 @brcmf_msgbuf_update_rxbufpost_count(%struct.brcmf_msgbuf* %16, i32 1)
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.msgbuf_rx_complete*
  store %struct.msgbuf_rx_complete* %19, %struct.msgbuf_rx_complete** %6, align 8
  %20 = load %struct.msgbuf_rx_complete*, %struct.msgbuf_rx_complete** %6, align 8
  %21 = getelementptr inbounds %struct.msgbuf_rx_complete, %struct.msgbuf_rx_complete* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.msgbuf_rx_complete*, %struct.msgbuf_rx_complete** %6, align 8
  %25 = getelementptr inbounds %struct.msgbuf_rx_complete, %struct.msgbuf_rx_complete* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.msgbuf_rx_complete*, %struct.msgbuf_rx_complete** %6, align 8
  %29 = getelementptr inbounds %struct.msgbuf_rx_complete, %struct.msgbuf_rx_complete* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.msgbuf_rx_complete*, %struct.msgbuf_rx_complete** %6, align 8
  %34 = getelementptr inbounds %struct.msgbuf_rx_complete, %struct.msgbuf_rx_complete* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %38 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %37, i32 0, i32 1
  %39 = load %struct.brcmf_pub*, %struct.brcmf_pub** %38, align 8
  %40 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %45 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.sk_buff* @brcmf_msgbuf_get_pktid(i32 %43, i32 %46, i32 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %2
  br label %133

52:                                               ; preds = %2
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @skb_pull(%struct.sk_buff* %56, i32 %57)
  br label %71

59:                                               ; preds = %52
  %60 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %61 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %67 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @skb_pull(%struct.sk_buff* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %59
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @skb_trim(%struct.sk_buff* %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @BRCMF_MSGBUF_PKT_FLAGS_FRAME_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_11, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %71
  %81 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %82 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %81, i32 0, i32 1
  %83 = load %struct.brcmf_pub*, %struct.brcmf_pub** %82, align 8
  %84 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %83, i32 0, i32 0
  %85 = load %struct.brcmf_if*, %struct.brcmf_if** %84, align 8
  store %struct.brcmf_if* %85, %struct.brcmf_if** %12, align 8
  %86 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %87 = icmp ne %struct.brcmf_if* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %80
  %89 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %90 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %91)
  br label %133

93:                                               ; preds = %80
  %94 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = call i32 @brcmf_netif_mon_rx(%struct.brcmf_if* %94, %struct.sk_buff* %95)
  br label %133

97:                                               ; preds = %71
  %98 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %99 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %98, i32 0, i32 1
  %100 = load %struct.brcmf_pub*, %struct.brcmf_pub** %99, align 8
  %101 = load %struct.msgbuf_rx_complete*, %struct.msgbuf_rx_complete** %6, align 8
  %102 = getelementptr inbounds %struct.msgbuf_rx_complete, %struct.msgbuf_rx_complete* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %100, i32 %104)
  store %struct.brcmf_if* %105, %struct.brcmf_if** %12, align 8
  %106 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %107 = icmp ne %struct.brcmf_if* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %110 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %108, %97
  %114 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %115 = load %struct.msgbuf_rx_complete*, %struct.msgbuf_rx_complete** %6, align 8
  %116 = getelementptr inbounds %struct.msgbuf_rx_complete, %struct.msgbuf_rx_complete* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %120)
  br label %133

122:                                              ; preds = %108
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %125 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @eth_type_trans(%struct.sk_buff* %123, i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %132 = call i32 @brcmf_netif_rx(%struct.brcmf_if* %130, %struct.sk_buff* %131)
  br label %133

133:                                              ; preds = %122, %113, %93, %88, %51
  ret void
}

declare dso_local i32 @brcmf_msgbuf_update_rxbufpost_count(%struct.brcmf_msgbuf*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @brcmf_msgbuf_get_pktid(i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

declare dso_local i32 @brcmf_netif_mon_rx(%struct.brcmf_if*, %struct.sk_buff*) #1

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @brcmf_netif_rx(%struct.brcmf_if*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
