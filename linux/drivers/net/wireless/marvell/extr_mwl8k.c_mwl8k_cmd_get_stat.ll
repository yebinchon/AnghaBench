; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_get_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_low_level_stats = type { i8*, i8*, i8*, i8* }
%struct.mwl8k_cmd_get_stat = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_GET_STAT = common dso_local global i32 0, align 4
@MWL8K_STAT_ACK_FAILURE = common dso_local global i64 0, align 8
@MWL8K_STAT_RTS_FAILURE = common dso_local global i64 0, align 8
@MWL8K_STAT_FCS_ERROR = common dso_local global i64 0, align 8
@MWL8K_STAT_RTS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_low_level_stats*)* @mwl8k_cmd_get_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_get_stat(%struct.ieee80211_hw* %0, %struct.ieee80211_low_level_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_low_level_stats*, align 8
  %6 = alloca %struct.mwl8k_cmd_get_stat*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_low_level_stats* %1, %struct.ieee80211_low_level_stats** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mwl8k_cmd_get_stat* @kzalloc(i32 24, i32 %8)
  store %struct.mwl8k_cmd_get_stat* %9, %struct.mwl8k_cmd_get_stat** %6, align 8
  %10 = load %struct.mwl8k_cmd_get_stat*, %struct.mwl8k_cmd_get_stat** %6, align 8
  %11 = icmp eq %struct.mwl8k_cmd_get_stat* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load i32, i32* @MWL8K_CMD_GET_STAT, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.mwl8k_cmd_get_stat*, %struct.mwl8k_cmd_get_stat** %6, align 8
  %19 = getelementptr inbounds %struct.mwl8k_cmd_get_stat, %struct.mwl8k_cmd_get_stat* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = call i8* @cpu_to_le16(i32 24)
  %22 = load %struct.mwl8k_cmd_get_stat*, %struct.mwl8k_cmd_get_stat** %6, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_get_stat, %struct.mwl8k_cmd_get_stat* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %26 = load %struct.mwl8k_cmd_get_stat*, %struct.mwl8k_cmd_get_stat** %6, align 8
  %27 = getelementptr inbounds %struct.mwl8k_cmd_get_stat, %struct.mwl8k_cmd_get_stat* %26, i32 0, i32 1
  %28 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %25, %struct.TYPE_2__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %68, label %31

31:                                               ; preds = %15
  %32 = load %struct.mwl8k_cmd_get_stat*, %struct.mwl8k_cmd_get_stat** %6, align 8
  %33 = getelementptr inbounds %struct.mwl8k_cmd_get_stat, %struct.mwl8k_cmd_get_stat* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @MWL8K_STAT_ACK_FAILURE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.mwl8k_cmd_get_stat*, %struct.mwl8k_cmd_get_stat** %6, align 8
  %42 = getelementptr inbounds %struct.mwl8k_cmd_get_stat, %struct.mwl8k_cmd_get_stat* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @MWL8K_STAT_RTS_FAILURE, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mwl8k_cmd_get_stat*, %struct.mwl8k_cmd_get_stat** %6, align 8
  %51 = getelementptr inbounds %struct.mwl8k_cmd_get_stat, %struct.mwl8k_cmd_get_stat* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @MWL8K_STAT_FCS_ERROR, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.mwl8k_cmd_get_stat*, %struct.mwl8k_cmd_get_stat** %6, align 8
  %60 = getelementptr inbounds %struct.mwl8k_cmd_get_stat, %struct.mwl8k_cmd_get_stat* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @MWL8K_STAT_RTS_SUCCESS, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @le32_to_cpu(i32 %64)
  %66 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %31, %15
  %69 = load %struct.mwl8k_cmd_get_stat*, %struct.mwl8k_cmd_get_stat** %6, align 8
  %70 = call i32 @kfree(%struct.mwl8k_cmd_get_stat* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.mwl8k_cmd_get_stat* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_get_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
