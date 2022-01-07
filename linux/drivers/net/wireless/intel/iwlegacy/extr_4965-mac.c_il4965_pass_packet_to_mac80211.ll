; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_pass_packet_to_mac80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_pass_packet_to_mac80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.il_rx_buf = type { i32* }
%struct.ieee80211_rx_status = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Dropping packet while interface is not open.\0A\00", align 1
@IL_STOP_REASON_PASSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Woke queues - frame received on passive channel\0A\00", align 1
@SMALL_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"dev_alloc_skb failed\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.ieee80211_hdr*, i32, i32, %struct.il_rx_buf*, %struct.ieee80211_rx_status*)* @il4965_pass_packet_to_mac80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_pass_packet_to_mac80211(%struct.il_priv* %0, %struct.ieee80211_hdr* %1, i32 %2, i32 %3, %struct.il_rx_buf* %4, %struct.ieee80211_rx_status* %5) #0 {
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.il_rx_buf*, align 8
  %12 = alloca %struct.ieee80211_rx_status*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %7, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.il_rx_buf* %4, %struct.il_rx_buf** %11, align 8
  store %struct.ieee80211_rx_status* %5, %struct.ieee80211_rx_status** %12, align 8
  %15 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = call i32 @D_DROP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %113

28:                                               ; preds = %6
  %29 = load i32, i32* @IL_STOP_REASON_PASSIVE, align 4
  %30 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 4
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %37 = load i32, i32* @IL_STOP_REASON_PASSIVE, align 4
  %38 = call i32 @il_wake_queues_by_reason(%struct.il_priv* %36, i32 %37)
  %39 = call i32 @D_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %54 = call i64 @il_set_decrypted_flag(%struct.il_priv* %50, %struct.ieee80211_hdr* %51, i32 %52, %struct.ieee80211_rx_status* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %113

57:                                               ; preds = %49, %40
  %58 = load i32, i32* @SMALL_PACKET_SIZE, align 4
  %59 = call %struct.sk_buff* @dev_alloc_skb(i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %13, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = call i32 @IL_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %113

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SMALL_PACKET_SIZE, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %70 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @skb_put_data(%struct.sk_buff* %69, %struct.ieee80211_hdr* %70, i32 %71)
  br label %99

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %75 = load %struct.il_rx_buf*, %struct.il_rx_buf** %11, align 8
  %76 = getelementptr inbounds %struct.il_rx_buf, %struct.il_rx_buf* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %79 = bitcast %struct.ieee80211_hdr* %78 to i8*
  %80 = load %struct.il_rx_buf*, %struct.il_rx_buf** %11, align 8
  %81 = call i32 @rxb_addr(%struct.il_rx_buf* %80)
  %82 = sext i32 %81 to i64
  %83 = sub i64 0, %82
  %84 = getelementptr i8, i8* %79, i64 %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %86, %90
  %92 = call i32 @skb_add_rx_frag(%struct.sk_buff* %74, i32 0, i32* %77, i8* %84, i32 %85, i32 %91)
  %93 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %94 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.il_rx_buf*, %struct.il_rx_buf** %11, align 8
  %98 = getelementptr inbounds %struct.il_rx_buf, %struct.il_rx_buf* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %73, %68
  %100 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @il_update_stats(%struct.il_priv* %100, i32 0, i32 %101, i32 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %105 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %104)
  %106 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %107 = call i32 @memcpy(i32 %105, %struct.ieee80211_rx_status* %106, i32 4)
  %108 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %109 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %112 = call i32 @ieee80211_rx(i32 %110, %struct.sk_buff* %111)
  br label %113

113:                                              ; preds = %99, %62, %56, %26
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @D_DROP(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @il_wake_queues_by_reason(%struct.il_priv*, i32) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i64 @il_set_decrypted_flag(%struct.il_priv*, %struct.ieee80211_hdr*, i32, %struct.ieee80211_rx_status*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, %struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @il_update_stats(%struct.il_priv*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
