; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i64, i32, i32 }
%struct.ath_common = type { i32 }
%struct.ath_node = type { i32* }

@ath9k_modparam_nohwcrypt = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_CCMP = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Set HW Key %d\0A\00", align 1
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_SW_MGMT_TX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @ath9k_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.ath_softc*, align 8
  %13 = alloca %struct.ath_common*, align 8
  %14 = alloca %struct.ath_node*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.ath_softc*, %struct.ath_softc** %18, align 8
  store %struct.ath_softc* %19, %struct.ath_softc** %12, align 8
  %20 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__* %22)
  store %struct.ath_common* %23, %struct.ath_common** %13, align 8
  store %struct.ath_node* null, %struct.ath_node** %14, align 8
  store i32 0, i32* %15, align 4
  %24 = load i64, i64* @ath9k_modparam_nohwcrypt, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %240

29:                                               ; preds = %5
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %35, %29
  %42 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WLAN_CIPHER_SUITE_CCMP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47, %41
  %54 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %55 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %240

63:                                               ; preds = %53, %47, %35
  %64 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  %65 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %64, i32 0, i32 0
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  %68 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %67)
  %69 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %70 = load i32, i32* @CONFIG, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ath_dbg(%struct.ath_common* %69, i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %74 = icmp ne %struct.ieee80211_sta* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.ath_node*
  store %struct.ath_node* %79, %struct.ath_node** %14, align 8
  br label %80

80:                                               ; preds = %75, %63
  %81 = load i32, i32* %8, align 4
  switch i32 %81, label %230 [
    i32 128, label %82
    i32 129, label %189
  ]

82:                                               ; preds = %80
  %83 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %84 = icmp ne %struct.ieee80211_sta* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  %87 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %88 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %89 = call i32 @ath9k_del_ps_key(%struct.ath_softc* %86, %struct.ieee80211_vif* %87, %struct.ieee80211_sta* %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %92 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %91, i32 0, i32 2
  store i32 0, i32* %92, align 4
  %93 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %95 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %96 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %97 = call i32 @ath_key_config(%struct.ath_common* %93, %struct.ieee80211_vif* %94, %struct.ieee80211_sta* %95, %struct.ieee80211_key_conf* %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %90
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %103 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %105 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %106 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %110 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %100
  %115 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %116 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %117 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %100
  %121 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  %122 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %120
  %128 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %129 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @WLAN_CIPHER_SUITE_CCMP, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32, i32* @IEEE80211_KEY_FLAG_SW_MGMT_TX, align 4
  %135 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %136 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %127, %120
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %139, %90
  %141 = load %struct.ath_node*, %struct.ath_node** %14, align 8
  %142 = icmp ne %struct.ath_node* %141, null
  br i1 %142, label %143, label %188

143:                                              ; preds = %140
  %144 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %145 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %188

148:                                              ; preds = %143
  store i32 0, i32* %16, align 4
  br label %149

149:                                              ; preds = %176, %148
  %150 = load i32, i32* %16, align 4
  %151 = load %struct.ath_node*, %struct.ath_node** %14, align 8
  %152 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @ARRAY_SIZE(i32* %153)
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %179

156:                                              ; preds = %149
  %157 = load %struct.ath_node*, %struct.ath_node** %14, align 8
  %158 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %176

166:                                              ; preds = %156
  %167 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %168 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ath_node*, %struct.ath_node** %14, align 8
  %171 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  br label %179

176:                                              ; preds = %165
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  br label %149

179:                                              ; preds = %166, %149
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.ath_node*, %struct.ath_node** %14, align 8
  %182 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @ARRAY_SIZE(i32* %183)
  %185 = icmp eq i32 %180, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @WARN_ON(i32 %186)
  br label %188

188:                                              ; preds = %179, %143, %140
  br label %233

189:                                              ; preds = %80
  %190 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %191 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %192 = call i32 @ath_key_delete(%struct.ath_common* %190, %struct.ieee80211_key_conf* %191)
  %193 = load %struct.ath_node*, %struct.ath_node** %14, align 8
  %194 = icmp ne %struct.ath_node* %193, null
  br i1 %194, label %195, label %227

195:                                              ; preds = %189
  store i32 0, i32* %16, align 4
  br label %196

196:                                              ; preds = %223, %195
  %197 = load i32, i32* %16, align 4
  %198 = load %struct.ath_node*, %struct.ath_node** %14, align 8
  %199 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @ARRAY_SIZE(i32* %200)
  %202 = icmp slt i32 %197, %201
  br i1 %202, label %203, label %226

203:                                              ; preds = %196
  %204 = load %struct.ath_node*, %struct.ath_node** %14, align 8
  %205 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %212 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %203
  br label %223

216:                                              ; preds = %203
  %217 = load %struct.ath_node*, %struct.ath_node** %14, align 8
  %218 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 0, i32* %222, align 4
  br label %226

223:                                              ; preds = %215
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %16, align 4
  br label %196

226:                                              ; preds = %216, %196
  br label %227

227:                                              ; preds = %226, %189
  %228 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %229 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %228, i32 0, i32 2
  store i32 0, i32* %229, align 4
  br label %233

230:                                              ; preds = %80
  %231 = load i32, i32* @EINVAL, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %15, align 4
  br label %233

233:                                              ; preds = %230, %227, %188
  %234 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  %235 = call i32 @ath9k_ps_restore(%struct.ath_softc* %234)
  %236 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  %237 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %236, i32 0, i32 0
  %238 = call i32 @mutex_unlock(i32* %237)
  %239 = load i32, i32* %15, align 4
  store i32 %239, i32* %6, align 4
  br label %240

240:                                              ; preds = %233, %60, %26
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_del_ps_key(%struct.ath_softc*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ath_key_config(%struct.ath_common*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath_key_delete(%struct.ath_common*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
