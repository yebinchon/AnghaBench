; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_delba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_delba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.htt_resp = type { %struct.htt_rx_delba }
%struct.htt_rx_delba = type { i32 }
%struct.ath10k_peer = type { i32, i32 }
%struct.ath10k_vif = type { i32 }

@HTT_RX_BA_INFO0_TID = common dso_local global i32 0, align 4
@HTT_RX_BA_INFO0_PEER_ID = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"htt rx delba tid %hu peer_id %hu\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"received addba event for invalid peer_id: %hu\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"received addba event for invalid vdev_id: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"htt rx stop rx ba session sta %pM tid %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.htt_resp*)* @ath10k_htt_rx_delba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_delba(%struct.ath10k* %0, %struct.htt_resp* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.htt_resp*, align 8
  %5 = alloca %struct.htt_rx_delba*, align 8
  %6 = alloca %struct.ath10k_peer*, align 8
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.htt_resp* %1, %struct.htt_resp** %4, align 8
  %11 = load %struct.htt_resp*, %struct.htt_resp** %4, align 8
  %12 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %11, i32 0, i32 0
  store %struct.htt_rx_delba* %12, %struct.htt_rx_delba** %5, align 8
  %13 = load %struct.htt_rx_delba*, %struct.htt_rx_delba** %5, align 8
  %14 = getelementptr inbounds %struct.htt_rx_delba, %struct.htt_rx_delba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @__le16_to_cpu(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @HTT_RX_BA_INFO0_TID, align 4
  %19 = call i32 @MS(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @HTT_RX_BA_INFO0_PEER_ID, align 4
  %22 = call i32 @MS(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %24 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ath10k_dbg(%struct.ath10k* %23, i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k* %31, i32 %32)
  store %struct.ath10k_peer* %33, %struct.ath10k_peer** %6, align 8
  %34 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %35 = icmp ne %struct.ath10k_peer* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %2
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ath10k_warn(%struct.ath10k* %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  br label %79

43:                                               ; preds = %2
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %46 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k* %44, i32 %47)
  store %struct.ath10k_vif* %48, %struct.ath10k_vif** %7, align 8
  %49 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %50 = icmp ne %struct.ath10k_vif* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %54 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ath10k_warn(%struct.ath10k* %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_bh(i32* %58)
  br label %79

60:                                               ; preds = %43
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %63 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %64 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ath10k_dbg(%struct.ath10k* %61, i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %69 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %72 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ieee80211_stop_rx_ba_session_offl(i32 %70, i32 %73, i32 %74)
  %76 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %77 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  br label %79

79:                                               ; preds = %60, %51, %36
  ret void
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k*, i32) #1

declare dso_local i32 @ieee80211_stop_rx_ba_session_offl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
