; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ath10k_skb_cb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ath10k_vif = type { i32 }
%struct.wmi_mgmt_tx_cmd = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i64, i64, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CCMP_MIC_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"wmi mgmt tx skb %pK len %d ftype %02x stype %02x\0A\00", align 1
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_op_gen_mgmt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_mgmt_tx(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k_skb_cb*, align 8
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca %struct.wmi_mgmt_tx_cmd*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %15)
  store %struct.ath10k_skb_cb* %16, %struct.ath10k_skb_cb** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %23, %struct.ieee80211_hdr** %9, align 8
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %6, align 8
  %29 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %2
  %33 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %6, align 8
  %34 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %39, %struct.ath10k_vif** %7, align 8
  %40 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %41 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ieee80211_is_mgmt(i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON_ONCE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.sk_buff* @ERR_PTR(i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %3, align 8
  br label %176

58:                                               ; preds = %44
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add i64 40, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ieee80211_is_action(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %58
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ieee80211_is_deauth(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %78 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ieee80211_is_disassoc(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %76, %70, %58
  %83 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ieee80211_has_protected(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* @IEEE80211_CCMP_MIC_LEN, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* @IEEE80211_CCMP_MIC_LEN, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %88, %82, %76
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @round_up(i32 %96, i32 4)
  store i32 %97, i32* %11, align 4
  %98 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %98, i32 %99)
  store %struct.sk_buff* %100, %struct.sk_buff** %10, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = icmp ne %struct.sk_buff* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  %106 = call %struct.sk_buff* @ERR_PTR(i32 %105)
  store %struct.sk_buff* %106, %struct.sk_buff** %3, align 8
  br label %176

107:                                              ; preds = %95
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.wmi_mgmt_tx_cmd*
  store %struct.wmi_mgmt_tx_cmd* %111, %struct.wmi_mgmt_tx_cmd** %8, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i8* @__cpu_to_le32(i32 %112)
  %114 = load %struct.wmi_mgmt_tx_cmd*, %struct.wmi_mgmt_tx_cmd** %8, align 8
  %115 = getelementptr inbounds %struct.wmi_mgmt_tx_cmd, %struct.wmi_mgmt_tx_cmd* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  store i8* %113, i8** %116, align 8
  %117 = load %struct.wmi_mgmt_tx_cmd*, %struct.wmi_mgmt_tx_cmd** %8, align 8
  %118 = getelementptr inbounds %struct.wmi_mgmt_tx_cmd, %struct.wmi_mgmt_tx_cmd* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.wmi_mgmt_tx_cmd*, %struct.wmi_mgmt_tx_cmd** %8, align 8
  %121 = getelementptr inbounds %struct.wmi_mgmt_tx_cmd, %struct.wmi_mgmt_tx_cmd* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i8* @__cpu_to_le32(i32 %123)
  %125 = load %struct.wmi_mgmt_tx_cmd*, %struct.wmi_mgmt_tx_cmd** %8, align 8
  %126 = getelementptr inbounds %struct.wmi_mgmt_tx_cmd, %struct.wmi_mgmt_tx_cmd* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load %struct.wmi_mgmt_tx_cmd*, %struct.wmi_mgmt_tx_cmd** %8, align 8
  %129 = getelementptr inbounds %struct.wmi_mgmt_tx_cmd, %struct.wmi_mgmt_tx_cmd* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %134 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %133)
  %135 = call i32 @ether_addr_copy(i32 %132, i32 %134)
  %136 = load %struct.wmi_mgmt_tx_cmd*, %struct.wmi_mgmt_tx_cmd** %8, align 8
  %137 = getelementptr inbounds %struct.wmi_mgmt_tx_cmd, %struct.wmi_mgmt_tx_cmd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @memcpy(i32 %138, i64 %141, i32 %144)
  %146 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %147 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %157 = and i32 %155, %156
  %158 = call i32 @ath10k_dbg(%struct.ath10k* %146, i32 %147, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %148, i32 %151, i32 %154, i32 %157)
  %159 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @trace_ath10k_tx_hdr(%struct.ath10k* %159, i64 %162, i32 %165)
  %167 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @trace_ath10k_tx_payload(%struct.ath10k* %167, i64 %170, i32 %173)
  %175 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %175, %struct.sk_buff** %3, align 8
  br label %176

176:                                              ; preds = %107, %103, %54
  %177 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %177
}

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i64 @ieee80211_is_disassoc(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @trace_ath10k_tx_hdr(%struct.ath10k*, i64, i32) #1

declare dso_local i32 @trace_ath10k_tx_payload(%struct.ath10k*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
