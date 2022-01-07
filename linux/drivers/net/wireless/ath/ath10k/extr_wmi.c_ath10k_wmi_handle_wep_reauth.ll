; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_handle_wep_reauth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_handle_wep_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32*, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_WEP_IV_LEN = common dso_local global i32 0, align 4
@WEP_KEYID_SHIFT = common dso_local global i32 0, align 4
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"mac wep key present for peer %pM\0A\00", align 1
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*, %struct.ieee80211_rx_status*)* @ath10k_wmi_handle_wep_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_handle_wep_reauth(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %7, align 8
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee80211_is_auth(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ieee80211_has_protected(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %3
  br label %78

28:                                               ; preds = %21
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_hdrlen(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @IEEE80211_WEP_IV_LEN, align 4
  %38 = add i32 %36, %37
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %78

41:                                               ; preds = %28
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @IEEE80211_WEP_IV_LEN, align 4
  %47 = sub i32 %46, 1
  %48 = add i32 %45, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WEP_KEYID_SHIFT, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %55 = call i32* @ieee80211_get_SA(%struct.ieee80211_hdr* %54)
  store i32* %55, i32** %10, align 8
  %56 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %57 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %56, i32 0, i32 0
  %58 = call i32 @spin_lock_bh(i32* %57)
  %59 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ath10k_mac_is_peer_wep_key_set(%struct.ath10k* %59, i32* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %64 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_bh(i32* %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %41
  %69 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %70 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @ath10k_dbg(%struct.ath10k* %69, i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %71)
  %73 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %74 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %27, %40, %68, %41
  ret void
}

declare dso_local i32 @ieee80211_is_auth(i32) #1

declare dso_local i32 @ieee80211_has_protected(i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32* @ieee80211_get_SA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_mac_is_peer_wep_key_set(%struct.ath10k*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
