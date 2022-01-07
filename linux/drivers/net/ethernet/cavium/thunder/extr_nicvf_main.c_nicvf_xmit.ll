; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.nicvf = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_queue* }
%struct.snd_queue = type { i32 }
%struct.netdev_queue = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@MAX_SND_QUEUES_PER_QS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Secondary Qset#%d's ptr not initialized\0A\00", align 1
@MIN_SQ_DESC_PER_PKT_XMIT = common dso_local global i64 0, align 8
@tx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Transmit ring full, stopping SQ%d\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @nicvf_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca %struct.nicvf*, align 8
  %10 = alloca %struct.snd_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.nicvf* @netdev_priv(%struct.net_device* %12)
  store %struct.nicvf* %13, %struct.nicvf** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %16, i32 %17)
  store %struct.netdev_queue* %18, %struct.netdev_queue** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ETH_HLEN, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @dev_kfree_skb(%struct.sk_buff* %25)
  %27 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %122

28:                                               ; preds = %2
  %29 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %30 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %35 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  store %struct.nicvf* %42, %struct.nicvf** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %51 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.nicvf*
  store %struct.nicvf* %58, %struct.nicvf** %9, align 8
  %59 = load %struct.nicvf*, %struct.nicvf** %9, align 8
  %60 = icmp ne %struct.nicvf* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %46
  %62 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %63 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @netdev_warn(i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @dev_kfree_skb(%struct.sk_buff* %68)
  %70 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %122

71:                                               ; preds = %46
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %74 = srem i32 %72, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %41
  %76 = load %struct.nicvf*, %struct.nicvf** %9, align 8
  %77 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.snd_queue*, %struct.snd_queue** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %80, i64 %82
  store %struct.snd_queue* %83, %struct.snd_queue** %10, align 8
  %84 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %85 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %120, label %87

87:                                               ; preds = %75
  %88 = load %struct.nicvf*, %struct.nicvf** %9, align 8
  %89 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @nicvf_sq_append_skb(%struct.nicvf* %88, %struct.snd_queue* %89, %struct.sk_buff* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %120, label %94

94:                                               ; preds = %87
  %95 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %96 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %95)
  %97 = call i32 (...) @smp_mb()
  %98 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %99 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %98, i32 0, i32 0
  %100 = call i64 @atomic_read(i32* %99)
  %101 = load i64, i64* @MIN_SQ_DESC_PER_PKT_XMIT, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %105 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %104)
  br label %118

106:                                              ; preds = %94
  %107 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %108 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @this_cpu_inc(i32 %111)
  %113 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %114 = load i32, i32* @tx_err, align 4
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @netif_warn(%struct.nicvf* %113, i32 %114, %struct.net_device* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %106, %103
  %119 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %119, i32* %3, align 4
  br label %122

120:                                              ; preds = %87, %75
  %121 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %118, %61, %24
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @nicvf_sq_append_skb(%struct.nicvf*, %struct.snd_queue*, %struct.sk_buff*, i32) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @netif_warn(%struct.nicvf*, i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
