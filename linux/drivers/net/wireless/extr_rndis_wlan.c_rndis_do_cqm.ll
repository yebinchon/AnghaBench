; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_do_cqm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_do_cqm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i32, i64, i32, i32 }

@NDIS_80211_INFRA_INFRA = common dso_local global i64 0, align 8
@NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = common dso_local global i32 0, align 4
@NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32)* @rndis_do_cqm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_do_cqm(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rndis_wlan_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %10)
  store %struct.rndis_wlan_private* %11, %struct.rndis_wlan_private** %5, align 8
  %12 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %13 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  br label %79

20:                                               ; preds = %16
  %21 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %22 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NDIS_80211_INFRA_INFRA, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %79

27:                                               ; preds = %20
  %28 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %29 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %32 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %35 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %40
  %50 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW, align 4
  store i32 %50, i32* %6, align 4
  br label %68

51:                                               ; preds = %43, %27
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %60, %61
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %55
  %65 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH, align 4
  store i32 %65, i32* %6, align 4
  br label %67

66:                                               ; preds = %58, %51
  br label %79

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %71 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %73 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i32 @cfg80211_cqm_rssi_notify(i32 %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %68, %66, %26, %19
  ret void
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

declare dso_local i32 @cfg80211_cqm_rssi_notify(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
