; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_17__, %struct.TYPE_16__*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i32 (%struct.iwl_priv*)* }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.statistics_general_common = type { i64 }
%struct.statistics_rx_non_phy = type { i64 }
%struct.statistics_rx_phy = type { i64 }
%struct.statistics_rx_ht_phy = type { i64 }
%struct.statistics_tx = type { i64 }
%struct.statistics_bt_activity = type { i64 }
%struct.iwl_bt_notif_statistics = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.statistics_tx }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.statistics_tx, %struct.statistics_tx, %struct.statistics_tx }
%struct.TYPE_11__ = type { i32, %struct.statistics_tx }
%struct.TYPE_10__ = type { %struct.statistics_tx, %struct.statistics_tx }
%struct.iwl_notif_statistics = type { i32, %struct.statistics_tx, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { %struct.statistics_tx, %struct.statistics_tx, %struct.statistics_tx, %struct.statistics_tx }
%struct.TYPE_13__ = type { %struct.statistics_tx }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Statistics notification received (%d bytes).\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"len %d doesn't match BT (%zu) or normal (%zu)\0A\00", align 1
@STATISTICS_REPLY_FLG_HT40_MODE_MSK = common dso_local global i32 0, align 4
@STATUS_STATISTICS = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@STATISTICS_NOTIFICATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*)* @iwlagn_rx_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_rx_statistics(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_rx_packet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.statistics_general_common*, align 8
  %12 = alloca %struct.statistics_rx_non_phy*, align 8
  %13 = alloca %struct.statistics_rx_phy*, align 8
  %14 = alloca %struct.statistics_rx_ht_phy*, align 8
  %15 = alloca %struct.statistics_rx_phy*, align 8
  %16 = alloca %struct.statistics_tx*, align 8
  %17 = alloca %struct.statistics_bt_activity*, align 8
  %18 = alloca %struct.iwl_bt_notif_statistics*, align 8
  %19 = alloca %struct.iwl_notif_statistics*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %20 = load i64, i64* @jiffies, align 8
  store i64 %20, i64* %5, align 8
  store i32 60, i32* %6, align 4
  %21 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %22 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %21)
  store %struct.iwl_rx_packet* %22, %struct.iwl_rx_packet** %8, align 8
  %23 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %24 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @IWL_DEBUG_RX(%struct.iwl_priv* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 72
  br i1 %34, label %35, label %69

35:                                               ; preds = %2
  %36 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %37 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %36, i32 0, i32 1
  %38 = bitcast i32* %37 to i8*
  %39 = bitcast i8* %38 to %struct.iwl_bt_notif_statistics*
  store %struct.iwl_bt_notif_statistics* %39, %struct.iwl_bt_notif_statistics** %18, align 8
  %40 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %18, align 8
  %41 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %40, i32 0, i32 0
  store i32* %41, i32** %10, align 8
  %42 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %18, align 8
  %43 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = bitcast %struct.statistics_tx* %44 to %struct.statistics_general_common*
  store %struct.statistics_general_common* %45, %struct.statistics_general_common** %11, align 8
  %46 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %18, align 8
  %47 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = bitcast %struct.statistics_tx* %49 to %struct.statistics_rx_non_phy*
  store %struct.statistics_rx_non_phy* %50, %struct.statistics_rx_non_phy** %12, align 8
  %51 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %18, align 8
  %52 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = bitcast %struct.statistics_tx* %53 to %struct.statistics_rx_phy*
  store %struct.statistics_rx_phy* %54, %struct.statistics_rx_phy** %13, align 8
  %55 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %18, align 8
  %56 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = bitcast %struct.statistics_tx* %57 to %struct.statistics_rx_ht_phy*
  store %struct.statistics_rx_ht_phy* %58, %struct.statistics_rx_ht_phy** %14, align 8
  %59 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %18, align 8
  %60 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = bitcast %struct.statistics_tx* %61 to %struct.statistics_rx_phy*
  store %struct.statistics_rx_phy* %62, %struct.statistics_rx_phy** %15, align 8
  %63 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %18, align 8
  %64 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %63, i32 0, i32 3
  store %struct.statistics_tx* %64, %struct.statistics_tx** %16, align 8
  %65 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %18, align 8
  %66 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = bitcast %struct.statistics_tx* %67 to %struct.statistics_bt_activity*
  store %struct.statistics_bt_activity* %68, %struct.statistics_bt_activity** %17, align 8
  br label %110

69:                                               ; preds = %2
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %71, 56
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %75 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %74, i32 0, i32 1
  %76 = bitcast i32* %75 to i8*
  %77 = bitcast i8* %76 to %struct.iwl_notif_statistics*
  store %struct.iwl_notif_statistics* %77, %struct.iwl_notif_statistics** %19, align 8
  %78 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %19, align 8
  %79 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %78, i32 0, i32 0
  store i32* %79, i32** %10, align 8
  %80 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %19, align 8
  %81 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = bitcast %struct.statistics_tx* %82 to %struct.statistics_general_common*
  store %struct.statistics_general_common* %83, %struct.statistics_general_common** %11, align 8
  %84 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %19, align 8
  %85 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = bitcast %struct.statistics_tx* %86 to %struct.statistics_rx_non_phy*
  store %struct.statistics_rx_non_phy* %87, %struct.statistics_rx_non_phy** %12, align 8
  %88 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %19, align 8
  %89 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = bitcast %struct.statistics_tx* %90 to %struct.statistics_rx_phy*
  store %struct.statistics_rx_phy* %91, %struct.statistics_rx_phy** %13, align 8
  %92 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %19, align 8
  %93 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = bitcast %struct.statistics_tx* %94 to %struct.statistics_rx_ht_phy*
  store %struct.statistics_rx_ht_phy* %95, %struct.statistics_rx_ht_phy** %14, align 8
  %96 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %19, align 8
  %97 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = bitcast %struct.statistics_tx* %98 to %struct.statistics_rx_phy*
  store %struct.statistics_rx_phy* %99, %struct.statistics_rx_phy** %15, align 8
  %100 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %19, align 8
  %101 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %100, i32 0, i32 1
  store %struct.statistics_tx* %101, %struct.statistics_tx** %16, align 8
  store %struct.statistics_bt_activity* null, %struct.statistics_bt_activity** %17, align 8
  br label %109

102:                                              ; preds = %69
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 72, i32 56)
  %105 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %106 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = call i32 @spin_unlock(i32* %107)
  br label %259

