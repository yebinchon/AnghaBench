; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_stop_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_stop_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i64, i32, i32, i32 }

@AP_NETWORK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*)* @ath6kl_stop_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_stop_ap(%struct.wiphy* %0, %struct.net_device* %1) #0 {
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
  %12 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %13 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AP_NETWORK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load i32, i32* @CONNECTED, align 4
  %22 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %23 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %22, i32 0, i32 2
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOTCONN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %47

29:                                               ; preds = %20
  %30 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %31 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %34 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ath6kl_wmi_disconnect_cmd(i32 %32, i32 %35)
  %37 = load i32, i32* @CONNECTED, align 4
  %38 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %39 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %38, i32 0, i32 2
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %42 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @netif_carrier_off(i32 %43)
  %45 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %46 = call i32 @ath6kl_restore_htcap(%struct.ath6kl_vif* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %29, %26, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.ath6kl* @ath6kl_priv(%struct.net_device*) #1

declare dso_local %struct.ath6kl_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_disconnect_cmd(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @ath6kl_restore_htcap(%struct.ath6kl_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
