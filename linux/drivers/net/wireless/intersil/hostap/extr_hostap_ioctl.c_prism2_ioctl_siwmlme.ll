; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwmlme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwmlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.hostap_interface = type { i32* }
%struct.iw_mlme = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DISASSOC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism2_ioctl_siwmlme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_siwmlme(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iw_mlme*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %14)
  store %struct.hostap_interface* %15, %struct.hostap_interface** %10, align 8
  %16 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %17 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.iw_mlme*
  store %struct.iw_mlme* %20, %struct.iw_mlme** %12, align 8
  %21 = load %struct.iw_mlme*, %struct.iw_mlme** %12, align 8
  %22 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpu_to_le16(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.iw_mlme*, %struct.iw_mlme** %12, align 8
  %26 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %44 [
    i32 129, label %28
    i32 128, label %36
  ]

28:                                               ; preds = %4
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.iw_mlme*, %struct.iw_mlme** %12, align 8
  %31 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %35 = call i32 @prism2_sta_send_mgmt(i32* %29, i32 %33, i32 %34, i32* %13, i32 2)
  store i32 %35, i32* %5, align 4
  br label %47

36:                                               ; preds = %4
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.iw_mlme*, %struct.iw_mlme** %12, align 8
  %39 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_STYPE_DISASSOC, align 4
  %43 = call i32 @prism2_sta_send_mgmt(i32* %37, i32 %41, i32 %42, i32* %13, i32 2)
  store i32 %43, i32* %5, align 4
  br label %47

44:                                               ; preds = %4
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %36, %28
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @prism2_sta_send_mgmt(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
