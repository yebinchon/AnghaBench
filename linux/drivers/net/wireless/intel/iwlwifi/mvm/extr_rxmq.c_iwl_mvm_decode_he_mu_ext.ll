; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_decode_he_mu_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_decode_he_mu_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_rx_phy_data = type { i32, i32, i32 }
%struct.ieee80211_radiotap_he_mu = type { i8**, i32, i32, i8** }

@IWL_RX_PHY_DATA4_HE_MU_EXT_CH1_CRC_OK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_RU_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_CTR_26T_RU_KNOWN = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA4_HE_MU_EXT_CH1_CTR_RU = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_CTR_26T_RU = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA2_HE_MU_EXT_CH1_RU0 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA3_HE_MU_EXT_CH1_RU1 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA2_HE_MU_EXT_CH1_RU2 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA3_HE_MU_EXT_CH1_RU3 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA4_HE_MU_EXT_CH2_CRC_OK = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_MSK = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH2_RU_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH2_CTR_26T_RU_KNOWN = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA4_HE_MU_EXT_CH2_CTR_RU = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS2_CH2_CTR_26T_RU = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA2_HE_MU_EXT_CH2_RU0 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA3_HE_MU_EXT_CH2_RU1 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA2_HE_MU_EXT_CH2_RU2 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA3_HE_MU_EXT_CH2_RU3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_rx_phy_data*, i32, %struct.ieee80211_radiotap_he_mu*)* @iwl_mvm_decode_he_mu_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_decode_he_mu_ext(%struct.iwl_mvm* %0, %struct.iwl_mvm_rx_phy_data* %1, i32 %2, %struct.ieee80211_radiotap_he_mu* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_rx_phy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_radiotap_he_mu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm_rx_phy_data* %1, %struct.iwl_mvm_rx_phy_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_radiotap_he_mu* %3, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %12 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @IWL_RX_PHY_DATA4_HE_MU_EXT_CH1_CRC_OK, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i8* @FIELD_GET(i32 %24, i32 %25)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %74

28:                                               ; preds = %4
  %29 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_RU_KNOWN, align 4
  %30 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_CTR_26T_RU_KNOWN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @IWL_RX_PHY_DATA4_HE_MU_EXT_CH1_CTR_RU, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @FIELD_GET(i32 %37, i32 %38)
  %40 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_CTR_26T_RU, align 4
  %41 = call i32 @le16_encode_bits(i8* %39, i32 %40)
  %42 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @IWL_RX_PHY_DATA2_HE_MU_EXT_CH1_RU0, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i8* @FIELD_GET(i32 %46, i32 %47)
  %49 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %49, i32 0, i32 3
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %48, i8** %52, align 8
  %53 = load i32, i32* @IWL_RX_PHY_DATA3_HE_MU_EXT_CH1_RU1, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i8* @FIELD_GET(i32 %53, i32 %54)
  %56 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %57 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %56, i32 0, i32 3
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  store i8* %55, i8** %59, align 8
  %60 = load i32, i32* @IWL_RX_PHY_DATA2_HE_MU_EXT_CH1_RU2, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @FIELD_GET(i32 %60, i32 %61)
  %63 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %63, i32 0, i32 3
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  store i8* %62, i8** %66, align 8
  %67 = load i32, i32* @IWL_RX_PHY_DATA3_HE_MU_EXT_CH1_RU3, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @FIELD_GET(i32 %67, i32 %68)
  %70 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %70, i32 0, i32 3
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 3
  store i8* %69, i8** %73, align 8
  br label %74

74:                                               ; preds = %28, %4
  %75 = load i32, i32* @IWL_RX_PHY_DATA4_HE_MU_EXT_CH2_CRC_OK, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i8* @FIELD_GET(i32 %75, i32 %76)
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %131

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @RATE_MCS_CHAN_WIDTH_MSK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @RATE_MCS_CHAN_WIDTH_20, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %79
  %86 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH2_RU_KNOWN, align 4
  %87 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH2_CTR_26T_RU_KNOWN, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @cpu_to_le16(i32 %88)
  %90 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @IWL_RX_PHY_DATA4_HE_MU_EXT_CH2_CTR_RU, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i8* @FIELD_GET(i32 %94, i32 %95)
  %97 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS2_CH2_CTR_26T_RU, align 4
  %98 = call i32 @le16_encode_bits(i8* %96, i32 %97)
  %99 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %100 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @IWL_RX_PHY_DATA2_HE_MU_EXT_CH2_RU0, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i8* @FIELD_GET(i32 %103, i32 %104)
  %106 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %107 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  store i8* %105, i8** %109, align 8
  %110 = load i32, i32* @IWL_RX_PHY_DATA3_HE_MU_EXT_CH2_RU1, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i8* @FIELD_GET(i32 %110, i32 %111)
  %113 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  store i8* %112, i8** %116, align 8
  %117 = load i32, i32* @IWL_RX_PHY_DATA2_HE_MU_EXT_CH2_RU2, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i8* @FIELD_GET(i32 %117, i32 %118)
  %120 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %121 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %120, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 2
  store i8* %119, i8** %123, align 8
  %124 = load i32, i32* @IWL_RX_PHY_DATA3_HE_MU_EXT_CH2_RU3, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i8* @FIELD_GET(i32 %124, i32 %125)
  %127 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %8, align 8
  %128 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %127, i32 0, i32 0
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 3
  store i8* %126, i8** %130, align 8
  br label %131

131:                                              ; preds = %85, %79, %74
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_encode_bits(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
