; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_reorder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.sk_buff_head = type { i32 }
%struct.mt76_rx_status = type { i64, i64, i32, i32, i32, %struct.mt76_wcid* }
%struct.mt76_wcid = type { i32* }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.mt76_rx_tid = type { i64, i64, i32, i32, i32, %struct.TYPE_2__*, i64, %struct.sk_buff**, i64 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_QOS_CTL_ACK_POLICY_MASK = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_ACK_POLICY_NORMAL = common dso_local global i64 0, align 8
@RX_FLAG_DUP_VALIDATED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@REORDER_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_rx_aggr_reorder(%struct.sk_buff* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.mt76_rx_status*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.mt76_wcid*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.mt76_rx_tid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.mt76_rx_status*
  store %struct.mt76_rx_status* %19, %struct.mt76_rx_status** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %23, %struct.ieee80211_hdr** %6, align 8
  %24 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %25 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %24, i32 0, i32 5
  %26 = load %struct.mt76_wcid*, %struct.mt76_wcid** %25, align 8
  store %struct.mt76_wcid* %26, %struct.mt76_wcid** %7, align 8
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %27, %struct.sk_buff* %28)
  %30 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %31 = call %struct.ieee80211_sta* @wcid_to_sta(%struct.mt76_wcid* %30)
  store %struct.ieee80211_sta* %31, %struct.ieee80211_sta** %8, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %33 = icmp ne %struct.ieee80211_sta* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %201

35:                                               ; preds = %2
  %36 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %37 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %43 = call i32 @mt76_rx_aggr_check_ctl(%struct.sk_buff* %41, %struct.sk_buff_head* %42)
  br label %201

44:                                               ; preds = %35
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %46 = call i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %45)
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_MASK, align 8
  %49 = and i64 %47, %48
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_NORMAL, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %201

58:                                               ; preds = %53, %44
  %59 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %60 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %63 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.mt76_rx_tid* @rcu_dereference(i32 %66)
  store %struct.mt76_rx_tid* %67, %struct.mt76_rx_tid** %9, align 8
  %68 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %69 = icmp ne %struct.mt76_rx_tid* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %201

71:                                               ; preds = %58
  %72 = load i32, i32* @RX_FLAG_DUP_VALIDATED, align 4
  %73 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %74 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %78 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %77, i32 0, i32 3
  %79 = call i32 @spin_lock_bh(i32* %78)
  %80 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %81 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %197

85:                                               ; preds = %71
  %86 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %87 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %12, align 8
  %89 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %90 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %11, align 8
  %92 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %93 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @ieee80211_sn_less(i64 %95, i64 %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %99 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %85
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %197

106:                                              ; preds = %102
  %107 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %108 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %85
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %114 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %115 = call i32 @__skb_unlink(%struct.sk_buff* %113, %struct.sk_buff_head* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %117 = call i32 @dev_kfree_skb(%struct.sk_buff* %116)
  br label %197

118:                                              ; preds = %109
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %12, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load i64, i64* %12, align 8
  %124 = call i8* @ieee80211_sn_inc(i64 %123)
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %127 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %129 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %134 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %135 = call i32 @mt76_rx_aggr_release_head(%struct.mt76_rx_tid* %133, %struct.sk_buff_head* %134)
  br label %136

136:                                              ; preds = %132, %122
  br label %197

137:                                              ; preds = %118
  %138 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %139 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %140 = call i32 @__skb_unlink(%struct.sk_buff* %138, %struct.sk_buff_head* %139)
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %142, %143
  %145 = call i32 @ieee80211_sn_less(i64 %141, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %137
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %13, align 8
  %150 = call i64 @ieee80211_sn_sub(i64 %148, i64 %149)
  %151 = call i8* @ieee80211_sn_inc(i64 %150)
  %152 = ptrtoint i8* %151 to i64
  store i64 %152, i64* %12, align 8
  %153 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %154 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %155 = load i64, i64* %12, align 8
  %156 = call i32 @mt76_rx_aggr_release_frames(%struct.mt76_rx_tid* %153, %struct.sk_buff_head* %154, i64 %155)
  br label %157

157:                                              ; preds = %147, %137
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* %13, align 8
  %160 = urem i64 %158, %159
  store i64 %160, i64* %15, align 8
  %161 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %162 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %161, i32 0, i32 7
  %163 = load %struct.sk_buff**, %struct.sk_buff*** %162, align 8
  %164 = load i64, i64* %15, align 8
  %165 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %163, i64 %164
  %166 = load %struct.sk_buff*, %struct.sk_buff** %165, align 8
  %167 = icmp ne %struct.sk_buff* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %157
  %169 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %170 = call i32 @dev_kfree_skb(%struct.sk_buff* %169)
  br label %197

171:                                              ; preds = %157
  %172 = load i32, i32* @jiffies, align 4
  %173 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %174 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %176 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %177 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %176, i32 0, i32 7
  %178 = load %struct.sk_buff**, %struct.sk_buff*** %177, align 8
  %179 = load i64, i64* %15, align 8
  %180 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %178, i64 %179
  store %struct.sk_buff* %175, %struct.sk_buff** %180, align 8
  %181 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %182 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %181, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8
  %185 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %186 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %187 = call i32 @mt76_rx_aggr_release_head(%struct.mt76_rx_tid* %185, %struct.sk_buff_head* %186)
  %188 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %189 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %188, i32 0, i32 5
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %194 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %193, i32 0, i32 4
  %195 = load i32, i32* @REORDER_TIMEOUT, align 4
  %196 = call i32 @ieee80211_queue_delayed_work(i32 %192, i32* %194, i32 %195)
  br label %197

197:                                              ; preds = %171, %168, %136, %112, %105, %84
  %198 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %9, align 8
  %199 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %198, i32 0, i32 3
  %200 = call i32 @spin_unlock_bh(i32* %199)
  br label %201

201:                                              ; preds = %197, %70, %57, %40, %34
  ret void
}

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_sta* @wcid_to_sta(%struct.mt76_wcid*) #1

declare dso_local i32 @mt76_rx_aggr_check_ctl(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local %struct.mt76_rx_tid* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ieee80211_sn_less(i64, i64) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @ieee80211_sn_inc(i64) #1

declare dso_local i32 @mt76_rx_aggr_release_head(%struct.mt76_rx_tid*, %struct.sk_buff_head*) #1

declare dso_local i64 @ieee80211_sn_sub(i64, i64) #1

declare dso_local i32 @mt76_rx_aggr_release_frames(%struct.mt76_rx_tid*, %struct.sk_buff_head*, i64) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
