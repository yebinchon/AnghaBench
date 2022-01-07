; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_tx_complete_handle_eapol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_tx_complete_handle_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.wil6210_priv = type { i32, i32, i32 }
%struct.wireless_dev = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@WMI_FW_CAPABILITY_SPLIT_REKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown rekey state = %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"queue_work of enable_tx_key_worker -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_tx_complete_handle_eapol(%struct.wil6210_vif* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %9 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %8)
  store %struct.wil6210_priv* %9, %struct.wil6210_priv** %5, align 8
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %11 = call %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif* %10)
  store %struct.wireless_dev* %11, %struct.wireless_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @WMI_FW_CAPABILITY_SPLIT_REKEY, align 4
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %20 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %2
  br label %65

25:                                               ; preds = %17
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @wil_skb_is_eap_4(%struct.wil6210_priv* %26, %struct.sk_buff* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %65

31:                                               ; preds = %25
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %33 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %32, i32 0, i32 1
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %36 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %43 [
    i32 130, label %38
    i32 129, label %39
    i32 128, label %42
  ]

38:                                               ; preds = %31
  br label %49

39:                                               ; preds = %31
  %40 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %41 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %40, i32 0, i32 0
  store i32 130, i32* %41, align 4
  br label %49

42:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %49

43:                                               ; preds = %31
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %45 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %46 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @wil_err(%struct.wil6210_priv* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %42, %39, %38
  %50 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %51 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %57 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %60 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %59, i32 0, i32 1
  %61 = call i32 @queue_work(i32 %58, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %24, %30, %55, %49
  ret void
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wil_skb_is_eap_4(%struct.wil6210_priv*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
