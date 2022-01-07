; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32, i32, i32, i32, i32, i32, i32 }

@WCN36XX_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"platform remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wcn36xx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.wcn36xx*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ieee80211_hw* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  store %struct.wcn36xx* %9, %struct.wcn36xx** %4, align 8
  %10 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %11 = call i32 @wcn36xx_dbg(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %13 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @release_firmware(i32 %14)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %16)
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %19 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @qcom_smem_state_put(i32 %20)
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %23 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @qcom_smem_state_put(i32 %24)
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %27 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rpmsg_destroy_ept(i32 %28)
  %30 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %31 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iounmap(i32 %32)
  %34 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %35 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iounmap(i32 %36)
  %38 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %39 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %38, i32 0, i32 0
  %40 = call i32 @mutex_destroy(i32* %39)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %42 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %41)
  ret i32 0
}

declare dso_local %struct.ieee80211_hw* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @qcom_smem_state_put(i32) #1

declare dso_local i32 @rpmsg_destroy_ept(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
