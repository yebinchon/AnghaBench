; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_set_mesh_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_set_mesh_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.lbs_private = type { %struct.net_device* }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.ieee80211_channel*)* @lbs_cfg_set_mesh_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cfg_set_mesh_channel(%struct.wiphy* %0, %struct.net_device* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %9)
  store %struct.lbs_private* %10, %struct.lbs_private** %7, align 8
  %11 = load i32, i32* @ENOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = icmp ne %struct.net_device* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @lbs_mesh_set_channel(%struct.lbs_private* %20, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @lbs_mesh_set_channel(%struct.lbs_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
