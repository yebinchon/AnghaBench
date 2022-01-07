; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_addba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_addba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.htt_resp = type { %struct.htt_rx_addba }
%struct.htt_rx_addba = type { i32, i32 }
%struct.ath10k_peer = type { i32, i32 }
%struct.ath10k_vif = type { i32 }

@HTT_RX_BA_INFO0_TID = common dso_local global i32 0, align 4
@HTT_RX_BA_INFO0_PEER_ID = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"htt rx addba tid %hu peer_id %hu size %hhu\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"received addba event for invalid peer_id: %hu\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"received addba event for invalid vdev_id: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"htt rx start rx ba session sta %pM tid %hu size %hhu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.htt_resp*)* @ath10k_htt_rx_addba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_addba(%struct.ath10k* %0, %struct.htt_resp* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.htt_resp*, align 8
  %5 = alloca %struct.htt_rx_addba*, align 8
  %6 = alloca %struct.ath10k_peer*, align 8
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.htt_resp* %1, %struct.htt_resp** %4, align 8
  %11 = load %struct.htt_resp*, %struct.htt_resp** %4, align 8
  %12 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %11, i32 0, i32 0
  store %struct.htt_rx_addba* %12, %struct.htt_rx_addba** %5, align 8
  %13 = load %struct.htt_rx_addba*, %struct.htt_rx_addba** %5, align 8
  %14 = getelementptr inbounds %struct.htt_rx_addba, %struct.htt_rx_addba* %13, i32 0, i32 1
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
  %27 = load %struct.htt_rx_addba*, %struct.htt_rx_addba** %5, align 8
  %28 = getelementptr inbounds %struct.htt_rx_addba, %struct.htt_rx_addba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ath10k_dbg(%struct.ath10k* %23, i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %29)
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k* %34, i32 %35)
  store %struct.ath10k_peer* %36, %struct.ath10k_peer** %6, align 8
  %37 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %38 = icmp ne %struct.ath10k_peer* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %2
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ath10k_warn(%struct.ath10k* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  br label %85

46:                                               ; preds = %2
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %49 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k* %47, i32 %50)
  store %struct.ath10k_vif* %51, %struct.ath10k_vif** %7, align 8
  %52 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %53 = icmp ne %struct.ath10k_vif* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %46
  %55 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %56 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %57 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ath10k_warn(%struct.ath10k* %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_bh(i32* %61)
  br label %85

63:                                               ; preds = %46
  %64 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %65 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %66 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %67 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.htt_rx_addba*, %struct.htt_rx_addba** %5, align 8
  %71 = getelementptr inbounds %struct.htt_rx_addba, %struct.htt_rx_addba* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ath10k_dbg(%struct.ath10k* %64, i32 %65, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %69, i32 %72)
  %74 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %75 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %78 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ieee80211_start_rx_ba_session_offl(i32 %76, i32 %79, i32 %80)
  %82 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %83 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_bh(i32* %83)
  br label %85

85:                                               ; preds = %63, %54, %39
  ret void
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k*, i32) #1

declare dso_local i32 @ieee80211_start_rx_ba_session_offl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
