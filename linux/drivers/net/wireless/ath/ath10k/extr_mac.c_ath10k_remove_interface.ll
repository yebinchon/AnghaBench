; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i64, i32, %struct.TYPE_8__, i32*, i32, %struct.ath10k_peer**, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.ath10k_peer = type { %struct.ieee80211_vif* }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_vif = type { i64, i32, i32, i64 }
%struct.ath10k_vif = type { i64, i64, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to stop spectral for vdev %i: %d\0A\00", align 1
@WMI_VDEV_TYPE_AP = common dso_local global i64 0, align 8
@WMI_VDEV_TYPE_IBSS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"failed to submit AP/IBSS self-peer removal on vdev %i: %d\0A\00", align 1
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"mac vdev %i delete (remove interface)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to delete WMI vdev %i: %d\0A\00", align 1
@WMI_SERVICE_SYNC_DELETE_CMDS = common dso_local global i32 0, align 4
@ATH10K_VDEV_DELETE_TIMEOUT_HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Timeout in receiving vdev delete response\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"failed to remove AP self-peer on vdev %i: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"found vif peer %pM entry on vdev %i after it was supposedly removed\0A\00", align 1
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to recalc monitor: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to recalc tx power: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath10k_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_vif*, align 8
  %7 = alloca %struct.ath10k_peer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %5, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %18, %struct.ath10k_vif** %6, align 8
  %19 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %20 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %19, i32 0, i32 6
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %23 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %22, i32 0, i32 5
  %24 = call i32 @cancel_delayed_work_sync(i32* %23)
  %25 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %29 = call i32 @ath10k_spectral_vif_stop(%struct.ath10k_vif* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %34 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %35 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %41 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = shl i64 1, %42
  %44 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %45 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %49 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %48, i32 0, i32 4
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %52 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %51, i32 0, i32 4
  %53 = call i32 @list_del(i32* %52)
  %54 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %55 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %54, i32 0, i32 4
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %58 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WMI_VDEV_TYPE_AP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %39
  %63 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %64 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @WMI_VDEV_TYPE_IBSS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %103

68:                                               ; preds = %62, %39
  %69 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %70 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %73 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ath10k_wmi_peer_delete(i32 %71, i64 %74, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %68
  %82 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %83 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %84 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %82, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %68
  %89 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %90 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %91 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %94 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ath10k_wait_for_peer_delete_done(%struct.ath10k* %89, i64 %92, i32 %95)
  %97 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %98 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @kfree(i32 %101)
  br label %103

103:                                              ; preds = %88, %62
  %104 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %105 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %106 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %107 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @ath10k_dbg(%struct.ath10k* %104, i32 %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %108)
  %110 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %111 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %112 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @ath10k_wmi_vdev_delete(%struct.ath10k* %110, i64 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %103
  %118 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %119 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %120 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %103
  %125 = load i32, i32* @WMI_SERVICE_SYNC_DELETE_CMDS, align 4
  %126 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %127 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @test_bit(i32 %125, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %124
  %133 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %134 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %133, i32 0, i32 7
  %135 = load i32, i32* @ATH10K_VDEV_DELETE_TIMEOUT_HZ, align 4
  %136 = call i64 @wait_for_completion_timeout(i32* %134, i32 %135)
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* %8, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %141 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %285

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %124
  %144 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %145 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @WMI_VDEV_TYPE_AP, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %151 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @WMI_VDEV_TYPE_IBSS, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %149, %143
  %156 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %157 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %158 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %161 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ath10k_wait_for_peer_deleted(%struct.ath10k* %156, i64 %159, i32 %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %155
  %167 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %168 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %169 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %167, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %170, i32 %171)
  br label %173

173:                                              ; preds = %166, %155
  %174 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %175 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %174, i32 0, i32 4
  %176 = call i32 @spin_lock_bh(i32* %175)
  %177 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %178 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %178, align 8
  %181 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %182 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %181, i32 0, i32 4
  %183 = call i32 @spin_unlock_bh(i32* %182)
  br label %184

184:                                              ; preds = %173, %149
  %185 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %186 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %185, i32 0, i32 4
  %187 = call i32 @spin_lock_bh(i32* %186)
  store i32 0, i32* %10, align 4
  br label %188

188:                                              ; preds = %224, %184
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %191 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %190, i32 0, i32 5
  %192 = load %struct.ath10k_peer**, %struct.ath10k_peer*** %191, align 8
  %193 = call i32 @ARRAY_SIZE(%struct.ath10k_peer** %192)
  %194 = icmp slt i32 %189, %193
  br i1 %194, label %195, label %227

195:                                              ; preds = %188
  %196 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %197 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %196, i32 0, i32 5
  %198 = load %struct.ath10k_peer**, %struct.ath10k_peer*** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.ath10k_peer*, %struct.ath10k_peer** %198, i64 %200
  %202 = load %struct.ath10k_peer*, %struct.ath10k_peer** %201, align 8
  store %struct.ath10k_peer* %202, %struct.ath10k_peer** %7, align 8
  %203 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %204 = icmp ne %struct.ath10k_peer* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %195
  br label %224

206:                                              ; preds = %195
  %207 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %208 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %207, i32 0, i32 0
  %209 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %208, align 8
  %210 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %211 = icmp eq %struct.ieee80211_vif* %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %206
  %213 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %214 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %215 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %218 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %213, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %216, i64 %219)
  %221 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %222 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %221, i32 0, i32 0
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %222, align 8
  br label %223

223:                                              ; preds = %212, %206
  br label %224

224:                                              ; preds = %223, %205
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %188

227:                                              ; preds = %188
  %228 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %229 = call i32 @ath10k_mac_vif_beacon_cleanup(%struct.ath10k_vif* %228)
  %230 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %231 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %230, i32 0, i32 4
  %232 = call i32 @spin_unlock_bh(i32* %231)
  %233 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %234 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %235 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @ath10k_peer_cleanup(%struct.ath10k* %233, i64 %236)
  %238 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %239 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %240 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @ath10k_mac_txq_unref(%struct.ath10k* %238, i32 %241)
  %243 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %244 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %227
  %249 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %250 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %249, i32 0, i32 3
  store i32* null, i32** %250, align 8
  %251 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %252 = call i32 @ath10k_monitor_recalc(%struct.ath10k* %251)
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %248
  %256 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %257 = load i32, i32* %9, align 4
  %258 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %256, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %255, %248
  br label %260

260:                                              ; preds = %259, %227
  %261 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %262 = call i32 @ath10k_mac_txpower_recalc(%struct.ath10k* %261)
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %260
  %266 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %267 = load i32, i32* %9, align 4
  %268 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %266, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %265, %260
  %270 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %271 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = call i32 @spin_lock_bh(i32* %272)
  %274 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %275 = call i32 @ath10k_mac_vif_tx_unlock_all(%struct.ath10k_vif* %274)
  %276 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %277 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = call i32 @spin_unlock_bh(i32* %278)
  %280 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %281 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %282 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @ath10k_mac_txq_unref(%struct.ath10k* %280, i32 %283)
  br label %285

285:                                              ; preds = %269, %139
  %286 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %287 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %286, i32 0, i32 1
  %288 = call i32 @mutex_unlock(i32* %287)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_spectral_vif_stop(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_wmi_peer_delete(i32, i64, i32) #1

declare dso_local i32 @ath10k_wait_for_peer_delete_done(%struct.ath10k*, i64, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64) #1

declare dso_local i32 @ath10k_wmi_vdev_delete(%struct.ath10k*, i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ath10k_wait_for_peer_deleted(%struct.ath10k*, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ath10k_peer**) #1

declare dso_local i32 @ath10k_mac_vif_beacon_cleanup(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_peer_cleanup(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_mac_txq_unref(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_monitor_recalc(%struct.ath10k*) #1

declare dso_local i32 @ath10k_mac_txpower_recalc(%struct.ath10k*) #1

declare dso_local i32 @ath10k_mac_vif_tx_unlock_all(%struct.ath10k_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
