; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cancel_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cancel_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ath6kl_vif = type { i64, i32, i64, i32 }
%struct.ath6kl = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i64)* @ath6kl_cancel_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_cancel_remain_on_channel(%struct.wiphy* %0, %struct.wireless_dev* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath6kl_vif*, align 8
  %9 = alloca %struct.ath6kl*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %11 = call %struct.ath6kl_vif* @ath6kl_vif_from_wdev(%struct.wireless_dev* %10)
  store %struct.ath6kl_vif* %11, %struct.ath6kl_vif** %8, align 8
  %12 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %13 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ath6kl* @ath6kl_priv(i32 %14)
  store %struct.ath6kl* %15, %struct.ath6kl** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %18 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %27 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ath6kl*, %struct.ath6kl** %9, align 8
  %29 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %8, align 8
  %32 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ath6kl_wmi_cancel_remain_on_chnl_cmd(i32 %30, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %24, %21
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.ath6kl_vif* @ath6kl_vif_from_wdev(%struct.wireless_dev*) #1

declare dso_local %struct.ath6kl* @ath6kl_priv(i32) #1

declare dso_local i32 @ath6kl_wmi_cancel_remain_on_chnl_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
