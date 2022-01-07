; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_uapsd_trigger_frame_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_uapsd_trigger_frame_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, i32, %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.ath6kl_sta = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ATH6KL_APSD_NUM_OF_AC = common dso_local global i32 0, align 4
@ATH6KL_APSD_FRAME_MASK = common dso_local global i32 0, align 4
@ATH6KL_APSD_ALL_FRAME = common dso_local global i32 0, align 4
@STA_PS_APSD_TRIGGER = common dso_local global i32 0, align 4
@STA_PS_APSD_EOSP = common dso_local global i32 0, align 4
@WMI_AP_APSD_NO_DELIVERY_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_vif*, %struct.ath6kl_sta*)* @ath6kl_uapsd_trigger_frame_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_uapsd_trigger_frame_rx(%struct.ath6kl_vif* %0, %struct.ath6kl_sta* %1) #0 {
  %3 = alloca %struct.ath6kl_vif*, align 8
  %4 = alloca %struct.ath6kl_sta*, align 8
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %3, align 8
  store %struct.ath6kl_sta* %1, %struct.ath6kl_sta** %4, align 8
  %11 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %12 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %11, i32 0, i32 2
  %13 = load %struct.ath6kl*, %struct.ath6kl** %12, align 8
  store %struct.ath6kl* %13, %struct.ath6kl** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %14 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %15 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATH6KL_APSD_NUM_OF_AC, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32, i32* @ATH6KL_APSD_FRAME_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ATH6KL_APSD_ALL_FRAME, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %2
  %26 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %27 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %26, i32 0, i32 3
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %30 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %29, i32 0, i32 4
  %31 = call i32 @skb_queue_empty(i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %33 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %32, i32 0, i32 3
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %75, %25
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br i1 %43, label %44, label %93

44:                                               ; preds = %42
  %45 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %46 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %45, i32 0, i32 3
  %47 = call i32 @spin_lock_bh(i32* %46)
  %48 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %49 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %48, i32 0, i32 4
  %50 = call %struct.sk_buff* @skb_dequeue(i32* %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %10, align 8
  %51 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %52 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %51, i32 0, i32 4
  %53 = call i32 @skb_queue_empty(i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %55 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %54, i32 0, i32 3
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load i32, i32* @STA_PS_APSD_TRIGGER, align 4
  %58 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %59 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %44
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66, %44
  %70 = load i32, i32* @STA_PS_APSD_EOSP, align 4
  %71 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %72 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %78 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ath6kl_data_tx(%struct.sk_buff* %76, i32 %79)
  %81 = load i32, i32* @STA_PS_APSD_TRIGGER, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %84 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @STA_PS_APSD_EOSP, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %90 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %36

93:                                               ; preds = %42
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @WMI_AP_APSD_NO_DELIVERY_FRAMES, align 4
  store i32 %100, i32* %9, align 4
  br label %102

101:                                              ; preds = %96
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %99
  %103 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %104 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %107 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %4, align 8
  %110 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @ath6kl_wmi_set_apsd_bfrd_traf(i32 %105, i32 %108, i32 %111, i32 0, i32 %112)
  br label %114

114:                                              ; preds = %102, %93
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ath6kl_data_tx(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath6kl_wmi_set_apsd_bfrd_traf(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
