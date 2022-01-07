; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_p2p.c_ath10k_p2p_noa_update_by_vdev_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_p2p.c_ath10k_p2p_noa_update_by_vdev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_p2p_noa_info = type { i32 }
%struct.ath10k_p2p_noa_arg = type { %struct.wmi_p2p_noa_info*, i32 }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@ath10k_p2p_noa_update_vdev_iter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_p2p_noa_update_by_vdev_id(%struct.ath10k* %0, i32 %1, %struct.wmi_p2p_noa_info* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi_p2p_noa_info*, align 8
  %7 = alloca %struct.ath10k_p2p_noa_arg, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wmi_p2p_noa_info* %2, %struct.wmi_p2p_noa_info** %6, align 8
  %8 = getelementptr inbounds %struct.ath10k_p2p_noa_arg, %struct.ath10k_p2p_noa_arg* %7, i32 0, i32 0
  %9 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %6, align 8
  store %struct.wmi_p2p_noa_info* %9, %struct.wmi_p2p_noa_info** %8, align 8
  %10 = getelementptr inbounds %struct.ath10k_p2p_noa_arg, %struct.ath10k_p2p_noa_arg* %7, i32 0, i32 1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %16 = load i32, i32* @ath10k_p2p_noa_update_vdev_iter, align 4
  %17 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %14, i32 %15, i32 %16, %struct.ath10k_p2p_noa_arg* %7)
  ret void
}

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.ath10k_p2p_noa_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
