; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_send_go_probe_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_send_go_probe_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*, i32*, i64, i32)* @ath6kl_send_go_probe_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_send_go_probe_resp(%struct.ath6kl_vif* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl_vif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath6kl*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %16, i32 0, i32 1
  %18 = load %struct.ath6kl*, %struct.ath6kl** %17, align 8
  store %struct.ath6kl* %18, %struct.ath6kl** %10, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %20, %struct.ieee80211_mgmt** %15, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc(i64 %21, i32 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %101

29:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  %30 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %11, align 8
  br label %35

35:                                               ; preds = %76, %29
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = icmp ult i32* %37, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %35
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = icmp ugt i32* %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %84

55:                                               ; preds = %42
  %56 = load i32*, i32** %11, align 8
  %57 = call i64 @ath6kl_is_p2p_ie(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 2, %67
  %69 = call i32 @memcpy(i32* %63, i32* %64, i32 %68)
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 2, %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %59, %55
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 2, %79
  %81 = load i32*, i32** %11, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %11, align 8
  br label %35

84:                                               ; preds = %54, %35
  %85 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %86 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %89 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %93 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @ath6kl_wmi_send_probe_response_cmd(i32 %87, i32 %90, i32 %91, i32 %94, i32* %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @kfree(i32* %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %84, %26
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @ath6kl_is_p2p_ie(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_send_probe_response_cmd(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
