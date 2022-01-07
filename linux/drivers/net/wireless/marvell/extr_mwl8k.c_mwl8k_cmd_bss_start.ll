; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_bss_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_bss_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.mwl8k_cmd_bss_start = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.mwl8k_vif = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_BSS_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32)* @mwl8k_cmd_bss_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_bss_start(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwl8k_cmd_bss_start*, align 8
  %9 = alloca %struct.mwl8k_vif*, align 8
  %10 = alloca %struct.mwl8k_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif* %12)
  store %struct.mwl8k_vif* %13, %struct.mwl8k_vif** %9, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %15, align 8
  store %struct.mwl8k_priv* %16, %struct.mwl8k_priv** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  %21 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %9, align 8
  %24 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %100

30:                                               ; preds = %19, %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  %35 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %9, align 8
  %38 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %100

44:                                               ; preds = %33, %30
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.mwl8k_cmd_bss_start* @kzalloc(i32 24, i32 %45)
  store %struct.mwl8k_cmd_bss_start* %46, %struct.mwl8k_cmd_bss_start** %8, align 8
  %47 = load %struct.mwl8k_cmd_bss_start*, %struct.mwl8k_cmd_bss_start** %8, align 8
  %48 = icmp eq %struct.mwl8k_cmd_bss_start* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %100

52:                                               ; preds = %44
  %53 = load i32, i32* @MWL8K_CMD_BSS_START, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.mwl8k_cmd_bss_start*, %struct.mwl8k_cmd_bss_start** %8, align 8
  %56 = getelementptr inbounds %struct.mwl8k_cmd_bss_start, %struct.mwl8k_cmd_bss_start* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = call i8* @cpu_to_le16(i32 24)
  %59 = load %struct.mwl8k_cmd_bss_start*, %struct.mwl8k_cmd_bss_start** %8, align 8
  %60 = getelementptr inbounds %struct.mwl8k_cmd_bss_start, %struct.mwl8k_cmd_bss_start* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = load %struct.mwl8k_cmd_bss_start*, %struct.mwl8k_cmd_bss_start** %8, align 8
  %65 = getelementptr inbounds %struct.mwl8k_cmd_bss_start, %struct.mwl8k_cmd_bss_start* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %68 = load %struct.mwl8k_cmd_bss_start*, %struct.mwl8k_cmd_bss_start** %8, align 8
  %69 = getelementptr inbounds %struct.mwl8k_cmd_bss_start, %struct.mwl8k_cmd_bss_start* %68, i32 0, i32 0
  %70 = call i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw* %66, %struct.ieee80211_vif* %67, %struct.TYPE_2__* %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.mwl8k_cmd_bss_start*, %struct.mwl8k_cmd_bss_start** %8, align 8
  %72 = call i32 @kfree(%struct.mwl8k_cmd_bss_start* %71)
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %52
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %9, align 8
  %80 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 1, %81
  %83 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  %84 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %97

87:                                               ; preds = %75
  %88 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %9, align 8
  %89 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  %94 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %87, %78
  br label %98

98:                                               ; preds = %97, %52
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %49, %43, %29
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif*) #1

declare dso_local %struct.mwl8k_cmd_bss_start* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_bss_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
