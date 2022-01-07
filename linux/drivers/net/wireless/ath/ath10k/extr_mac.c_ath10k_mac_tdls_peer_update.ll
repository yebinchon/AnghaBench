; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tdls_peer_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tdls_peer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ieee80211_sta = type { i32, i32, i32, i32 }
%struct.wmi_tdls_peer_update_cmd_arg = type { i32, i32, i32 }
%struct.wmi_tdls_peer_capab_arg = type { i32, i32, i32 }
%struct.wmi_channel_arg = type { i32 }

@WMI_TDLS_PEER_STATE_CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed to update tdls peer %pM on vdev %i: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, %struct.ieee80211_sta*, i32)* @ath10k_mac_tdls_peer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_tdls_peer_update(%struct.ath10k* %0, i32 %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wmi_tdls_peer_update_cmd_arg, align 4
  %12 = alloca %struct.wmi_tdls_peer_capab_arg, align 4
  %13 = alloca %struct.wmi_channel_arg, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = bitcast %struct.wmi_tdls_peer_update_cmd_arg* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  %15 = bitcast %struct.wmi_tdls_peer_capab_arg* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  %16 = bitcast %struct.wmi_channel_arg* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %11, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %11, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %11, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ether_addr_copy(i32 %25, i32 %28)
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %12, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %12, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @WMI_TDLS_PEER_STATE_CONNECTED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %4
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %12, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %41, %4
  %49 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %50 = call i32 @ath10k_wmi_tdls_peer_update(%struct.ath10k* %49, %struct.wmi_tdls_peer_update_cmd_arg* %11, %struct.wmi_tdls_peer_capab_arg* %12, %struct.wmi_channel_arg* %13)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %55 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %11, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @ath10k_warn(%struct.ath10k* %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @ether_addr_copy(i32, i32) #2

declare dso_local i32 @ath10k_wmi_tdls_peer_update(%struct.ath10k*, %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_channel_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
