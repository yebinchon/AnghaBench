; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_new_stn_add_self.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_new_stn_add_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.mwl8k_cmd_set_new_stn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_NEW_STN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @mwl8k_cmd_set_new_stn_add_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_new_stn_add_self(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.mwl8k_cmd_set_new_stn*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mwl8k_cmd_set_new_stn* @kzalloc(i32 24, i32 %8)
  store %struct.mwl8k_cmd_set_new_stn* %9, %struct.mwl8k_cmd_set_new_stn** %6, align 8
  %10 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %6, align 8
  %11 = icmp eq %struct.mwl8k_cmd_set_new_stn* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load i32, i32* @MWL8K_CMD_SET_NEW_STN, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %6, align 8
  %19 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = call i8* @cpu_to_le16(i32 24)
  %22 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %6, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %6, align 8
  %26 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(i32 %27, i32 %30, i32 %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %35 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %6, align 8
  %36 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %35, i32 0, i32 0
  %37 = call i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw* %33, %struct.ieee80211_vif* %34, %struct.TYPE_2__* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %6, align 8
  %39 = call i32 @kfree(%struct.mwl8k_cmd_set_new_stn* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %15, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.mwl8k_cmd_set_new_stn* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_new_stn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
