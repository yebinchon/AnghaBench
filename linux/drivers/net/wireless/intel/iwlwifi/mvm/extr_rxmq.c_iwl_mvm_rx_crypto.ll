; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.iwl_rx_mpdu_desc = type { i32 }

@IWL_RX_MPDU_PHY_AMPDU = common dso_local global i32 0, align 4
@IWL_RX_MPDU_STATUS_SEC_MASK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_STATUS_SEC_UNKNOWN = common dso_local global i32 0, align 4
@IWL_RX_MPDU_STATUS_SEC_NONE = common dso_local global i32 0, align 4
@IEEE80211_CCMP_PN_LEN = common dso_local global i32 0, align 4
@IEEE80211_GCMP_PN_LEN = common dso_local global i32 0, align 4
@IWL_RX_MPDU_STATUS_MIC_OK = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@FH_RSCSR_RADA_EN = common dso_local global i32 0, align 4
@RX_FLAG_MIC_STRIPPED = common dso_local global i32 0, align 4
@IEEE80211_CCMP_HDR_LEN = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_DEPRECATE_TTAK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_RES_STATUS_TTAK_OK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_MIC_OK = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@IEEE80211_TKIP_IV_LEN = common dso_local global i32 0, align 4
@IWL_RX_MPDU_STATUS_ICV_OK = common dso_local global i32 0, align 4
@IEEE80211_WEP_IV_LEN = common dso_local global i32 0, align 4
@RX_FLAG_ICV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unhandled alg: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, i32, %struct.iwl_rx_mpdu_desc*, i32, i32, i32*)* @iwl_mvm_rx_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_rx_crypto(%struct.iwl_mvm* %0, %struct.ieee80211_hdr* %1, %struct.ieee80211_rx_status* %2, i32 %3, %struct.iwl_rx_mpdu_desc* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.ieee80211_rx_status*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_rx_mpdu_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %10, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %11, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.iwl_rx_mpdu_desc* %4, %struct.iwl_rx_mpdu_desc** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %19 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %14, align 8
  %20 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @IWL_RX_MPDU_PHY_AMPDU, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %8
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* @IWL_RX_MPDU_STATUS_SEC_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @IWL_RX_MPDU_STATUS_SEC_UNKNOWN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 -1, i32* %9, align 4
  br label %201

39:                                               ; preds = %33, %27, %8
  %40 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ieee80211_has_protected(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @IWL_RX_MPDU_STATUS_SEC_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @IWL_RX_MPDU_STATUS_SEC_NONE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39
  store i32 0, i32* %9, align 4
  br label %201

52:                                               ; preds = %45
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* @IWL_RX_MPDU_STATUS_SEC_MASK, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %181 [
    i32 132, label %56
    i32 130, label %56
    i32 129, label %86
    i32 128, label %123
    i32 131, label %169
  ]

56:                                               ; preds = %52, %52
  %57 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %58 = load i32, i32* @IEEE80211_GCMP_PN_LEN, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUILD_BUG_ON(i32 %60)
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @IWL_RX_MPDU_STATUS_MIC_OK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  store i32 -1, i32* %9, align 4
  br label %201

67:                                               ; preds = %56
  %68 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %69 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @FH_RSCSR_RADA_EN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load i32, i32* @RX_FLAG_MIC_STRIPPED, align 4
  %79 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %80 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %67
  %84 = load i32, i32* @IEEE80211_CCMP_HDR_LEN, align 4
  %85 = load i32*, i32** %17, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %9, align 4
  br label %201

86:                                               ; preds = %52
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %88 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* @IWL_UCODE_TLV_API_DEPRECATE_TTAK, align 4
  %92 = call i32 @fw_has_api(i32* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* @IWL_RX_MPDU_RES_STATUS_TTAK_OK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 0, i32* %9, align 4
  br label %201

100:                                              ; preds = %94, %86
  %101 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %102 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %100
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @RX_MPDU_RES_STATUS_MIC_OK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %116 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %117 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %109, %100
  %121 = load i32, i32* @IEEE80211_TKIP_IV_LEN, align 4
  %122 = load i32*, i32** %17, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %52, %120
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @IWL_RX_MPDU_STATUS_ICV_OK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  store i32 -1, i32* %9, align 4
  br label %201

129:                                              ; preds = %123
  %130 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %131 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %132 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* @IWL_RX_MPDU_STATUS_SEC_MASK, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 128
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* @IEEE80211_WEP_IV_LEN, align 4
  %141 = load i32*, i32** %17, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %129
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @FH_RSCSR_RADA_EN, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %142
  %148 = load i32, i32* @RX_FLAG_ICV_STRIPPED, align 4
  %149 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %150 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %154 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %147
  %162 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %163 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %164 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %147
  br label %168

168:                                              ; preds = %167, %142
  store i32 0, i32* %9, align 4
  br label %201

169:                                              ; preds = %52
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* @IWL_RX_MPDU_STATUS_MIC_OK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  store i32 -1, i32* %9, align 4
  br label %201

175:                                              ; preds = %169
  %176 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %177 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %178 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  store i32 0, i32* %9, align 4
  br label %201

181:                                              ; preds = %52
  %182 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %183 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @is_multicast_ether_addr(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %199, label %187

187:                                              ; preds = %181
  %188 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %189 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %187
  %193 = call i32 (...) @net_ratelimit()
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %197 = load i32, i32* %18, align 4
  %198 = call i32 @IWL_ERR(%struct.iwl_mvm* %196, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %195, %192, %187, %181
  br label %200

200:                                              ; preds = %199
  store i32 0, i32* %9, align 4
  br label %201

201:                                              ; preds = %200, %175, %174, %168, %128, %99, %83, %66, %51, %38
  %202 = load i32, i32* %9, align 4
  ret i32 %202
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_has_protected(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @fw_has_api(i32*, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @net_ratelimit(...) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
