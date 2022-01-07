; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_get_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_get_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ath6kl = type { i32, i32, i32 }
%struct.ath6kl_vif = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ath6kl_wmi_get_tx_pwr_cmd failed\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"target did not respond\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i32*)* @ath6kl_cfg80211_get_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_cfg80211_get_txpower(%struct.wiphy* %0, %struct.wireless_dev* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca %struct.ath6kl_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %11 = call i64 @wiphy_priv(%struct.wiphy* %10)
  %12 = inttoptr i64 %11 to %struct.ath6kl*
  store %struct.ath6kl* %12, %struct.ath6kl** %8, align 8
  %13 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %14 = call %struct.ath6kl_vif* @ath6kl_vif_first(%struct.ath6kl* %13)
  store %struct.ath6kl_vif* %14, %struct.ath6kl_vif** %9, align 8
  %15 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %16 = icmp ne %struct.ath6kl_vif* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %73

20:                                               ; preds = %3
  %21 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %22 = call i32 @ath6kl_cfg80211_ready(%struct.ath6kl_vif* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %20
  %28 = load i32, i32* @CONNECTED, align 4
  %29 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %30 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %29, i32 0, i32 1
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %27
  %34 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 0
  store i32 255, i32* %35, align 4
  %36 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %37 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %40 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ath6kl_wmi_get_tx_pwr_cmd(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = call i32 @ath6kl_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %73

48:                                               ; preds = %33
  %49 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %50 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %53 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 255
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @HZ, align 4
  %58 = mul nsw i32 5, %57
  %59 = call i32 @wait_event_interruptible_timeout(i32 %51, i32 %56, i32 %58)
  %60 = load i32, i32* @current, align 4
  %61 = call i64 @signal_pending(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = call i32 @ath6kl_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINTR, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %27
  %69 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %70 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %63, %44, %24, %17
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.ath6kl_vif* @ath6kl_vif_first(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_cfg80211_ready(%struct.ath6kl_vif*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ath6kl_wmi_get_tx_pwr_cmd(i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
