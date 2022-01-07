; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_del_radio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_del_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac80211_hwsim_data = type { i32, i32, i32, i32 }
%struct.genl_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac80211_hwsim_data*, i8*, %struct.genl_info*)* @mac80211_hwsim_del_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_del_radio(%struct.mac80211_hwsim_data* %0, i8* %1, %struct.genl_info* %2) #0 {
  %4 = alloca %struct.mac80211_hwsim_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.genl_info*, align 8
  store %struct.mac80211_hwsim_data* %0, %struct.mac80211_hwsim_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.genl_info* %2, %struct.genl_info** %6, align 8
  %7 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %8 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %12 = call i32 @hwsim_mcast_del_radio(i32 %9, i8* %10, %struct.genl_info* %11)
  %13 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %14 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debugfs_remove_recursive(i32 %15)
  %17 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %18 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ieee80211_unregister_hw(i32 %19)
  %21 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %22 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_release_driver(i32 %23)
  %25 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %26 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_unregister(i32 %27)
  %29 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %30 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_free_hw(i32 %31)
  ret void
}

declare dso_local i32 @hwsim_mcast_del_radio(i32, i8*, %struct.genl_info*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @ieee80211_unregister_hw(i32) #1

declare dso_local i32 @device_release_driver(i32) #1

declare dso_local i32 @device_unregister(i32) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
