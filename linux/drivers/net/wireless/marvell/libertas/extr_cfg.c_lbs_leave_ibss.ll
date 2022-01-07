; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_leave_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_leave_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.lbs_private = type { %struct.net_device* }
%struct.cmd_ds_802_11_ad_hoc_stop = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@CMD_802_11_AD_HOC_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*)* @lbs_leave_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_leave_ibss(%struct.wiphy* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.lbs_private*, align 8
  %7 = alloca %struct.cmd_ds_802_11_ad_hoc_stop, align 4
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %9)
  store %struct.lbs_private* %10, %struct.lbs_private** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = icmp eq %struct.net_device* %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = call i32 @memset(%struct.cmd_ds_802_11_ad_hoc_stop* %7, i32 0, i32 4)
  %21 = call i32 @cpu_to_le16(i32 4)
  %22 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_stop, %struct.cmd_ds_802_11_ad_hoc_stop* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %25 = load i32, i32* @CMD_802_11_AD_HOC_STOP, align 4
  %26 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %24, i32 %25, %struct.cmd_ds_802_11_ad_hoc_stop* %7)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %28 = call i32 @lbs_mac_event_disconnected(%struct.lbs_private* %27, i32 1)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @memset(%struct.cmd_ds_802_11_ad_hoc_stop*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_ad_hoc_stop*) #1

declare dso_local i32 @lbs_mac_event_disconnected(%struct.lbs_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
