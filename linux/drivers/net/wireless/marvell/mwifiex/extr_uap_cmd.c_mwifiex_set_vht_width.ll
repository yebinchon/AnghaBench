; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_set_vht_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_set_vht_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32 }
%struct.mwifiex_11ac_vht_cfg = type { i32, i8*, i8*, i32, i32 }

@VHT_CFG_5GHZ = common dso_local global i32 0, align 4
@DISABLE_VHT_MCS_SET = common dso_local global i8* null, align 8
@DEFAULT_VHT_MCS_SET = common dso_local global i8* null, align 8
@VHT_CAP_UAP_ONLY = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@VHT_BW_80_160_80P80 = common dso_local global i32 0, align 4
@HostCmd_CMD_11AC_CFG = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_set_vht_width(%struct.mwifiex_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_adapter*, align 8
  %8 = alloca %struct.mwifiex_11ac_vht_cfg, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 0
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  store %struct.mwifiex_adapter* %11, %struct.mwifiex_adapter** %7, align 8
  %12 = load i32, i32* @VHT_CFG_5GHZ, align 4
  %13 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %8, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %8, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i8*, i8** @DISABLE_VHT_MCS_SET, align 8
  %22 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %8, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** @DISABLE_VHT_MCS_SET, align 8
  %24 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %8, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  br label %30

25:                                               ; preds = %3
  %26 = load i8*, i8** @DEFAULT_VHT_MCS_SET, align 8
  %27 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %8, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** @DEFAULT_VHT_MCS_SET, align 8
  %29 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %8, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @VHT_CAP_UAP_ONLY, align 4
  %32 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @VHT_BW_80_160_80P80, align 4
  %41 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %39, %35, %30
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %46 = load i32, i32* @HostCmd_CMD_11AC_CFG, align 4
  %47 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %48 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %45, i32 %46, i32 %47, i32 0, %struct.mwifiex_11ac_vht_cfg* %8, i32 1)
  ret void
}

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_11ac_vht_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
