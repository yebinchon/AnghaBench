; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { %struct.brcmf_pub*, i64, i32, i64 }
%struct.brcmf_pub = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.msgbuf_rx_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.brcmf_if = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Received pkt for invalid ifidx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*, i8*)* @brcmf_msgbuf_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_process_event(%struct.brcmf_msgbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.msgbuf_rx_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %12 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %11, i32 0, i32 0
  %13 = load %struct.brcmf_pub*, %struct.brcmf_pub** %12, align 8
  store %struct.brcmf_pub* %13, %struct.brcmf_pub** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.msgbuf_rx_event*
  store %struct.msgbuf_rx_event* %15, %struct.msgbuf_rx_event** %6, align 8
  %16 = load %struct.msgbuf_rx_event*, %struct.msgbuf_rx_event** %6, align 8
  %17 = getelementptr inbounds %struct.msgbuf_rx_event, %struct.msgbuf_rx_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.msgbuf_rx_event*, %struct.msgbuf_rx_event** %6, align 8
  %22 = getelementptr inbounds %struct.msgbuf_rx_event, %struct.msgbuf_rx_event* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %26 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %31 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %29, %2
  %35 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %36 = call i32 @brcmf_msgbuf_rxbuf_event_post(%struct.brcmf_msgbuf* %35)
  %37 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %38 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %37, i32 0, i32 0
  %39 = load %struct.brcmf_pub*, %struct.brcmf_pub** %38, align 8
  %40 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %45 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.sk_buff* @brcmf_msgbuf_get_pktid(i32 %43, i32 %46, i32 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %9, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %34
  br label %105

52:                                               ; preds = %34
  %53 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %54 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %60 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @skb_pull(%struct.sk_buff* %58, i64 %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @skb_trim(%struct.sk_buff* %64, i32 %65)
  %67 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %68 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %67, i32 0, i32 0
  %69 = load %struct.brcmf_pub*, %struct.brcmf_pub** %68, align 8
  %70 = load %struct.msgbuf_rx_event*, %struct.msgbuf_rx_event** %6, align 8
  %71 = getelementptr inbounds %struct.msgbuf_rx_event, %struct.msgbuf_rx_event* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %69, i32 %73)
  store %struct.brcmf_if* %74, %struct.brcmf_if** %10, align 8
  %75 = load %struct.brcmf_if*, %struct.brcmf_if** %10, align 8
  %76 = icmp ne %struct.brcmf_if* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %63
  %78 = load %struct.brcmf_if*, %struct.brcmf_if** %10, align 8
  %79 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %77, %63
  %83 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %84 = load %struct.msgbuf_rx_event*, %struct.msgbuf_rx_event** %6, align 8
  %85 = getelementptr inbounds %struct.msgbuf_rx_event, %struct.msgbuf_rx_event* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bphy_err(%struct.brcmf_pub* %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %102

89:                                               ; preds = %77
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = load %struct.brcmf_if*, %struct.brcmf_if** %10, align 8
  %92 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @eth_type_trans(%struct.sk_buff* %90, i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.brcmf_if*, %struct.brcmf_if** %10, align 8
  %98 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = call i32 @brcmf_fweh_process_skb(i32 %99, %struct.sk_buff* %100, i32 0)
  br label %102

102:                                              ; preds = %89, %82
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %104 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %103)
  br label %105

105:                                              ; preds = %102, %51
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brcmf_msgbuf_rxbuf_event_post(%struct.brcmf_msgbuf*) #1

declare dso_local %struct.sk_buff* @brcmf_msgbuf_get_pktid(i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @brcmf_fweh_process_skb(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
