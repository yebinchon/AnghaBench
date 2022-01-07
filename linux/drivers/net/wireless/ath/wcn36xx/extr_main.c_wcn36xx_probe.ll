; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32, i32, i32, %struct.ieee80211_hw*, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }

@WCN36XX_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"platform probe\0A\00", align 1
@wcn36xx_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to alloc hw\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@wcn36xx_hw_scan_worker = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"WLAN_CTRL\00", align 1
@wcn36xx_smd_rsp_process = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to open WLAN_CTRL channel\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"invalid local-mac-address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"mac address: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wcn36xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %10 = call i32 @wcn36xx_dbg(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @dev_get_drvdata(i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 56, i32* @wcn36xx_ops)
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %4, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = icmp ne %struct.ieee80211_hw* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %138

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.ieee80211_hw* %25)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = load %struct.wcn36xx*, %struct.wcn36xx** %28, align 8
  store %struct.wcn36xx* %29, %struct.wcn36xx** %5, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %32 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %31, i32 0, i32 3
  store %struct.ieee80211_hw* %30, %struct.ieee80211_hw** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %36 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %35, i32 0, i32 6
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %38 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %40 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %39, i32 0, i32 9
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %43 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %42, i32 0, i32 8
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %46 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %45, i32 0, i32 7
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %49 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %48, i32 0, i32 6
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @DMA_BIT_MASK(i32 32)
  %52 = call i32 @dma_set_mask_and_coherent(%struct.TYPE_2__* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %23
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %135

58:                                               ; preds = %23
  %59 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %60 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %59, i32 0, i32 5
  %61 = load i32, i32* @wcn36xx_hw_scan_worker, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* @wcn36xx_smd_rsp_process, align 4
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %66 = call i32 @qcom_wcnss_open_channel(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %64, %struct.ieee80211_hw* %65)
  %67 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %68 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %70 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %58
  %75 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %77 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %7, align 4
  br label %135

80:                                               ; preds = %58
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32* @of_get_property(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  store i32* %85, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ETH_ALEN, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %135

96:                                               ; preds = %88, %80
  %97 = load i32*, i32** %8, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @wcn36xx_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* %100)
  %102 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %103 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %102, i32 0, i32 3
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %103, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %104, i32* %105)
  br label %107

107:                                              ; preds = %99, %96
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = call i32 @wcn36xx_platform_get_resources(%struct.wcn36xx* %109, %struct.platform_device* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %135

115:                                              ; preds = %108
  %116 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %117 = call i32 @wcn36xx_init_ieee80211(%struct.wcn36xx* %116)
  %118 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %119 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %118, i32 0, i32 3
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %119, align 8
  %121 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %126

125:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %140

126:                                              ; preds = %124
  %127 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %128 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @iounmap(i32 %129)
  %131 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %132 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @iounmap(i32 %133)
  br label %135

135:                                              ; preds = %126, %114, %92, %74, %55
  %136 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %137 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %136)
  br label %138

138:                                              ; preds = %135, %19
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %125
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @wcn36xx_dbg(i32, i8*) #1

declare dso_local i8* @dev_get_drvdata(i32) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @qcom_wcnss_open_channel(i8*, i8*, i32, %struct.ieee80211_hw*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @wcn36xx_info(i8*, i32*) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @wcn36xx_platform_get_resources(%struct.wcn36xx*, %struct.platform_device*) #1

declare dso_local i32 @wcn36xx_init_ieee80211(%struct.wcn36xx*) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
