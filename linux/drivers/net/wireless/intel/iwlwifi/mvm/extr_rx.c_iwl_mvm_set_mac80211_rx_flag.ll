; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_set_mac80211_rx_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_set_mac80211_rx_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@RX_MPDU_RES_STATUS_SEC_ENC_MSK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_SEC_NO_ENC = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_SEC_ENC_ERR = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_MIC_OK = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@IEEE80211_CCMP_HDR_LEN = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_DEPRECATE_TTAK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_TTAK_OK = common dso_local global i32 0, align 4
@IEEE80211_TKIP_IV_LEN = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_ICV_OK = common dso_local global i32 0, align 4
@IEEE80211_WEP_IV_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unhandled alg: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, i32, i32*)* @iwl_mvm_set_mac80211_rx_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_set_mac80211_rx_flag(%struct.iwl_mvm* %0, %struct.ieee80211_hdr* %1, %struct.ieee80211_rx_status* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %8, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ieee80211_has_protected(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_ENC_MSK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_NO_ENC, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %5
  store i32 0, i32* %6, align 4
  br label %109

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_ENC_MSK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_ENC_ERR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %109

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_ENC_MSK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %98 [
    i32 131, label %35
    i32 129, label %49
    i32 128, label %66
    i32 130, label %86
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @RX_MPDU_RES_STATUS_MIC_OK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %109

41:                                               ; preds = %35
  %42 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %43 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @IEEE80211_CCMP_HDR_LEN, align 4
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %6, align 4
  br label %109

49:                                               ; preds = %31
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* @IWL_UCODE_TLV_API_DEPRECATE_TTAK, align 4
  %55 = call i32 @fw_has_api(i32* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @RX_MPDU_RES_STATUS_TTAK_OK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %109

63:                                               ; preds = %57, %49
  %64 = load i32, i32* @IEEE80211_TKIP_IV_LEN, align 4
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %31, %63
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @RX_MPDU_RES_STATUS_ICV_OK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32 -1, i32* %6, align 4
  br label %109

72:                                               ; preds = %66
  %73 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %74 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @RX_MPDU_RES_STATUS_SEC_ENC_MSK, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @IEEE80211_WEP_IV_LEN, align 4
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %72
  store i32 0, i32* %6, align 4
  br label %109

86:                                               ; preds = %31
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @RX_MPDU_RES_STATUS_MIC_OK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i32 -1, i32* %6, align 4
  br label %109

92:                                               ; preds = %86
  %93 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %94 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %95 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  store i32 0, i32* %6, align 4
  br label %109

98:                                               ; preds = %31
  %99 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %100 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @IWL_ERR(%struct.iwl_mvm* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %92, %91, %85, %71, %62, %41, %40, %30, %23
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @ieee80211_has_protected(i32) #1

declare dso_local i32 @fw_has_api(i32*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
