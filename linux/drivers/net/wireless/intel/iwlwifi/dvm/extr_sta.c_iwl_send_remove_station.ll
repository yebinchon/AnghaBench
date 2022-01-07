; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_send_remove_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_send_remove_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_rem_sta_cmd = type { i32, i32 }
%struct.iwl_rem_sta_resp = type { i32 }
%struct.iwl_host_cmd = type { %struct.iwl_rx_packet*, i32, i32, i32, i32 }

@REPLY_REMOVE_STA = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"REPLY_REMOVE_STA PASSED\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"REPLY_REMOVE_STA failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i32*, i32, i32)* @iwl_send_remove_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_remove_station(%struct.iwl_priv* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_rx_packet*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_rem_sta_cmd, align 4
  %13 = alloca %struct.iwl_rem_sta_resp*, align 8
  %14 = alloca %struct.iwl_host_cmd, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 0
  store %struct.iwl_rx_packet* null, %struct.iwl_rx_packet** %15, align 8
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 2
  %18 = ptrtoint %struct.iwl_rem_sta_cmd* %12 to i32
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 3
  store i32 8, i32* %19, align 8
  %20 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 4
  %21 = load i32, i32* @REPLY_REMOVE_STA, align 4
  store i32 %21, i32* %20, align 4
  %22 = call i32 @memset(%struct.iwl_rem_sta_cmd* %12, i32 0, i32 8)
  %23 = getelementptr inbounds %struct.iwl_rem_sta_cmd, %struct.iwl_rem_sta_cmd* %12, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.iwl_rem_sta_cmd, %struct.iwl_rem_sta_cmd* %12, i32 0, i32 1
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32* %24, i32* %25, i32 %26)
  %28 = load i32, i32* @CMD_WANT_SKB, align 4
  %29 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 8
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %33 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %32, %struct.iwl_host_cmd* %14)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %73

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 0
  %40 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %39, align 8
  store %struct.iwl_rx_packet* %40, %struct.iwl_rx_packet** %10, align 8
  %41 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %42 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast i8* %44 to %struct.iwl_rem_sta_resp*
  store %struct.iwl_rem_sta_resp* %45, %struct.iwl_rem_sta_resp** %13, align 8
  %46 = load %struct.iwl_rem_sta_resp*, %struct.iwl_rem_sta_resp** %13, align 8
  %47 = getelementptr inbounds %struct.iwl_rem_sta_resp, %struct.iwl_rem_sta_resp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %65 [
    i32 128, label %49
  ]

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @iwl_sta_ucode_deactivate(%struct.iwl_priv* %56, i32 %57)
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %60 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_bh(i32* %60)
  br label %62

62:                                               ; preds = %52, %49
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %64 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %70

65:                                               ; preds = %38
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %69 = call i32 @IWL_ERR(%struct.iwl_priv* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %62
  %71 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %14)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %36
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @memset(%struct.iwl_rem_sta_cmd*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iwl_sta_ucode_deactivate(%struct.iwl_priv*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
