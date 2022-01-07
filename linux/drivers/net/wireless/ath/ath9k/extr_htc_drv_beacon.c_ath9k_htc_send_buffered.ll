; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_send_buffered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_send_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ieee80211_vif** }
%struct.ieee80211_vif = type { i32 }
%struct.ath_common = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }

@XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No free CAB slot\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to send CAB frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, i32)* @ath9k_htc_send_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_send_buffered(%struct.ath9k_htc_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(i32 %15)
  store %struct.ath_common* %16, %struct.ath_common** %5, align 8
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %23, i64 %25
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %26, align 8
  store %struct.ieee80211_vif* %27, %struct.ieee80211_vif** %6, align 8
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = call %struct.sk_buff* @ieee80211_get_buffered_bc(i32 %30, %struct.ieee80211_vif* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %7, align 8
  br label %33

33:                                               ; preds = %120, %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %36, label %126

36:                                               ; preds = %33
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %40, %struct.ieee80211_hdr** %8, align 8
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ieee80211_hdrlen(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 3
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %36
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i32 @skb_headroom(%struct.sk_buff* %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %61)
  br label %120

63:                                               ; preds = %55
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @skb_push(%struct.sk_buff* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @memmove(i64 %69, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %63, %49, %36
  %79 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %80 = call i32 @ath9k_htc_tx_get_slot(%struct.ath9k_htc_priv* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %85 = load i32, i32* @XMIT, align 4
  %86 = call i32 @ath_dbg(%struct.ath_common* %84, i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %87)
  br label %120

89:                                               ; preds = %78
  %90 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @ath9k_htc_tx_start(%struct.ath9k_htc_priv* %90, i32* null, %struct.sk_buff* %91, i32 %92, i32 1)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @ath9k_htc_tx_clear_slot(%struct.ath9k_htc_priv* %97, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %100)
  %102 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %103 = load i32, i32* @XMIT, align 4
  %104 = call i32 @ath_dbg(%struct.ath_common* %102, i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %119

105:                                              ; preds = %89
  %106 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %107 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @spin_lock_bh(i32* %108)
  %110 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %111 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %116 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock_bh(i32* %117)
  br label %119

119:                                              ; preds = %105, %96
  br label %120

120:                                              ; preds = %119, %83, %60
  %121 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %122 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %125 = call %struct.sk_buff* @ieee80211_get_buffered_bc(i32 %123, %struct.ieee80211_vif* %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %7, align 8
  br label %33

126:                                              ; preds = %33
  %127 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %128 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock_bh(i32* %128)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @ieee80211_get_buffered_bc(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @ath9k_htc_tx_get_slot(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath9k_htc_tx_start(%struct.ath9k_htc_priv*, i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ath9k_htc_tx_clear_slot(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
