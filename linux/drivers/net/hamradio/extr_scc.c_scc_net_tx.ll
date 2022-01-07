; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_net_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_net_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32* }
%struct.net_device = type { i64 }
%struct.scc_channel = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@TXS_IDLE = common dso_local global i64 0, align 8
@TXS_IDLE2 = common dso_local global i64 0, align 8
@TXS_BUSY = common dso_local global i64 0, align 8
@KISS_DUPLEX_HALF = common dso_local global i64 0, align 8
@t_dwait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @scc_net_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_net_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.scc_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.scc_channel*
  store %struct.scc_channel* %13, %struct.scc_channel** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ETH_P_IP, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @ax25_ip_xmit(%struct.sk_buff* %21)
  store i32 %22, i32* %3, align 4
  br label %156

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %28 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %46

37:                                               ; preds = %32, %23
  %38 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %39 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @dev_kfree_skb(%struct.sk_buff* %43)
  %45 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %156

46:                                               ; preds = %32
  %47 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %48 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %56 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, %54
  store i32 %59, i32* %57, align 8
  %60 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %61 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %8, align 1
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @skb_pull(%struct.sk_buff* %71, i32 1)
  %73 = load i8, i8* %8, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %46
  %76 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %77 = load i8, i8* %8, align 1
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @scc_set_param(%struct.scc_channel* %76, i8 signext %77, i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i32 @dev_kfree_skb(%struct.sk_buff* %83)
  %85 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %85, i32* %3, align 4
  br label %156

86:                                               ; preds = %46
  %87 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %88 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %87, i32 0, i32 0
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %92 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %91, i32 0, i32 3
  %93 = call i64 @skb_queue_len(i32* %92)
  %94 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %95 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %93, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %86
  %101 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %102 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %101, i32 0, i32 3
  %103 = call %struct.sk_buff* @skb_dequeue(i32* %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %9, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = call i32 @dev_kfree_skb(%struct.sk_buff* %104)
  br label %106

106:                                              ; preds = %100, %86
  %107 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %108 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %107, i32 0, i32 3
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = call i32 @skb_queue_tail(i32* %108, %struct.sk_buff* %109)
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = call i32 @netif_trans_update(%struct.net_device* %111)
  %113 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %114 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TXS_IDLE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %106
  %120 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %121 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TXS_IDLE2, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %119, %106
  %127 = load i64, i64* @TXS_BUSY, align 8
  %128 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %129 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store i64 %127, i64* %130, align 8
  %131 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %132 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @KISS_DUPLEX_HALF, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %126
  %138 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %139 = load i32, i32* @t_dwait, align 4
  %140 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %141 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @__scc_start_tx_timer(%struct.scc_channel* %138, i32 %139, i32 %143)
  br label %149

145:                                              ; preds = %126
  %146 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %147 = load i32, i32* @t_dwait, align 4
  %148 = call i32 @__scc_start_tx_timer(%struct.scc_channel* %146, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %145, %137
  br label %150

150:                                              ; preds = %149, %119
  %151 = load %struct.scc_channel*, %struct.scc_channel** %6, align 8
  %152 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %151, i32 0, i32 0
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  %155 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %150, %75, %37, %20
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ax25_ip_xmit(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @scc_set_param(%struct.scc_channel*, i8 signext, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @__scc_start_tx_timer(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
