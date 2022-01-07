; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_update_vif_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_update_vif_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i64, i32 }
%struct.ieee80211_vif_chanctx_switch = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ath10k_vif = type { i32, i32, i32, i32, i32, i32 }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"mac chanctx switch vdev_id %i freq %hu->%hu width %d->%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to down vdev %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to update bcn tmpl during csa: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to update prb tmpl during csa: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to restart vdev %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to bring vdev up %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_vif_chanctx_switch*, i32)* @ath10k_mac_update_vif_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_update_vif_chan(%struct.ath10k* %0, %struct.ieee80211_vif_chanctx_switch* %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ieee80211_vif_chanctx_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ieee80211_vif_chanctx_switch* %1, %struct.ieee80211_vif_chanctx_switch** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 2
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = call i32 @ath10k_monitor_stop(%struct.ath10k* %18)
  br label %20

20:                                               ; preds = %17, %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %117, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %120

25:                                               ; preds = %21
  %26 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %26, i64 %28
  %30 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %35, %struct.ath10k_vif** %7, align 8
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %38 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %39 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %41, i64 %43
  %45 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %52, i64 %54
  %56 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %63, i64 %65
  %67 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %72, i64 %74
  %76 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ath10k_dbg(%struct.ath10k* %36, i32 %37, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %51, i32 %62, i32 %71, i32 %80)
  %82 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %83 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i64 @WARN_ON(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %25
  br label %117

91:                                               ; preds = %25
  %92 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %93 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @WARN_ON(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %117

101:                                              ; preds = %91
  %102 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %103 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %104 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ath10k_wmi_vdev_down(%struct.ath10k* %102, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %111 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %112 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114)
  br label %117

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %109, %100, %90
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %21

120:                                              ; preds = %21
  %121 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %122 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %121, i32 0, i32 0
  %123 = call i32 @spin_lock_bh(i32* %122)
  %124 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %125 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @ath10k_mac_update_rx_channel(%struct.ath10k* %124, i32* null, %struct.ieee80211_vif_chanctx_switch* %125, i32 %126)
  %128 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %129 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock_bh(i32* %129)
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %226, %120
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %229

135:                                              ; preds = %131
  %136 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %5, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %136, i64 %138
  %140 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = bitcast i8* %144 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %145, %struct.ath10k_vif** %7, align 8
  %146 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %147 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i64 @WARN_ON(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %135
  br label %226

155:                                              ; preds = %135
  %156 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %157 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i64 @WARN_ON(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %226

165:                                              ; preds = %155
  %166 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %167 = call i32 @ath10k_mac_setup_bcn_tmpl(%struct.ath10k_vif* %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %171, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %170, %165
  %175 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %176 = call i32 @ath10k_mac_setup_prb_tmpl(%struct.ath10k_vif* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %180, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %179, %174
  %184 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %185 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %5, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %185, i64 %187
  %189 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %188, i32 0, i32 0
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = call i32 @ath10k_vdev_restart(%struct.ath10k_vif* %184, %struct.TYPE_14__* %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %183
  %196 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %197 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %198 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %199, i32 %200)
  br label %226

202:                                              ; preds = %183
  %203 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %204 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %207 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %210 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %213 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ath10k_wmi_vdev_up(i32 %205, i32 %208, i32 %211, i32 %214)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %202
  %219 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %220 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %221 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %8, align 4
  %224 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %219, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %222, i32 %223)
  br label %226

225:                                              ; preds = %202
  br label %226

226:                                              ; preds = %225, %218, %195, %164, %154
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %131

229:                                              ; preds = %131
  %230 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %231 = call i32 @ath10k_monitor_recalc(%struct.ath10k* %230)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_monitor_stop(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_wmi_vdev_down(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_mac_update_rx_channel(%struct.ath10k*, i32*, %struct.ieee80211_vif_chanctx_switch*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_mac_setup_bcn_tmpl(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_mac_setup_prb_tmpl(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_vdev_restart(%struct.ath10k_vif*, %struct.TYPE_14__*) #1

declare dso_local i32 @ath10k_wmi_vdev_up(i32, i32, i32, i32) #1

declare dso_local i32 @ath10k_monitor_recalc(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
