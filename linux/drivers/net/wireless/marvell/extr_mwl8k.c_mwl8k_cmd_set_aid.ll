; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_aid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_aid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }
%struct.mwl8k_cmd_update_set_aid = type { %struct.TYPE_4__, i32, i8*, i32, i8* }
%struct.TYPE_4__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_AID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MWL8K_FRAME_PROT_11G = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_PROTECTION = common dso_local global i32 0, align 4
@MWL8K_FRAME_PROT_11N_HT_40MHZ_ONLY = common dso_local global i32 0, align 4
@MWL8K_FRAME_PROT_11N_HT_ALL = common dso_local global i32 0, align 4
@MWL8K_FRAME_PROT_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32)* @mwl8k_cmd_set_aid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_aid(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwl8k_cmd_update_set_aid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mwl8k_cmd_update_set_aid* @kzalloc(i32 48, i32 %11)
  store %struct.mwl8k_cmd_update_set_aid* %12, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %13 = load %struct.mwl8k_cmd_update_set_aid*, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %14 = icmp eq %struct.mwl8k_cmd_update_set_aid* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %82

18:                                               ; preds = %3
  %19 = load i32, i32* @MWL8K_CMD_SET_AID, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.mwl8k_cmd_update_set_aid*, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %22 = getelementptr inbounds %struct.mwl8k_cmd_update_set_aid, %struct.mwl8k_cmd_update_set_aid* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = call i8* @cpu_to_le16(i32 48)
  %25 = load %struct.mwl8k_cmd_update_set_aid*, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %26 = getelementptr inbounds %struct.mwl8k_cmd_update_set_aid, %struct.mwl8k_cmd_update_set_aid* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.mwl8k_cmd_update_set_aid*, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %34 = getelementptr inbounds %struct.mwl8k_cmd_update_set_aid, %struct.mwl8k_cmd_update_set_aid* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mwl8k_cmd_update_set_aid*, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %36 = getelementptr inbounds %struct.mwl8k_cmd_update_set_aid, %struct.mwl8k_cmd_update_set_aid* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %37, i32 %41, i32 %42)
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %18
  %50 = load i32, i32* @MWL8K_FRAME_PROT_11G, align 4
  store i32 %50, i32* %9, align 4
  br label %65

51:                                               ; preds = %18
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %62 [
    i32 129, label %58
    i32 128, label %60
  ]

58:                                               ; preds = %51
  %59 = load i32, i32* @MWL8K_FRAME_PROT_11N_HT_40MHZ_ONLY, align 4
  store i32 %59, i32* %9, align 4
  br label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @MWL8K_FRAME_PROT_11N_HT_ALL, align 4
  store i32 %61, i32* %9, align 4
  br label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @MWL8K_FRAME_PROT_DISABLED, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %60, %58
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i32, i32* %9, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.mwl8k_cmd_update_set_aid*, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %69 = getelementptr inbounds %struct.mwl8k_cmd_update_set_aid, %struct.mwl8k_cmd_update_set_aid* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.mwl8k_cmd_update_set_aid*, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %71 = getelementptr inbounds %struct.mwl8k_cmd_update_set_aid, %struct.mwl8k_cmd_update_set_aid* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @legacy_rate_mask_to_array(i32 %72, i32 %73)
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %76 = load %struct.mwl8k_cmd_update_set_aid*, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %77 = getelementptr inbounds %struct.mwl8k_cmd_update_set_aid, %struct.mwl8k_cmd_update_set_aid* %76, i32 0, i32 0
  %78 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %75, %struct.TYPE_4__* %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.mwl8k_cmd_update_set_aid*, %struct.mwl8k_cmd_update_set_aid** %8, align 8
  %80 = call i32 @kfree(%struct.mwl8k_cmd_update_set_aid* %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %65, %15
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.mwl8k_cmd_update_set_aid* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @legacy_rate_mask_to_array(i32, i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_update_set_aid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
