; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_rf_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_rf_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.mwl8k_cmd_rf_antenna = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_RF_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @mwl8k_cmd_rf_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_rf_antenna(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwl8k_cmd_rf_antenna*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mwl8k_cmd_rf_antenna* @kzalloc(i32 32, i32 %10)
  store %struct.mwl8k_cmd_rf_antenna* %11, %struct.mwl8k_cmd_rf_antenna** %8, align 8
  %12 = load %struct.mwl8k_cmd_rf_antenna*, %struct.mwl8k_cmd_rf_antenna** %8, align 8
  %13 = icmp eq %struct.mwl8k_cmd_rf_antenna* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load i32, i32* @MWL8K_CMD_RF_ANTENNA, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.mwl8k_cmd_rf_antenna*, %struct.mwl8k_cmd_rf_antenna** %8, align 8
  %21 = getelementptr inbounds %struct.mwl8k_cmd_rf_antenna, %struct.mwl8k_cmd_rf_antenna* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = call i8* @cpu_to_le16(i32 32)
  %24 = load %struct.mwl8k_cmd_rf_antenna*, %struct.mwl8k_cmd_rf_antenna** %8, align 8
  %25 = getelementptr inbounds %struct.mwl8k_cmd_rf_antenna, %struct.mwl8k_cmd_rf_antenna* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.mwl8k_cmd_rf_antenna*, %struct.mwl8k_cmd_rf_antenna** %8, align 8
  %30 = getelementptr inbounds %struct.mwl8k_cmd_rf_antenna, %struct.mwl8k_cmd_rf_antenna* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.mwl8k_cmd_rf_antenna*, %struct.mwl8k_cmd_rf_antenna** %8, align 8
  %34 = getelementptr inbounds %struct.mwl8k_cmd_rf_antenna, %struct.mwl8k_cmd_rf_antenna* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %36 = load %struct.mwl8k_cmd_rf_antenna*, %struct.mwl8k_cmd_rf_antenna** %8, align 8
  %37 = getelementptr inbounds %struct.mwl8k_cmd_rf_antenna, %struct.mwl8k_cmd_rf_antenna* %36, i32 0, i32 0
  %38 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %35, %struct.TYPE_2__* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.mwl8k_cmd_rf_antenna*, %struct.mwl8k_cmd_rf_antenna** %8, align 8
  %40 = call i32 @kfree(%struct.mwl8k_cmd_rf_antenna* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %17, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.mwl8k_cmd_rf_antenna* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_rf_antenna*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
