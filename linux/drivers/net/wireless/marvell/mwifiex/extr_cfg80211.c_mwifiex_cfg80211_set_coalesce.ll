; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_coalesce = type { i32, i32* }
%struct.mwifiex_adapter = type { i32 }
%struct.mwifiex_ds_coalesce_cfg = type { i32, i32* }
%struct.mwifiex_private = type { i32 }

@MWIFIEX_BSS_ROLE_STA = common dso_local global i32 0, align 4
@WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Disable coalesce and reset all previous rules\0A\00", align 1
@HostCmd_CMD_COALESCE_CFG = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Recheck the patterns provided for rule %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_coalesce*)* @mwifiex_cfg80211_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_set_coalesce(%struct.wiphy* %0, %struct.cfg80211_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_coalesce*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_ds_coalesce_cfg, align 8
  %10 = alloca %struct.mwifiex_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_coalesce* %1, %struct.cfg80211_coalesce** %5, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = call %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy* %11)
  store %struct.mwifiex_adapter* %12, %struct.mwifiex_adapter** %6, align 8
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %14 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %15 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %13, i32 %14)
  store %struct.mwifiex_private* %15, %struct.mwifiex_private** %10, align 8
  %16 = call i32 @memset(%struct.mwifiex_ds_coalesce_cfg* %9, i32 0, i32 16)
  %17 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %5, align 8
  %18 = icmp ne %struct.cfg80211_coalesce* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %21 = load i32, i32* @WARN, align 4
  %22 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %20, i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %24 = load i32, i32* @HostCmd_CMD_COALESCE_CFG, align 4
  %25 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %26 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %23, i32 %24, i32 %25, i32 0, %struct.mwifiex_ds_coalesce_cfg* %9, i32 1)
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %2
  %28 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.cfg80211_coalesce, %struct.cfg80211_coalesce* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %62, %27
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.cfg80211_coalesce, %struct.cfg80211_coalesce* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %40 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %5, align 8
  %41 = getelementptr inbounds %struct.cfg80211_coalesce, %struct.cfg80211_coalesce* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %9, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @mwifiex_fill_coalesce_rule_info(%struct.mwifiex_private* %39, i32* %45, i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %38
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %55, i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %70

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %67 = load i32, i32* @HostCmd_CMD_COALESCE_CFG, align 4
  %68 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %69 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %66, i32 %67, i32 %68, i32 0, %struct.mwifiex_ds_coalesce_cfg* %9, i32 1)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %54, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @memset(%struct.mwifiex_ds_coalesce_cfg*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_coalesce_cfg*, i32) #1

declare dso_local i32 @mwifiex_fill_coalesce_rule_info(%struct.mwifiex_private*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
