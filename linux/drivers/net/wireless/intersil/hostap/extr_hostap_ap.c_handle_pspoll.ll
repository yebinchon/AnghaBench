; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_handle_pspoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_handle_pspoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.net_device* }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }
%struct.hostap_80211_rx_status = type { i32 }
%struct.sta_info = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@DEBUG_PS2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"handle_pspoll: BSSID=%pM, TA=%pM PWRMGT=%d\0A\00", align 1
@DEBUG_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"handle_pspoll - addr1(BSSID)=%pM not own MAC\0A\00", align 1
@DEBUG_PS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"   PSPOLL and AID[15:14] not set\0A\00", align 1
@MAX_AID_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"   invalid aid=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"   aid=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"   STA not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"   received aid=%i does not match with assoc.aid=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Sending buffered frame to STA after PS POLL (buffer_count=%d)\0A\00", align 1
@WLAN_STA_PS = common dso_local global i32 0, align 4
@WLAN_STA_TIM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Re-unsetting TIM for aid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.ieee80211_hdr*, %struct.hostap_80211_rx_status*)* @handle_pspoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pspoll(%struct.TYPE_6__* %0, %struct.ieee80211_hdr* %1, %struct.hostap_80211_rx_status* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.hostap_80211_rx_status*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %5, align 8
  store %struct.hostap_80211_rx_status* %2, %struct.hostap_80211_rx_status** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load i32, i32* @DEBUG_PS2, align 4
  %15 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ieee80211_has_pm(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @PDEBUG(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %28)
  %30 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ether_addr_equal(i32 %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @DEBUG_AP, align 4
  %40 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @PDEBUG(i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %178

44:                                               ; preds = %3
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @BIT(i32 15)
  %51 = call i32 @BIT(i32 14)
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = call i32 @BIT(i32 15)
  %55 = call i32 @BIT(i32 14)
  %56 = or i32 %54, %55
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* @DEBUG_PS, align 4
  %60 = call i32 (i32, i8*, ...) @PDEBUG(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %178

61:                                               ; preds = %44
  %62 = call i32 @BIT(i32 15)
  %63 = call i32 @BIT(i32 14)
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @MAX_AID_TABLE_SIZE, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70, %61
  %75 = load i32, i32* @DEBUG_PS, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i8*, ...) @PDEBUG(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %178

78:                                               ; preds = %70
  %79 = load i32, i32* @DEBUG_PS2, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i32, i8*, ...) @PDEBUG(i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = call i32 @spin_lock_bh(i32* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.sta_info* @ap_get_sta(%struct.TYPE_7__* %89, i32 %92)
  store %struct.sta_info* %93, %struct.sta_info** %8, align 8
  %94 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %95 = icmp ne %struct.sta_info* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %78
  %97 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 2
  %99 = call i32 @atomic_inc(i32* %98)
  br label %100

100:                                              ; preds = %96, %78
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock_bh(i32* %104)
  %106 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %107 = icmp eq %struct.sta_info* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @DEBUG_PS, align 4
  %110 = call i32 (i32, i8*, ...) @PDEBUG(i32 %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %178

111:                                              ; preds = %100
  %112 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %113 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i32, i32* @DEBUG_PS, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %121 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @PDEBUG(i32 %118, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %119, i32 %122)
  br label %178

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %147, %124
  %126 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %127 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %126, i32 0, i32 3
  %128 = call %struct.sk_buff* @skb_dequeue(i32* %127)
  store %struct.sk_buff* %128, %struct.sk_buff** %10, align 8
  %129 = icmp ne %struct.sk_buff* %128, null
  br i1 %129, label %130, label %148

130:                                              ; preds = %125
  %131 = load i32, i32* @DEBUG_PS2, align 4
  %132 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %133 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %132, i32 0, i32 3
  %134 = call i32 @skb_queue_len(i32* %133)
  %135 = call i32 (i32, i8*, ...) @PDEBUG(i32 %131, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = call i32 @pspoll_send_buffered(%struct.TYPE_6__* %136, %struct.sta_info* %137, %struct.sk_buff* %138)
  %140 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %141 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @WLAN_STA_PS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  br label %148

147:                                              ; preds = %130
  br label %125

148:                                              ; preds = %146, %125
  %149 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %150 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %149, i32 0, i32 3
  %151 = call i64 @skb_queue_empty(i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %148
  %154 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %155 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @WLAN_STA_TIM, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* @DEBUG_PS2, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 (i32, i8*, ...) @PDEBUG(i32 %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %160, %153
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @hostap_set_tim(%struct.TYPE_6__* %165, i32 %166, i32 0)
  %168 = load i32, i32* @WLAN_STA_TIM, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %171 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %164, %148
  %175 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %176 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %175, i32 0, i32 2
  %177 = call i32 @atomic_dec(i32* %176)
  br label %178

178:                                              ; preds = %174, %117, %108, %74, %58, %38
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @ieee80211_has_pm(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @pspoll_send_buffered(%struct.TYPE_6__*, %struct.sta_info*, %struct.sk_buff*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @hostap_set_tim(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
