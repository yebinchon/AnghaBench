; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_handle_rx_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_handle_rx_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_15__, i32, i32, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_15__ = type { i32, %struct.iwl_mvm_tcm_mac* }
%struct.iwl_mvm_tcm_mac = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_22__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.iwl_rx_packet = type { i32 }
%struct.iwl_mvm_stat_data = type { %struct.TYPE_24__*, i32, i32, %struct.iwl_mvm* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32 }
%struct.iwl_notif_statistics_v11 = type { %struct.TYPE_13__, i32, %struct.TYPE_24__, %struct.TYPE_19__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.iwl_notif_statistics = type { %struct.TYPE_14__, i32, %struct.TYPE_24__, %struct.TYPE_21__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.iwl_mvm_sta = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"received invalid statistics size (%d)!\0A\00", align 1
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_stat_iterator = common dso_local global i32 0, align 4
@IWL_STATISTICS_REPLY_FLG_CLEAR = common dso_local global i32 0, align 4
@NUM_MAC_INDEX_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_handle_rx_statistics(%struct.iwl_mvm* %0, %struct.iwl_rx_packet* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_packet*, align 8
  %5 = alloca %struct.iwl_mvm_stat_data, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_notif_statistics_v11*, align 8
  %13 = alloca %struct.iwl_notif_statistics*, align 8
  %14 = alloca %struct.iwl_notif_statistics_v11*, align 8
  %15 = alloca %struct.iwl_notif_statistics*, align 8
  %16 = alloca %struct.iwl_mvm_sta*, align 8
  %17 = alloca %struct.iwl_mvm_tcm_mac*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %20, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 3
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm* %24, %struct.iwl_mvm** %23, align 8
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = call i32 @iwl_mvm_has_new_rx_stats_api(%struct.iwl_mvm* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = call i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 40, i32* %6, align 4
  br label %34

33:                                               ; preds = %28
  store i32 4, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %36

35:                                               ; preds = %2
  store i32 40, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %38 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %43 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %42)
  %44 = call i64 @WARN_ONCE(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %347

47:                                               ; preds = %36
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %49 = call i32 @iwl_mvm_has_new_rx_stats_api(%struct.iwl_mvm* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %116, label %51

51:                                               ; preds = %47
  %52 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to i8*
  %55 = bitcast i8* %54 to %struct.iwl_notif_statistics_v11*
  store %struct.iwl_notif_statistics_v11* %55, %struct.iwl_notif_statistics_v11** %12, align 8
  %56 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %12, align 8
  %57 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %12, align 8
  %63 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 1
  store i32 %66, i32* %67, align 8
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %68, i32 0, i32 5
  %70 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %12, align 8
  %71 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %70, i32 0, i32 3
  %72 = bitcast %struct.TYPE_19__* %69 to i8*
  %73 = bitcast %struct.TYPE_19__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %12, align 8
  %75 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le64_to_cpu(i32 %78)
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  %83 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %12, align 8
  %84 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le64_to_cpu(i32 %87)
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %90 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %12, align 8
  %93 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le64_to_cpu(i32 %96)
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  %101 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %12, align 8
  %102 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le64_to_cpu(i32 %105)
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  %110 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %12, align 8
  %111 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 0
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %112, align 8
  %113 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %12, align 8
  %114 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %11, align 4
  br label %181

116:                                              ; preds = %47
  %117 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %118 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %117, i32 0, i32 0
  %119 = bitcast i32* %118 to i8*
  %120 = bitcast i8* %119 to %struct.iwl_notif_statistics*
  store %struct.iwl_notif_statistics* %120, %struct.iwl_notif_statistics** %13, align 8
  %121 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %13, align 8
  %122 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 2
  store i32 %125, i32* %126, align 4
  %127 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %13, align 8
  %128 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 1
  store i32 %131, i32* %132, align 8
  %133 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %134 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %133, i32 0, i32 4
  %135 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %13, align 8
  %136 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %135, i32 0, i32 3
  %137 = bitcast %struct.TYPE_21__* %134 to i8*
  %138 = bitcast %struct.TYPE_21__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 4 %138, i64 4, i1 false)
  %139 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %13, align 8
  %140 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @le64_to_cpu(i32 %143)
  %145 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %146 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 3
  store i8* %144, i8** %147, align 8
  %148 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %13, align 8
  %149 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @le64_to_cpu(i32 %152)
  %154 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %155 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  store i8* %153, i8** %156, align 8
  %157 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %13, align 8
  %158 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @le64_to_cpu(i32 %161)
  %163 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %164 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  store i8* %162, i8** %165, align 8
  %166 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %13, align 8
  %167 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @le64_to_cpu(i32 %170)
  %172 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %173 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  store i8* %171, i8** %174, align 8
  %175 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %13, align 8
  %176 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.iwl_mvm_stat_data, %struct.iwl_mvm_stat_data* %5, i32 0, i32 0
  store %struct.TYPE_24__* %176, %struct.TYPE_24__** %177, align 8
  %178 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %13, align 8
  %179 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %116, %51
  %182 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %183 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %184 = call i32 @iwl_mvm_rx_stats_check_trigger(%struct.iwl_mvm* %182, %struct.iwl_rx_packet* %183)
  %185 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %186 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %189 = load i32, i32* @iwl_mvm_stat_iterator, align 4
  %190 = call i32 @ieee80211_iterate_active_interfaces(i32 %187, i32 %188, i32 %189, %struct.iwl_mvm_stat_data* %5)
  %191 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %192 = call i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %181
  br label %347

195:                                              ; preds = %181
  %196 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %197 = call i32 @iwl_mvm_has_new_rx_stats_api(%struct.iwl_mvm* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %219, label %199

199:                                              ; preds = %195
  %200 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %201 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %200, i32 0, i32 0
  %202 = bitcast i32* %201 to i8*
  %203 = bitcast i8* %202 to %struct.iwl_notif_statistics_v11*
  store %struct.iwl_notif_statistics_v11* %203, %struct.iwl_notif_statistics_v11** %14, align 8
  %204 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %14, align 8
  %205 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = bitcast i32* %206 to i8*
  %208 = bitcast i8* %207 to i64*
  store i64* %208, i64** %8, align 8
  %209 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %14, align 8
  %210 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = bitcast i32* %211 to i8*
  %213 = bitcast i8* %212 to i32*
  store i32* %213, i32** %9, align 8
  %214 = load %struct.iwl_notif_statistics_v11*, %struct.iwl_notif_statistics_v11** %14, align 8
  %215 = getelementptr inbounds %struct.iwl_notif_statistics_v11, %struct.iwl_notif_statistics_v11* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = bitcast i32* %216 to i8*
  %218 = bitcast i8* %217 to i32*
  store i32* %218, i32** %10, align 8
  br label %239

219:                                              ; preds = %195
  %220 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %221 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %220, i32 0, i32 0
  %222 = bitcast i32* %221 to i8*
  %223 = bitcast i8* %222 to %struct.iwl_notif_statistics*
  store %struct.iwl_notif_statistics* %223, %struct.iwl_notif_statistics** %15, align 8
  %224 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %15, align 8
  %225 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 2
  %227 = bitcast i32* %226 to i8*
  %228 = bitcast i8* %227 to i64*
  store i64* %228, i64** %8, align 8
  %229 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %15, align 8
  %230 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = bitcast i32* %231 to i8*
  %233 = bitcast i8* %232 to i32*
  store i32* %233, i32** %9, align 8
  %234 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %15, align 8
  %235 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = bitcast i32* %236 to i8*
  %238 = bitcast i8* %237 to i32*
  store i32* %238, i32** %10, align 8
  br label %239

239:                                              ; preds = %219, %199
  %240 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %271, %239
  %242 = load i32, i32* %7, align 4
  %243 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %244 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @ARRAY_SIZE(i32 %245)
  %247 = icmp slt i32 %242, %246
  br i1 %247, label %248, label %274

248:                                              ; preds = %241
  %249 = load i64*, i64** %8, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %248
  br label %271

256:                                              ; preds = %248
  %257 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %258 = load i32, i32* %7, align 4
  %259 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_rcu(%struct.iwl_mvm* %257, i32 %258)
  store %struct.iwl_mvm_sta* %259, %struct.iwl_mvm_sta** %16, align 8
  %260 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %16, align 8
  %261 = icmp ne %struct.iwl_mvm_sta* %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %256
  br label %271

263:                                              ; preds = %256
  %264 = load i64*, i64** %8, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %16, align 8
  %270 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  br label %271

271:                                              ; preds = %263, %262, %255
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  br label %241

274:                                              ; preds = %241
  %275 = call i32 (...) @rcu_read_unlock()
  %276 = load i32, i32* %11, align 4
  %277 = call i32 @le32_to_cpu(i32 %276)
  %278 = load i32, i32* @IWL_STATISTICS_REPLY_FLG_CLEAR, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %274
  br label %347

282:                                              ; preds = %274
  %283 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %284 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 0
  %286 = call i32 @spin_lock(i32* %285)
  store i32 0, i32* %7, align 4
  br label %287

287:                                              ; preds = %339, %282
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* @NUM_MAC_INDEX_DRIVER, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %342

291:                                              ; preds = %287
  %292 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %293 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  %295 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %295, i64 %297
  store %struct.iwl_mvm_tcm_mac* %298, %struct.iwl_mvm_tcm_mac** %17, align 8
  %299 = load i32*, i32** %10, align 8
  %300 = load i32, i32* %7, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @le32_to_cpu(i32 %303)
  store i32 %304, i32* %18, align 4
  %305 = load i32*, i32** %9, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @le32_to_cpu(i32 %309)
  store i32 %310, i32* %19, align 4
  %311 = load i32, i32* %19, align 4
  %312 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %17, align 8
  %313 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %315, %311
  store i32 %316, i32* %314, align 4
  %317 = load i32, i32* %18, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %332

319:                                              ; preds = %291
  %320 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %17, align 8
  %321 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 1
  %323 = call i32 @ewma_rate_init(i32* %322)
  %324 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %17, align 8
  %325 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 1
  %327 = load i32, i32* %19, align 4
  %328 = mul nsw i32 %327, 8
  %329 = load i32, i32* %18, align 4
  %330 = sdiv i32 %328, %329
  %331 = call i32 @ewma_rate_add(i32* %326, i32 %330)
  br label %332

332:                                              ; preds = %319, %291
  %333 = load i32, i32* %18, align 4
  %334 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %17, align 8
  %335 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = add nsw i32 %337, %333
  store i32 %338, i32* %336, align 4
  br label %339

339:                                              ; preds = %332
  %340 = load i32, i32* %7, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %7, align 4
  br label %287

342:                                              ; preds = %287
  %343 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %344 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 0
  %346 = call i32 @spin_unlock(i32* %345)
  br label %347

347:                                              ; preds = %342, %281, %194, %46
  ret void
}

declare dso_local i32 @iwl_mvm_has_new_rx_stats_api(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @iwl_mvm_rx_stats_check_trigger(%struct.iwl_mvm*, %struct.iwl_rx_packet*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces(i32, i32, i32, %struct.iwl_mvm_stat_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_rcu(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ewma_rate_init(i32*) #1

declare dso_local i32 @ewma_rate_add(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
