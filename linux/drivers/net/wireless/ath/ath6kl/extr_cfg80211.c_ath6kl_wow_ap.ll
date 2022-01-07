; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i32 }

@ath6kl_wow_ap.unicst_pattern = internal constant [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], align 16
@ath6kl_wow_ap.unicst_mask = internal constant [21 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 127], align 16
@ath6kl_wow_ap.arp_pattern = internal constant [2 x i32] [i32 8, i32 6], align 4
@ath6kl_wow_ap.arp_mask = internal constant [2 x i32] [i32 255, i32 255], align 4
@ath6kl_wow_ap.discvr_pattern = internal constant [4 x i32] [i32 224, i32 0, i32 0, i32 248], align 16
@ath6kl_wow_ap.discvr_mask = internal constant [4 x i32] [i32 240, i32 0, i32 0, i32 248], align 16
@ath6kl_wow_ap.dhcp_pattern = internal constant [46 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67], align 16
@ath6kl_wow_ap.dhcp_mask = internal constant [46 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255], align 16
@WOW_LIST_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to add WOW unicast IP pattern\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to add WOW ARP pattern\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to add WOW mDNS/SSDP/LLMNR pattern\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to add WOW DHCP broadcast pattern\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.ath6kl_vif*)* @ath6kl_wow_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wow_ap(%struct.ath6kl* %0, %struct.ath6kl_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca %struct.ath6kl_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store %struct.ath6kl_vif* %1, %struct.ath6kl_vif** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 20, i32* %7, align 4
  store i32 38, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %15 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WOW_LIST_ID, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ath6kl_wmi_add_wow_pattern_cmd(i32 %13, i32 %16, i32 %17, i32 84, i32 %18, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @ath6kl_wow_ap.unicst_pattern, i64 0, i64 0), i32* getelementptr inbounds ([21 x i32], [21 x i32]* @ath6kl_wow_ap.unicst_mask, i64 0, i64 0))
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 @ath6kl_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %2
  %26 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %27 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %30 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WOW_LIST_ID, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ath6kl_wmi_add_wow_pattern_cmd(i32 %28, i32 %31, i32 %32, i32 8, i32 %33, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ath6kl_wow_ap.arp_pattern, i64 0, i64 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ath6kl_wow_ap.arp_mask, i64 0, i64 0))
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = call i32 @ath6kl_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %25
  %41 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %42 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %45 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WOW_LIST_ID, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ath6kl_wmi_add_wow_pattern_cmd(i32 %43, i32 %46, i32 %47, i32 16, i32 %48, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ath6kl_wow_ap.discvr_pattern, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ath6kl_wow_ap.discvr_mask, i64 0, i64 0))
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = call i32 @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %71

55:                                               ; preds = %40
  %56 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %57 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %60 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @WOW_LIST_ID, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ath6kl_wmi_add_wow_pattern_cmd(i32 %58, i32 %61, i32 %62, i32 184, i32 %63, i32* getelementptr inbounds ([46 x i32], [46 x i32]* @ath6kl_wow_ap.dhcp_pattern, i64 0, i64 0), i32* getelementptr inbounds ([46 x i32], [46 x i32]* @ath6kl_wow_ap.dhcp_mask, i64 0, i64 0))
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = call i32 @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67, %52, %37, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ath6kl_wmi_add_wow_pattern_cmd(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ath6kl_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
