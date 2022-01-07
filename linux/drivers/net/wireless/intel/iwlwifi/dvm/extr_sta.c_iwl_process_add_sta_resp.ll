; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_process_add_sta_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_process_add_sta_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_add_sta_resp = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Processing response for adding station\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"REPLY_ADD_STA PASSED\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Adding station failed, no room in table.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Adding station failed, no block ack resource.\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Attempting to modify non-existing station\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Received REPLY_ADD_STA:(0x%08X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_packet*)* @iwl_process_add_sta_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_process_add_sta_resp(%struct.iwl_priv* %0, %struct.iwl_rx_packet* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_packet*, align 8
  %5 = alloca %struct.iwl_add_sta_resp*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %4, align 8
  %6 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.iwl_add_sta_resp*
  store %struct.iwl_add_sta_resp* %10, %struct.iwl_add_sta_resp** %5, align 8
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %12 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.iwl_add_sta_resp*, %struct.iwl_add_sta_resp** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_add_sta_resp, %struct.iwl_add_sta_resp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %31 [
    i32 128, label %19
    i32 129, label %22
    i32 130, label %25
    i32 131, label %28
  ]

19:                                               ; preds = %2
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %21 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %24 = call i32 @IWL_ERR(%struct.iwl_priv* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %27 = call i32 @IWL_ERR(%struct.iwl_priv* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %30 = call i32 @IWL_ERR(%struct.iwl_priv* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %33 = load %struct.iwl_add_sta_resp*, %struct.iwl_add_sta_resp** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_add_sta_resp, %struct.iwl_add_sta_resp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %28, %25, %22, %19
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
