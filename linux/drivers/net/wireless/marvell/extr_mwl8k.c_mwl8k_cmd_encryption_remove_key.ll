; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_encryption_remove_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_encryption_remove_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_key_conf = type { i64, i64 }
%struct.mwl8k_cmd_set_key = type { i32, i32 }
%struct.mwl8k_vif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@MWL8K_ENCR_REMOVE_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*, %struct.ieee80211_key_conf*)* @mwl8k_cmd_encryption_remove_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_encryption_remove_key(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32* %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.mwl8k_cmd_set_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mwl8k_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %14 = call %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif* %13)
  store %struct.mwl8k_vif* %14, %struct.mwl8k_vif** %12, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mwl8k_cmd_set_key* @kzalloc(i32 8, i32 %15)
  store %struct.mwl8k_cmd_set_key* %16, %struct.mwl8k_cmd_set_key** %10, align 8
  %17 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %18 = icmp eq %struct.mwl8k_cmd_set_key* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %65

22:                                               ; preds = %4
  %23 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %26 = call i32 @mwl8k_encryption_set_cmd_info(%struct.mwl8k_cmd_set_key* %23, i32* %24, %struct.ieee80211_key_conf* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %61

30:                                               ; preds = %22
  %31 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %38 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %30
  %43 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %12, align 8
  %44 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %42, %36
  %52 = load i32, i32* @MWL8K_ENCR_REMOVE_KEY, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  %54 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %55 = getelementptr inbounds %struct.mwl8k_cmd_set_key, %struct.mwl8k_cmd_set_key* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %58 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %59 = getelementptr inbounds %struct.mwl8k_cmd_set_key, %struct.mwl8k_cmd_set_key* %58, i32 0, i32 0
  %60 = call i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw* %56, %struct.ieee80211_vif* %57, i32* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %51, %29
  %62 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %63 = call i32 @kfree(%struct.mwl8k_cmd_set_key* %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %19
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif*) #1

declare dso_local %struct.mwl8k_cmd_set_key* @kzalloc(i32, i32) #1

declare dso_local i32 @mwl8k_encryption_set_cmd_info(%struct.mwl8k_cmd_set_key*, i32*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
