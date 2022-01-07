; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_process_enable_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_process_enable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_10__, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mwifiex_sta_node = type { i64, i32, i32, %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32, %struct.ieee80211_mcs_info }
%struct.ieee80211_mcs_info = type { i32* }

@TDLS_SETUP_FAILURE = common dso_local global i64 0, align 8
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tdls: enable link %pM success\0A\00", align 1
@TDLS_SETUP_COMPLETE = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_BUF_SIZE_8K = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_BUF_SIZE_4K = common dso_local global i32 0, align 4
@MAX_NUM_TID = common dso_local global i32 0, align 4
@BA_STREAM_NOT_ALLOWED = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"tdls: enable link %pM failed\0A\00", align 1
@TDLS_LINK_TEARDOWN = common dso_local global i64 0, align 8
@TDLS_NOT_SETUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32*)* @mwifiex_tdls_process_enable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_tdls_process_enable_link(%struct.mwifiex_private* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mwifiex_sta_node*, align 8
  %7 = alloca %struct.ieee80211_mcs_info, align 8
  %8 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %9, i32* %10)
  store %struct.mwifiex_sta_node* %11, %struct.mwifiex_sta_node** %6, align 8
  %12 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %13 = icmp ne %struct.mwifiex_sta_node* %12, null
  br i1 %13, label %14, label %137

14:                                               ; preds = %2
  %15 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %16 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TDLS_SETUP_FAILURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %137

20:                                               ; preds = %14
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MSG, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @mwifiex_dbg(i32 %23, i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load i64, i64* @TDLS_SETUP_COMPLETE, align 8
  %28 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %29 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %31 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = bitcast %struct.ieee80211_mcs_info* %7 to i8*
  %35 = bitcast %struct.ieee80211_mcs_info* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.ieee80211_mcs_info, %struct.ieee80211_mcs_info* %7, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 255
  br i1 %40, label %41, label %44

41:                                               ; preds = %20
  %42 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %43 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %20
  %45 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %46 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %91

49:                                               ; preds = %44
  %50 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %51 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @MWIFIEX_TX_DATA_BUF_SIZE_8K, align 4
  %61 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %62 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  br label %67

63:                                               ; preds = %49
  %64 = load i32, i32* @MWIFIEX_TX_DATA_BUF_SIZE_4K, align 4
  %65 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %66 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %87, %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @MAX_NUM_TID, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %82 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %68

90:                                               ; preds = %68
  br label %108

91:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @MAX_NUM_TID, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i32, i32* @BA_STREAM_NOT_ALLOWED, align 4
  %98 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %99 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %92

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %90
  %109 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %110 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %108
  %120 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %121 = call i32 @mwifiex_config_tdls_enable(%struct.mwifiex_private* %120)
  %122 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %123 = call i32 @mwifiex_config_tdls_cs_params(%struct.mwifiex_private* %122)
  br label %124

124:                                              ; preds = %119, %108
  %125 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %126 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @memset(i32 %127, i32 255, i32 4)
  %129 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load i64, i64* @TDLS_SETUP_COMPLETE, align 8
  %132 = call i32 @mwifiex_restore_tdls_packets(%struct.mwifiex_private* %129, i32* %130, i64 %131)
  %133 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i64, i64* @TDLS_SETUP_COMPLETE, align 8
  %136 = call i32 @mwifiex_auto_tdls_update_peer_status(%struct.mwifiex_private* %133, i32* %134, i64 %135)
  br label %171

137:                                              ; preds = %14, %2
  %138 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %139 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @ERROR, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @mwifiex_dbg(i32 %140, i32 %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %142)
  %144 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %145 = icmp ne %struct.mwifiex_sta_node* %144, null
  br i1 %145, label %146, label %162

146:                                              ; preds = %137
  %147 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %148 = call i32 @mwifiex_11n_cleanup_reorder_tbl(%struct.mwifiex_private* %147)
  %149 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %150 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = call i32 @spin_lock_bh(i32* %151)
  %153 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %154 = call i32 @mwifiex_11n_delete_all_tx_ba_stream_tbl(%struct.mwifiex_private* %153)
  %155 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %156 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = call i32 @spin_unlock_bh(i32* %157)
  %159 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @mwifiex_del_sta_entry(%struct.mwifiex_private* %159, i32* %160)
  br label %162

162:                                              ; preds = %146, %137
  %163 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = load i64, i64* @TDLS_LINK_TEARDOWN, align 8
  %166 = call i32 @mwifiex_restore_tdls_packets(%struct.mwifiex_private* %163, i32* %164, i64 %165)
  %167 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = load i64, i64* @TDLS_NOT_SETUP, align 8
  %170 = call i32 @mwifiex_auto_tdls_update_peer_status(%struct.mwifiex_private* %167, i32* %168, i64 %169)
  store i32 -1, i32* %3, align 4
  br label %172

171:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %162
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_config_tdls_enable(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_config_tdls_cs_params(%struct.mwifiex_private*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mwifiex_restore_tdls_packets(%struct.mwifiex_private*, i32*, i64) #1

declare dso_local i32 @mwifiex_auto_tdls_update_peer_status(%struct.mwifiex_private*, i32*, i64) #1

declare dso_local i32 @mwifiex_11n_cleanup_reorder_tbl(%struct.mwifiex_private*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mwifiex_11n_delete_all_tx_ba_stream_tbl(%struct.mwifiex_private*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mwifiex_del_sta_entry(%struct.mwifiex_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
