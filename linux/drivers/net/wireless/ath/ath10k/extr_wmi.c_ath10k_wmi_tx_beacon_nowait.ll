; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_tx_beacon_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_tx_beacon_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, i32, %struct.ath10k*, %struct.sk_buff* }
%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ath10k_skb_cb = type { i32, i32 }

@ATH10K_SKB_F_DTIM_ZERO = common dso_local global i32 0, align 4
@ATH10K_SKB_F_DELIVER_CAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_vif*)* @ath10k_wmi_tx_beacon_nowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_tx_beacon_nowait(%struct.ath10k_vif* %0) #0 {
  %2 = alloca %struct.ath10k_vif*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_skb_cb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %2, align 8
  %9 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %10 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %9, i32 0, i32 2
  %11 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  store %struct.ath10k* %11, %struct.ath10k** %3, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %16 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %15, i32 0, i32 3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %83

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %22)
  store %struct.ath10k_skb_cb* %23, %struct.ath10k_skb_cb** %4, align 8
  %24 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %25 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %82 [
    i32 129, label %27
    i32 128, label %27
    i32 130, label %28
  ]

27:                                               ; preds = %21, %21
  br label %82

28:                                               ; preds = %21
  %29 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %30 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %29, i32 0, i32 0
  store i32 129, i32* %30, align 8
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %4, align 8
  %35 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATH10K_SKB_F_DTIM_ZERO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %4, align 8
  %44 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATH10K_SKB_F_DELIVER_CAB, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %53 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %52, i32 0, i32 2
  %54 = load %struct.ath10k*, %struct.ath10k** %53, align 8
  %55 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %56 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %4, align 8
  %65 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ath10k_wmi_beacon_send_ref_nowait(%struct.ath10k* %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %71 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_bh(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %28
  %76 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %77 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %76, i32 0, i32 0
  store i32 128, i32* %77, align 8
  br label %81

78:                                               ; preds = %28
  %79 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %80 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %79, i32 0, i32 0
  store i32 130, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %21, %27
  br label %83

83:                                               ; preds = %82, %20
  %84 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %85 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock_bh(i32* %85)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_wmi_beacon_send_ref_nowait(%struct.ath10k*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
