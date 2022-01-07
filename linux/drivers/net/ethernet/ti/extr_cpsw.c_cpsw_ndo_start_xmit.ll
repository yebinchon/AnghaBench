; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cpsw_priv = type { i64, i64, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.cpts* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.cpdma_chan* }
%struct.cpdma_chan = type { i32 }
%struct.cpts = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.TYPE_8__ = type { i32 }

@CPSW_MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"packet pad failed\0A\00", align 1
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"desc submit failed\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @cpsw_ndo_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cpsw_priv*, align 8
  %7 = alloca %struct.cpsw_common*, align 8
  %8 = alloca %struct.cpts*, align 8
  %9 = alloca %struct.netdev_queue*, align 8
  %10 = alloca %struct.cpdma_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.cpsw_priv* %14, %struct.cpsw_priv** %6, align 8
  %15 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %16 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %15, i32 0, i32 2
  %17 = load %struct.cpsw_common*, %struct.cpsw_common** %16, align 8
  store %struct.cpsw_common* %17, %struct.cpsw_common** %7, align 8
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %19 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %18, i32 0, i32 3
  %20 = load %struct.cpts*, %struct.cpts** %19, align 8
  store %struct.cpts* %20, %struct.cpts** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @CPSW_MIN_PACKET_SIZE, align 4
  %23 = call i64 @skb_padto(%struct.sk_buff* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %27 = load i32, i32* @tx_err, align 4
  %28 = call i32 @cpsw_err(%struct.cpsw_priv* %26, i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %34, i32* %3, align 4
  br label %152

35:                                               ; preds = %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %45 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.cpts*, %struct.cpts** %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i64 @cpts_can_timestamp(%struct.cpts* %49, %struct.sk_buff* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %53, %48, %43, %35
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %65 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %71 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = srem i32 %69, %72
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %76 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.cpdma_chan*, %struct.cpdma_chan** %81, align 8
  store %struct.cpdma_chan* %82, %struct.cpdma_chan** %10, align 8
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %83, i32 %84)
  store %struct.netdev_queue* %85, %struct.netdev_queue** %9, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @skb_tx_timestamp(%struct.sk_buff* %86)
  %88 = load %struct.cpdma_chan*, %struct.cpdma_chan** %10, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %97 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %100 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %98, %102
  %104 = call i32 @cpdma_chan_submit(%struct.cpdma_chan* %88, %struct.sk_buff* %89, i32 %92, i32 %95, i64 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %74
  %111 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %112 = load i32, i32* @tx_err, align 4
  %113 = call i32 @cpsw_err(%struct.cpsw_priv* %111, i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %135

114:                                              ; preds = %74
  %115 = load %struct.cpdma_chan*, %struct.cpdma_chan** %10, align 8
  %116 = call i64 @cpdma_check_free_tx_desc(%struct.cpdma_chan* %115)
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %114
  %123 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %124 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %123)
  %125 = call i32 (...) @smp_mb__after_atomic()
  %126 = load %struct.cpdma_chan*, %struct.cpdma_chan** %10, align 8
  %127 = call i64 @cpdma_check_free_tx_desc(%struct.cpdma_chan* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %131 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %130)
  br label %132

132:                                              ; preds = %129, %122
  br label %133

133:                                              ; preds = %132, %114
  %134 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %134, i32* %3, align 4
  br label %152

135:                                              ; preds = %110
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %142 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %141)
  %143 = call i32 (...) @smp_mb__after_atomic()
  %144 = load %struct.cpdma_chan*, %struct.cpdma_chan** %10, align 8
  %145 = call i64 @cpdma_check_free_tx_desc(%struct.cpdma_chan* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %149 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %148)
  br label %150

150:                                              ; preds = %147, %135
  %151 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %133, %25
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpsw_err(%struct.cpsw_priv*, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @cpts_can_timestamp(%struct.cpts*, %struct.sk_buff*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @cpdma_chan_submit(%struct.cpdma_chan*, %struct.sk_buff*, i32, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cpdma_check_free_tx_desc(%struct.cpdma_chan*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
