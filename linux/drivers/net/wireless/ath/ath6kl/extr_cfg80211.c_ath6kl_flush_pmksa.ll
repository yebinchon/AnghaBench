; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_flush_pmksa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_flush_pmksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i32, i32, i32 }

@CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*)* @ath6kl_flush_pmksa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_flush_pmksa(%struct.wiphy* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ath6kl*, align 8
  %7 = alloca %struct.ath6kl_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ath6kl* @ath6kl_priv(%struct.net_device* %8)
  store %struct.ath6kl* %9, %struct.ath6kl** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ath6kl_vif* @netdev_priv(%struct.net_device* %10)
  store %struct.ath6kl_vif* %11, %struct.ath6kl_vif** %7, align 8
  %12 = load i32, i32* @CONNECTED, align 4
  %13 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %14 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %22 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %25 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ath6kl_wmi_setpmkid_cmd(i32 %20, i32 %23, i32 %26, i32* null, i32 0)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.ath6kl* @ath6kl_priv(%struct.net_device*) #1

declare dso_local %struct.ath6kl_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_setpmkid_cmd(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
