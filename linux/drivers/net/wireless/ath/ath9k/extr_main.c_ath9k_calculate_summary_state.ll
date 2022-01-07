; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_calculate_summary_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_calculate_summary_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw*, %struct.TYPE_2__, %struct.ath_chanctx* }
%struct.ath_hw = type { i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.ath_chanctx }
%struct.ath_chanctx = type { i32, i64 }
%struct.ath_common = type { i32, i32, i32, i32, i64 }
%struct.ath9k_vif_iter_data = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i8* null, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_OCB = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ATH9K_INT_TSFOOR = common dso_local global i32 0, align 4
@ATH_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"macaddr: %pM, bssid: %pM, bssidmask: %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_calculate_summary_state(%struct.ath_softc* %0, %struct.ath_chanctx* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_chanctx*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_vif_iter_data, align 8
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_chanctx* %1, %struct.ath_chanctx** %4, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  %11 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  store %struct.ath_hw* %11, %struct.ath_hw** %5, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %6, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %15 = load %struct.ath_chanctx*, %struct.ath_chanctx** %4, align 8
  %16 = call i32 @ath_chanctx_check_active(%struct.ath_softc* %14, %struct.ath_chanctx* %15)
  %17 = load %struct.ath_chanctx*, %struct.ath_chanctx** %4, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 3
  %20 = load %struct.ath_chanctx*, %struct.ath_chanctx** %19, align 8
  %21 = icmp ne %struct.ath_chanctx* %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %257

23:                                               ; preds = %2
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %27 = load %struct.ath_chanctx*, %struct.ath_chanctx** %4, align 8
  %28 = call i32 @ath9k_calculate_iter_data(%struct.ath_softc* %26, %struct.ath_chanctx* %27, %struct.ath9k_vif_iter_data* %7)
  %29 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 13
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %34 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %35, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %23
  %41 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %42 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 11
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @memcpy(i32 %43, i32 %45, i32 %46)
  %48 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %49 = call i32 @ath_hw_setbssidmask(%struct.ath_common* %48)
  %50 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %55 = call i32 @ath9k_hw_set_tsfadjust(%struct.ath_hw* %54, i32 1)
  %56 = load i8*, i8** @NL80211_IFTYPE_AP, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %59 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %110

60:                                               ; preds = %40
  %61 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %62 = call i32 @ath9k_hw_set_tsfadjust(%struct.ath_hw* %61, i32 0)
  %63 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %68 = call i32 @ath9k_beacon_ensure_primary_slot(%struct.ath_softc* %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %75 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %109

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 10
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* @NL80211_IFTYPE_OCB, align 8
  %83 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %84 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %108

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i8*, i8** @NL80211_IFTYPE_AP, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %93 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %107

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %100 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %101 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %106

102:                                              ; preds = %94
  %103 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %104 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %89
  br label %108

108:                                              ; preds = %107, %81
  br label %109

109:                                              ; preds = %108, %73
  br label %110

110:                                              ; preds = %109, %53
  %111 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %112 = call i32 @ath9k_hw_setopmode(%struct.ath_hw* %111)
  %113 = load %struct.ath_chanctx*, %struct.ath_chanctx** %4, align 8
  %114 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %116, %118
  %120 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %119, %121
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %110
  %125 = load i32, i32* @ATH9K_INT_TSFOOR, align 4
  %126 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %127 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %148

130:                                              ; preds = %110
  %131 = load i32, i32* @ATH9K_INT_TSFOOR, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %134 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %147

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load %struct.ath_chanctx*, %struct.ath_chanctx** %4, align 8
  %146 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %140, %130
  br label %148

148:                                              ; preds = %147, %124
  %149 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %150 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %202

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.ath_chanctx*, %struct.ath_chanctx** %4, align 8
  %158 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %156, %159
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %8, align 4
  %162 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %154
  %166 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 6
  store i64 %167, i64* %168, align 8
  %169 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 1
  store i32 1, i32* %169, align 4
  %170 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %171 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @ath9k_set_assoc_state(%struct.ath_softc* %170, i64 %172, i32 %173)
  %175 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.ath_chanctx*, %struct.ath_chanctx** %4, align 8
  %178 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  br label %201

179:                                              ; preds = %154
  %180 = load %struct.ath_chanctx*, %struct.ath_chanctx** %4, align 8
  %181 = getelementptr inbounds %struct.ath_chanctx, %struct.ath_chanctx* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %183 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @eth_zero_addr(i32 %184)
  %186 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %187 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %186, i32 0, i32 4
  store i64 0, i64* %187, align 8
  %188 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %188, i32 0, i32 1
  %190 = load %struct.ath_hw*, %struct.ath_hw** %189, align 8
  %191 = call i32 @ath9k_hw_write_associd(%struct.ath_hw* %190)
  %192 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %193 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %192, i32 0, i32 1
  %194 = load %struct.ath_hw*, %struct.ath_hw** %193, align 8
  %195 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %179
  %198 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %199 = call i32 @ath9k_mci_update_wlan_channels(%struct.ath_softc* %198, i32 1)
  br label %200

200:                                              ; preds = %197, %179
  br label %201

201:                                              ; preds = %200, %165
  br label %202

202:                                              ; preds = %201, %148
  %203 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 8
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %206 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %208 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ath9k_beacon_config(%struct.ath_softc* %207, i64 %209, i32 %211)
  %213 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %214 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %213)
  %215 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %216 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 7
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %217, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %202
  %222 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 7
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %225 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  %226 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %227 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %226)
  br label %228

228:                                              ; preds = %221, %202
  %229 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %7, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load i32, i32* @ATH_OP_PRIM_STA_VIF, align 4
  %234 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %235 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %234, i32 0, i32 3
  %236 = call i32 @set_bit(i32 %233, i32* %235)
  br label %242

237:                                              ; preds = %228
  %238 = load i32, i32* @ATH_OP_PRIM_STA_VIF, align 4
  %239 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %240 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %239, i32 0, i32 3
  %241 = call i32 @clear_bit(i32 %238, i32* %240)
  br label %242

242:                                              ; preds = %237, %232
  %243 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %244 = load i32, i32* @CONFIG, align 4
  %245 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %246 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %249 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %252 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @ath_dbg(%struct.ath_common* %243, i32 %244, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %247, i32 %250, i32 %253)
  %255 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %256 = call i32 @ath9k_ps_restore(%struct.ath_softc* %255)
  br label %257

257:                                              ; preds = %242, %22
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_chanctx_check_active(%struct.ath_softc*, %struct.ath_chanctx*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_calculate_iter_data(%struct.ath_softc*, %struct.ath_chanctx*, %struct.ath9k_vif_iter_data*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath_hw_setbssidmask(%struct.ath_common*) #1

declare dso_local i32 @ath9k_hw_set_tsfadjust(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_beacon_ensure_primary_slot(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_setopmode(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_set_assoc_state(%struct.ath_softc*, i64, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @ath9k_hw_write_associd(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_mci_update_wlan_channels(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_beacon_config(%struct.ath_softc*, i64, i32) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
