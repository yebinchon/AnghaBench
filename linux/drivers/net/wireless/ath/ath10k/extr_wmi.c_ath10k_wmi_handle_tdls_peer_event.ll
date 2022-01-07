; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_handle_tdls_peer_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_handle_tdls_peer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_tdls_peer_event = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath10k_peer = type { i32 }
%struct.ath10k_vif = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"received tdls peer event with invalid size (%d bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to find peer entry for %pM\0A\00", align 1
@WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE = common dso_local global i32 0, align 4
@WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"received tdls peer event for invalid vdev id %u\0A\00", align 1
@NL80211_TDLS_TEARDOWN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"received tdls teardown event for peer %pM reason %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"received unknown tdls peer event %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_handle_tdls_peer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_handle_tdls_peer_event(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_tdls_peer_event*, align 8
  %6 = alloca %struct.ath10k_peer*, align 8
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 16
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ath10k_err(%struct.ath10k* %18, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %105

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.wmi_tdls_peer_event*
  store %struct.wmi_tdls_peer_event* %27, %struct.wmi_tdls_peer_event** %5, align 8
  %28 = load %struct.wmi_tdls_peer_event*, %struct.wmi_tdls_peer_event** %5, align 8
  %29 = getelementptr inbounds %struct.wmi_tdls_peer_event, %struct.wmi_tdls_peer_event* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__le32_to_cpu(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.wmi_tdls_peer_event*, %struct.wmi_tdls_peer_event** %5, align 8
  %33 = getelementptr inbounds %struct.wmi_tdls_peer_event, %struct.wmi_tdls_peer_event* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__le32_to_cpu(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.wmi_tdls_peer_event*, %struct.wmi_tdls_peer_event** %5, align 8
  %37 = getelementptr inbounds %struct.wmi_tdls_peer_event, %struct.wmi_tdls_peer_event* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__le32_to_cpu(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.wmi_tdls_peer_event*, %struct.wmi_tdls_peer_event** %5, align 8
  %46 = getelementptr inbounds %struct.wmi_tdls_peer_event, %struct.wmi_tdls_peer_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k* %43, i32 %44, i32 %48)
  store %struct.ath10k_peer* %49, %struct.ath10k_peer** %6, align 8
  %50 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %51 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %54 = icmp ne %struct.ath10k_peer* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %23
  %56 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %57 = load %struct.wmi_tdls_peer_event*, %struct.wmi_tdls_peer_event** %5, align 8
  %58 = getelementptr inbounds %struct.wmi_tdls_peer_event, %struct.wmi_tdls_peer_event* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ath10k_warn(%struct.ath10k* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %105

62:                                               ; preds = %23
  %63 = load i32, i32* %9, align 4
  switch i32 %63, label %100 [
    i32 131, label %64
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %68 [
    i32 129, label %66
    i32 130, label %66
    i32 128, label %66
  ]

66:                                               ; preds = %64, %64, %64
  %67 = load i32, i32* @WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE, align 4
  store i32 %67, i32* %11, align 4
  br label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k* %71, i32 %72)
  store %struct.ath10k_vif* %73, %struct.ath10k_vif** %7, align 8
  %74 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %75 = icmp ne %struct.ath10k_vif* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ath10k_warn(%struct.ath10k* %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %105

80:                                               ; preds = %70
  %81 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %82 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wmi_tdls_peer_event*, %struct.wmi_tdls_peer_event** %5, align 8
  %85 = getelementptr inbounds %struct.wmi_tdls_peer_event, %struct.wmi_tdls_peer_event* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NL80211_TDLS_TEARDOWN, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @GFP_ATOMIC, align 4
  %91 = call i32 @ieee80211_tdls_oper_request(i32 %83, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %93 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %94 = load %struct.wmi_tdls_peer_event*, %struct.wmi_tdls_peer_event** %5, align 8
  %95 = getelementptr inbounds %struct.wmi_tdls_peer_event, %struct.wmi_tdls_peer_event* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %92, i32 %93, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %98)
  br label %105

100:                                              ; preds = %62
  %101 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %102 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %101, i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %17, %55, %76, %100, %80
  ret void
}

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k*, i32) #1

declare dso_local i32 @ieee80211_tdls_oper_request(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
