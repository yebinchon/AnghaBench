; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_update_noa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_update_noa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_vif = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_p2p_noa_info = type { i32 }

@ATH10K_DBG_MGMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"noa changed: %d\0A\00", align 1
@WMI_P2P_NOA_CHANGED_BIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ath10k_vif*, %struct.sk_buff*, %struct.wmi_p2p_noa_info*)* @ath10k_wmi_update_noa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_update_noa(%struct.ath10k* %0, %struct.ath10k_vif* %1, %struct.sk_buff* %2, %struct.wmi_p2p_noa_info* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.wmi_p2p_noa_info*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_vif* %1, %struct.ath10k_vif** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.wmi_p2p_noa_info* %3, %struct.wmi_p2p_noa_info** %8, align 8
  %9 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %10 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %64

16:                                               ; preds = %4
  %17 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %18 = load i32, i32* @ATH10K_DBG_MGMT, align 4
  %19 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %8, align 8
  %20 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ath10k_dbg(%struct.ath10k* %17, i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %8, align 8
  %24 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WMI_P2P_NOA_CHANGED_BIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %31 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %8, align 8
  %32 = call i32 @ath10k_p2p_noa_update(%struct.ath10k_vif* %30, %struct.wmi_p2p_noa_info* %31)
  br label %33

33:                                               ; preds = %29, %16
  %34 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %35 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %43 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call i32 @pskb_expand_head(%struct.sk_buff* %41, i32 0, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %40
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %53 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %58 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @skb_put_data(%struct.sk_buff* %51, i64 %56, i32 %61)
  br label %63

63:                                               ; preds = %50, %40
  br label %64

64:                                               ; preds = %15, %63, %33
  ret void
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_p2p_noa_update(%struct.ath10k_vif*, %struct.wmi_p2p_noa_info*) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