109:                                              ; preds = %73
  br label %110

110:                                              ; preds = %109, %35
  %111 = load %struct.statistics_general_common*, %struct.statistics_general_common** %11, align 8
  %112 = getelementptr inbounds %struct.statistics_general_common, %struct.statistics_general_common* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %115 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %113, %118
  br i1 %119, label %132, label %120

120:                                              ; preds = %110
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @STATISTICS_REPLY_FLG_HT40_MODE_MSK, align 4
  %124 = and i32 %122, %123
  %125 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %126 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @STATISTICS_REPLY_FLG_HT40_MODE_MSK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %124, %130
  br label %132

132:                                              ; preds = %120, %110
  %133 = phi i1 [ true, %110 ], [ %131, %120 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %7, align 4
  %135 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %136 = load %struct.statistics_general_common*, %struct.statistics_general_common** %11, align 8
  %137 = bitcast %struct.statistics_general_common* %136 to %struct.statistics_tx*
  %138 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %12, align 8
  %139 = bitcast %struct.statistics_rx_non_phy* %138 to %struct.statistics_tx*
  %140 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %13, align 8
  %141 = bitcast %struct.statistics_rx_phy* %140 to %struct.statistics_tx*
  %142 = load %struct.statistics_rx_ht_phy*, %struct.statistics_rx_ht_phy** %14, align 8
  %143 = bitcast %struct.statistics_rx_ht_phy* %142 to %struct.statistics_tx*
  %144 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %15, align 8
  %145 = bitcast %struct.statistics_rx_phy* %144 to %struct.statistics_tx*
  %146 = load %struct.statistics_tx*, %struct.statistics_tx** %16, align 8
  %147 = load %struct.statistics_bt_activity*, %struct.statistics_bt_activity** %17, align 8
  %148 = bitcast %struct.statistics_bt_activity* %147 to %struct.statistics_tx*
  %149 = call i32 @iwlagn_accumulative_statistics(%struct.iwl_priv* %135, %struct.statistics_tx* %137, %struct.statistics_tx* %139, %struct.statistics_tx* %141, %struct.statistics_tx* %143, %struct.statistics_tx* %145, %struct.statistics_tx* %146, %struct.statistics_tx* %148)
  %150 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %151 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %13, align 8
  %152 = bitcast %struct.statistics_rx_phy* %151 to %struct.statistics_tx*
  %153 = load %struct.statistics_rx_ht_phy*, %struct.statistics_rx_ht_phy** %14, align 8
  %154 = bitcast %struct.statistics_rx_ht_phy* %153 to %struct.statistics_tx*
  %155 = load %struct.statistics_tx*, %struct.statistics_tx** %16, align 8
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @iwlagn_recover_from_statistics(%struct.iwl_priv* %150, %struct.statistics_tx* %152, %struct.statistics_tx* %154, %struct.statistics_tx* %155, i64 %156)
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %161 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  %163 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %164 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 8
  %166 = load %struct.statistics_general_common*, %struct.statistics_general_common** %11, align 8
  %167 = bitcast %struct.statistics_general_common* %166 to %struct.statistics_tx*
  %168 = call i32 @memcpy(%struct.TYPE_18__* %165, %struct.statistics_tx* %167, i32 8)
  %169 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %170 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 7
  %172 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %12, align 8
  %173 = bitcast %struct.statistics_rx_non_phy* %172 to %struct.statistics_tx*
  %174 = call i32 @memcpy(%struct.TYPE_18__* %171, %struct.statistics_tx* %173, i32 8)
  %175 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %176 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 6
  %178 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %13, align 8
  %179 = bitcast %struct.statistics_rx_phy* %178 to %struct.statistics_tx*
  %180 = call i32 @memcpy(%struct.TYPE_18__* %177, %struct.statistics_tx* %179, i32 8)
  %181 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %182 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 5
  %184 = load %struct.statistics_rx_ht_phy*, %struct.statistics_rx_ht_phy** %14, align 8
  %185 = bitcast %struct.statistics_rx_ht_phy* %184 to %struct.statistics_tx*
  %186 = call i32 @memcpy(%struct.TYPE_18__* %183, %struct.statistics_tx* %185, i32 8)
  %187 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %188 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 4
  %190 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %15, align 8
  %191 = bitcast %struct.statistics_rx_phy* %190 to %struct.statistics_tx*
  %192 = call i32 @memcpy(%struct.TYPE_18__* %189, %struct.statistics_tx* %191, i32 8)
  %193 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %194 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 3
  %196 = load %struct.statistics_tx*, %struct.statistics_tx** %16, align 8
  %197 = call i32 @memcpy(%struct.TYPE_18__* %195, %struct.statistics_tx* %196, i32 8)
  %198 = load i64, i64* %5, align 8
  %199 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %200 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load i32, i32* @STATUS_STATISTICS, align 4
  %202 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %203 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %202, i32 0, i32 5
  %204 = call i32 @set_bit(i32 %201, i32* %203)
  %205 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %206 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %205, i32 0, i32 6
  %207 = load i64, i64* @jiffies, align 8
  %208 = call i64 @msecs_to_jiffies(i32 60000)
  %209 = add i64 %207, %208
  %210 = call i32 @mod_timer(i32* %206, i64 %209)
  %211 = load i32, i32* @STATUS_SCANNING, align 4
  %212 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %213 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %212, i32 0, i32 5
  %214 = call i32 @test_bit(i32 %211, i32* %213)
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i64 @unlikely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %236

220:                                              ; preds = %132
  %221 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %222 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @STATISTICS_NOTIFICATION, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %220
  %228 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %229 = call i32 @iwlagn_rx_calc_noise(%struct.iwl_priv* %228)
  %230 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %231 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %234 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %233, i32 0, i32 3
  %235 = call i32 @queue_work(i32 %232, i32* %234)
  br label %236

236:                                              ; preds = %227, %220, %132
  %237 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %238 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %237, i32 0, i32 2
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load i32 (%struct.iwl_priv*)*, i32 (%struct.iwl_priv*)** %240, align 8
  %242 = icmp ne i32 (%struct.iwl_priv*)* %241, null
  br i1 %242, label %243, label %254

243:                                              ; preds = %236
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %243
  %247 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %248 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %247, i32 0, i32 2
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = load i32 (%struct.iwl_priv*)*, i32 (%struct.iwl_priv*)** %250, align 8
  %252 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %253 = call i32 %251(%struct.iwl_priv* %252)
  br label %254

254:                                              ; preds = %246, %243, %236
  %255 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %256 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = call i32 @spin_unlock(i32* %257)
  br label %259

259:                                              ; preds = %254, %102
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iwlagn_accumulative_statistics(%struct.iwl_priv*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*) #1

declare dso_local i32 @iwlagn_recover_from_statistics(%struct.iwl_priv*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.statistics_tx*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwlagn_rx_calc_noise(%struct.iwl_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
