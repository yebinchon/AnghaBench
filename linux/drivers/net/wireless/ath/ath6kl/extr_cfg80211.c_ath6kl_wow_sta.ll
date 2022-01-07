; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i32, %struct.net_device* }
%struct.net_device = type { i32*, i32 }

@ath6kl_wow_sta.discvr_pattern = internal constant [4 x i32] [i32 224, i32 0, i32 0, i32 248], align 16
@ath6kl_wow_sta.discvr_mask = internal constant [4 x i32] [i32 240, i32 0, i32 0, i32 248], align 16
@ETH_ALEN = common dso_local global i32 0, align 4
@WOW_LIST_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to add WOW unicast pattern\0A\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to add WOW mDNS/SSDP/LLMNR pattern\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.ath6kl_vif*)* @ath6kl_wow_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wow_sta(%struct.ath6kl* %0, %struct.ath6kl_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca %struct.ath6kl_vif*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store %struct.ath6kl_vif* %1, %struct.ath6kl_vif** %5, align 8
  %12 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %13 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  store i32 38, i32* %7, align 4
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = call i32 @eth_broadcast_addr(i32* %18)
  %20 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %21 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %24 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @WOW_LIST_ID, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ath6kl_wmi_add_wow_pattern_cmd(i32 %22, i32 %25, i32 %26, i32 %27, i32 0, i32* %30, i32* %18)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

37:                                               ; preds = %2
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IFF_ALLMULTI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IFF_MULTICAST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %44
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = call i64 @netdev_mc_count(%struct.net_device* %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51, %37
  %56 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %57 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %60 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @WOW_LIST_ID, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ath6kl_wmi_add_wow_pattern_cmd(i32 %58, i32 %61, i32 %62, i32 16, i32 %63, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ath6kl_wow_sta.discvr_pattern, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ath6kl_wow_sta.discvr_mask, i64 0, i64 0))
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = call i32 @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %51, %44
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %67, %34
  %73 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @eth_broadcast_addr(i32*) #2

declare dso_local i32 @ath6kl_wmi_add_wow_pattern_cmd(i32, i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @ath6kl_err(i8*) #2

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
