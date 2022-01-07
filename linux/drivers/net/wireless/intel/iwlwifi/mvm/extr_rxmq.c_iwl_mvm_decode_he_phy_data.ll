; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_decode_he_phy_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_decode_he_phy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_rx_phy_data = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_radiotap_he = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_radiotap_he_mu = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32 }

@IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE2_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE3_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE4_KNOWN = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE1 = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE1 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE2 = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE2 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE3 = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE3 = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE4 = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE4 = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA1_LDPC_XSYMSEG_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA1_DOPPLER_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA1_BSS_COLOR_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA2_PRE_FEC_PAD_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA2_PE_DISAMBIG_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA2_TXOP_KNOWN = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA2_NUM_LTF_SYMS_KNOWN = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA0_HE_BSS_COLOR_MASK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA3_BSS_COLOR = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA1_UL_DL_KNOWN = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA0_HE_UPLINK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA3_UL_DL = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA0_HE_LDPC_EXT_SYM = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA3_LDPC_XSYMSEG = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA0_HE_PRE_FEC_PAD_MASK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA5_PRE_FEC_PAD = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA0_HE_PE_DISAMBIG = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA5_PE_DISAMBIG = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA1_HE_LTF_NUM_MASK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA5_NUM_LTF_SYMS = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA0_HE_TXOP_DUR_MASK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA6_TXOP = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA0_HE_DOPPLER = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA6_DOPPLER = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA0_HE_SPATIAL_REUSE_MASK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA4_SU_MU_SPTL_REUSE = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA4_HE_MU_EXT_SIGB_DCM = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS1_SIG_B_DCM = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA4_HE_MU_EXT_SIGB_MCS_MASK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS1_SIG_B_MCS = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA4_HE_MU_EXT_PREAMBLE_PUNC_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS2_PUNC_FROM_SIG_A_BW = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA1_HE_MU_SIBG_SYM_OR_USER_NUM_MASK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS2_SIG_B_SYMS_USERS = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA1_HE_MU_SIGB_COMPRESSION = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_MU_FLAGS2_SIG_B_COMP = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA1_BEAM_CHANGE_KNOWN = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA0_HE_BEAM_CHNG = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_HE_DATA3_BEAM_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_rx_phy_data*, %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_rx_status*, i32, i32)* @iwl_mvm_decode_he_phy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_decode_he_phy_data(%struct.iwl_mvm* %0, %struct.iwl_mvm_rx_phy_data* %1, %struct.ieee80211_radiotap_he* %2, %struct.ieee80211_radiotap_he_mu* %3, %struct.ieee80211_rx_status* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.iwl_mvm_rx_phy_data*, align 8
  %10 = alloca %struct.ieee80211_radiotap_he*, align 8
  %11 = alloca %struct.ieee80211_radiotap_he_mu*, align 8
  %12 = alloca %struct.ieee80211_rx_status*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %8, align 8
  store %struct.iwl_mvm_rx_phy_data* %1, %struct.iwl_mvm_rx_phy_data** %9, align 8
  store %struct.ieee80211_radiotap_he* %2, %struct.ieee80211_radiotap_he** %10, align 8
  store %struct.ieee80211_radiotap_he_mu* %3, %struct.ieee80211_radiotap_he_mu** %11, align 8
  store %struct.ieee80211_rx_status* %4, %struct.ieee80211_rx_status** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %204 [
    i32 131, label %18
    i32 138, label %18
    i32 130, label %18
    i32 132, label %18
    i32 128, label %18
    i32 129, label %18
    i32 133, label %19
    i32 135, label %76
    i32 137, label %76
    i32 136, label %76
    i32 134, label %76
  ]

18:                                               ; preds = %7, %7, %7, %7, %7, %7
  br label %319

19:                                               ; preds = %7
  %20 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE_KNOWN, align 4
  %21 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE2_KNOWN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE3_KNOWN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE4_KNOWN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE1, align 4
  %36 = call i32 @le32_get_bits(i32 %34, i32 %35)
  %37 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE1, align 4
  %38 = call i32 @le16_encode_bits(i32 %36, i32 %37)
  %39 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %40 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE2, align 4
  %47 = call i32 @le32_get_bits(i32 %45, i32 %46)
  %48 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE2, align 4
  %49 = call i32 @le16_encode_bits(i32 %47, i32 %48)
  %50 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %51 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE3, align 4
  %58 = call i32 @le32_get_bits(i32 %56, i32 %57)
  %59 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE3, align 4
  %60 = call i32 @le16_encode_bits(i32 %58, i32 %59)
  %61 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %62 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE4, align 4
  %69 = call i32 @le32_get_bits(i32 %67, i32 %68)
  %70 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE4, align 4
  %71 = call i32 @le16_encode_bits(i32 %69, i32 %70)
  %72 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %73 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %7, %7, %7, %7, %19
  %77 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_LDPC_XSYMSEG_KNOWN, align 4
  %78 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_DOPPLER_KNOWN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_BSS_COLOR_KNOWN, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @cpu_to_le16(i32 %81)
  %83 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %84 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA2_PRE_FEC_PAD_KNOWN, align 4
  %88 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA2_PE_DISAMBIG_KNOWN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA2_TXOP_KNOWN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA2_NUM_LTF_SYMS_KNOWN, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @cpu_to_le16(i32 %93)
  %95 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %96 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %100 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IWL_RX_PHY_DATA0_HE_BSS_COLOR_MASK, align 4
  %103 = call i32 @le32_get_bits(i32 %101, i32 %102)
  %104 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA3_BSS_COLOR, align 4
  %105 = call i32 @le16_encode_bits(i32 %103, i32 %104)
  %106 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %107 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %111 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 134
  br i1 %113, label %114, label %137

114:                                              ; preds = %76
  %115 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %116 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 133
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_UL_DL_KNOWN, align 4
  %121 = call i32 @cpu_to_le16(i32 %120)
  %122 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %123 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IWL_RX_PHY_DATA0_HE_UPLINK, align 4
  %130 = call i32 @le32_get_bits(i32 %128, i32 %129)
  %131 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA3_UL_DL, align 4
  %132 = call i32 @le16_encode_bits(i32 %130, i32 %131)
  %133 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %134 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %119, %114, %76
  %138 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %139 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IWL_RX_PHY_DATA0_HE_LDPC_EXT_SYM, align 4
  %142 = call i32 @le32_get_bits(i32 %140, i32 %141)
  %143 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA3_LDPC_XSYMSEG, align 4
  %144 = call i32 @le16_encode_bits(i32 %142, i32 %143)
  %145 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %146 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IWL_RX_PHY_DATA0_HE_PRE_FEC_PAD_MASK, align 4
  %153 = call i32 @le32_get_bits(i32 %151, i32 %152)
  %154 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA5_PRE_FEC_PAD, align 4
  %155 = call i32 @le16_encode_bits(i32 %153, i32 %154)
  %156 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %157 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %161 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IWL_RX_PHY_DATA0_HE_PE_DISAMBIG, align 4
  %164 = call i32 @le32_get_bits(i32 %162, i32 %163)
  %165 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA5_PE_DISAMBIG, align 4
  %166 = call i32 @le16_encode_bits(i32 %164, i32 %165)
  %167 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %168 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %172 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @IWL_RX_PHY_DATA1_HE_LTF_NUM_MASK, align 4
  %175 = call i32 @le32_get_bits(i32 %173, i32 %174)
  %176 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA5_NUM_LTF_SYMS, align 4
  %177 = call i32 @le16_encode_bits(i32 %175, i32 %176)
  %178 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %179 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %183 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IWL_RX_PHY_DATA0_HE_TXOP_DUR_MASK, align 4
  %186 = call i32 @le32_get_bits(i32 %184, i32 %185)
  %187 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA6_TXOP, align 4
  %188 = call i32 @le16_encode_bits(i32 %186, i32 %187)
  %189 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %190 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  %193 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %194 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @IWL_RX_PHY_DATA0_HE_DOPPLER, align 4
  %197 = call i32 @le32_get_bits(i32 %195, i32 %196)
  %198 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA6_DOPPLER, align 4
  %199 = call i32 @le16_encode_bits(i32 %197, i32 %198)
  %200 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %201 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %7, %137
  %205 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %206 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  switch i32 %207, label %226 [
    i32 136, label %208
    i32 137, label %208
    i32 135, label %208
  ]

208:                                              ; preds = %204, %204, %204
  %209 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE_KNOWN, align 4
  %210 = call i32 @cpu_to_le16(i32 %209)
  %211 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %212 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %216 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @IWL_RX_PHY_DATA0_HE_SPATIAL_REUSE_MASK, align 4
  %219 = call i32 @le32_get_bits(i32 %217, i32 %218)
  %220 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA4_SU_MU_SPTL_REUSE, align 4
  %221 = call i32 @le16_encode_bits(i32 %219, i32 %220)
  %222 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %223 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  br label %227

226:                                              ; preds = %204
  br label %227

227:                                              ; preds = %226, %208
  %228 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %229 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  switch i32 %230, label %318 [
    i32 136, label %231
    i32 137, label %270
    i32 134, label %293
    i32 133, label %293
    i32 135, label %300
  ]

231:                                              ; preds = %227
  %232 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %233 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @IWL_RX_PHY_DATA4_HE_MU_EXT_SIGB_DCM, align 4
  %236 = call i32 @le16_get_bits(i32 %234, i32 %235)
  %237 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS1_SIG_B_DCM, align 4
  %238 = call i32 @le16_encode_bits(i32 %236, i32 %237)
  %239 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %11, align 8
  %240 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %244 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @IWL_RX_PHY_DATA4_HE_MU_EXT_SIGB_MCS_MASK, align 4
  %247 = call i32 @le16_get_bits(i32 %245, i32 %246)
  %248 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS1_SIG_B_MCS, align 4
  %249 = call i32 @le16_encode_bits(i32 %247, i32 %248)
  %250 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %11, align 8
  %251 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 4
  %254 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %255 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @IWL_RX_PHY_DATA4_HE_MU_EXT_PREAMBLE_PUNC_TYPE_MASK, align 4
  %258 = call i32 @le16_get_bits(i32 %256, i32 %257)
  %259 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS2_PUNC_FROM_SIG_A_BW, align 4
  %260 = call i32 @le16_encode_bits(i32 %258, i32 %259)
  %261 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %11, align 8
  %262 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 4
  %265 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %266 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %267 = load i32, i32* %13, align 4
  %268 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %11, align 8
  %269 = call i32 @iwl_mvm_decode_he_mu_ext(%struct.iwl_mvm* %265, %struct.iwl_mvm_rx_phy_data* %266, i32 %267, %struct.ieee80211_radiotap_he_mu* %268)
  br label %270

270:                                              ; preds = %227, %231
  %271 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %272 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @IWL_RX_PHY_DATA1_HE_MU_SIBG_SYM_OR_USER_NUM_MASK, align 4
  %275 = call i32 @le32_get_bits(i32 %273, i32 %274)
  %276 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS2_SIG_B_SYMS_USERS, align 4
  %277 = call i32 @le16_encode_bits(i32 %275, i32 %276)
  %278 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %11, align 8
  %279 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %283 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @IWL_RX_PHY_DATA1_HE_MU_SIGB_COMPRESSION, align 4
  %286 = call i32 @le32_get_bits(i32 %284, i32 %285)
  %287 = load i32, i32* @IEEE80211_RADIOTAP_HE_MU_FLAGS2_SIG_B_COMP, align 4
  %288 = call i32 @le16_encode_bits(i32 %286, i32 %287)
  %289 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %11, align 8
  %290 = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, %struct.ieee80211_radiotap_he_mu* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %227, %227, %270
  %294 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %295 = load i32, i32* %13, align 4
  %296 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %297 = load %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_radiotap_he_mu** %11, align 8
  %298 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %299 = call i32 @iwl_mvm_decode_he_phy_ru_alloc(%struct.iwl_mvm_rx_phy_data* %294, i32 %295, %struct.ieee80211_radiotap_he* %296, %struct.ieee80211_radiotap_he_mu* %297, %struct.ieee80211_rx_status* %298)
  br label %319

300:                                              ; preds = %227
  %301 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA1_BEAM_CHANGE_KNOWN, align 4
  %302 = call i32 @cpu_to_le16(i32 %301)
  %303 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %304 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %9, align 8
  %308 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @IWL_RX_PHY_DATA0_HE_BEAM_CHNG, align 4
  %311 = call i32 @le32_get_bits(i32 %309, i32 %310)
  %312 = load i32, i32* @IEEE80211_RADIOTAP_HE_DATA3_BEAM_CHANGE, align 4
  %313 = call i32 @le16_encode_bits(i32 %311, i32 %312)
  %314 = load %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he** %10, align 8
  %315 = getelementptr inbounds %struct.ieee80211_radiotap_he, %struct.ieee80211_radiotap_he* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 4
  br label %319

318:                                              ; preds = %227
  br label %319

319:                                              ; preds = %18, %318, %300, %293
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_encode_bits(i32, i32) #1

declare dso_local i32 @le32_get_bits(i32, i32) #1

declare dso_local i32 @le16_get_bits(i32, i32) #1

declare dso_local i32 @iwl_mvm_decode_he_mu_ext(%struct.iwl_mvm*, %struct.iwl_mvm_rx_phy_data*, i32, %struct.ieee80211_radiotap_he_mu*) #1

declare dso_local i32 @iwl_mvm_decode_he_phy_ru_alloc(%struct.iwl_mvm_rx_phy_data*, i32, %struct.ieee80211_radiotap_he*, %struct.ieee80211_radiotap_he_mu*, %struct.ieee80211_rx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
