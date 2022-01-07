; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_coex_notif_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_coex_notif_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i32, i32, i32 }
%struct.iwl_bt_iterator_data = type { %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf*, i32*, %struct.iwl_mvm* }
%struct.ieee80211_chanctx_conf = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.iwl_bt_coex_ci_cmd = type { i8*, i8*, i8*, i8* }

@BT_FORCE_ANT_DIS = common dso_local global i64 0, align 8
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_bt_notif_iterator = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_40 = common dso_local global i64 0, align 8
@iwl_ci_mask = common dso_local global i8*** null, align 8
@BT_COEX_CI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to send BT_CI cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*)* @iwl_mvm_bt_coex_notif_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bt_coex_notif_handle(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.iwl_bt_iterator_data, align 8
  %4 = alloca %struct.iwl_bt_coex_ci_cmd, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %7 = alloca %struct.ieee80211_chanctx_conf*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 0
  store %struct.ieee80211_chanctx_conf* null, %struct.ieee80211_chanctx_conf** %8, align 8
  %9 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 1
  store %struct.ieee80211_chanctx_conf* null, %struct.ieee80211_chanctx_conf** %9, align 8
  %10 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 2
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 3
  store i32* %12, i32** %10, align 8
  %13 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 3
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  store %struct.iwl_mvm* %14, %struct.iwl_mvm** %13, align 8
  %15 = bitcast %struct.iwl_bt_coex_ci_cmd* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BT_FORCE_ANT_DIS, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %179

25:                                               ; preds = %1
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %31 = load i32, i32* @iwl_mvm_bt_notif_iterator, align 4
  %32 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %29, i32 %30, i32 %31, %struct.iwl_bt_iterator_data* %3)
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %34 = call i32 @iwl_mvm_bt_coex_tcm_based_ci(%struct.iwl_mvm* %33, %struct.iwl_bt_iterator_data* %3)
  %35 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 1
  %36 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %35, align 8
  %37 = icmp ne %struct.ieee80211_chanctx_conf* %36, null
  br i1 %37, label %38, label %97

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 1
  %40 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %39, align 8
  store %struct.ieee80211_chanctx_conf* %40, %struct.ieee80211_chanctx_conf** %6, align 8
  %41 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = call i32 (...) @rcu_read_unlock()
  br label %179

52:                                               ; preds = %38
  %53 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_CHAN_WIDTH_40, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i64 0, i64* %5, align 8
  br label %75

60:                                               ; preds = %52
  %61 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %64, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i64 2, i64* %5, align 8
  br label %74

73:                                               ; preds = %60
  store i64 1, i64* %5, align 8
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %59
  %76 = load i8***, i8**** @iwl_ci_mask, align 8
  %77 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i8**, i8*** %76, i64 %82
  %84 = load i8**, i8*** %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.iwl_bt_coex_ci_cmd, %struct.iwl_bt_coex_ci_cmd* %4, i32 0, i32 3
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 1
  %90 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %89, align 8
  %91 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = getelementptr inbounds %struct.iwl_bt_coex_ci_cmd, %struct.iwl_bt_coex_ci_cmd* %4, i32 0, i32 2
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %75, %25
  %98 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 0
  %99 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %98, align 8
  %100 = icmp ne %struct.ieee80211_chanctx_conf* %99, null
  br i1 %100, label %101, label %161

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 0
  %103 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %102, align 8
  store %struct.ieee80211_chanctx_conf* %103, %struct.ieee80211_chanctx_conf** %7, align 8
  %104 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 0
  %105 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %104, align 8
  %106 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = icmp ne %struct.TYPE_3__* %108, null
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @WARN_ON(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = call i32 (...) @rcu_read_unlock()
  br label %179

116:                                              ; preds = %101
  %117 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %118 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NL80211_CHAN_WIDTH_40, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  store i64 0, i64* %5, align 8
  br label %139

124:                                              ; preds = %116
  %125 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %130 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %128, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  store i64 2, i64* %5, align 8
  br label %138

137:                                              ; preds = %124
  store i64 1, i64* %5, align 8
  br label %138

138:                                              ; preds = %137, %136
  br label %139

139:                                              ; preds = %138, %123
  %140 = load i8***, i8**** @iwl_ci_mask, align 8
  %141 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %142 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8**, i8*** %140, i64 %146
  %148 = load i8**, i8*** %147, align 8
  %149 = load i64, i64* %5, align 8
  %150 = getelementptr inbounds i8*, i8** %148, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds %struct.iwl_bt_coex_ci_cmd, %struct.iwl_bt_coex_ci_cmd* %4, i32 0, i32 1
  store i8* %151, i8** %152, align 8
  %153 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %3, i32 0, i32 0
  %154 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %153, align 8
  %155 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = getelementptr inbounds %struct.iwl_bt_coex_ci_cmd, %struct.iwl_bt_coex_ci_cmd* %4, i32 0, i32 0
  store i8* %159, i8** %160, align 8
  br label %161

161:                                              ; preds = %139, %97
  %162 = call i32 (...) @rcu_read_unlock()
  %163 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %164 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %163, i32 0, i32 1
  %165 = call i64 @memcmp(%struct.iwl_bt_coex_ci_cmd* %4, i32* %164, i32 32)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %169 = load i32, i32* @BT_COEX_CI, align 4
  %170 = call i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %168, i32 %169, i32 0, i32 32, %struct.iwl_bt_coex_ci_cmd* %4)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %174 = call i32 @IWL_ERR(%struct.iwl_mvm* %173, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %167
  %176 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %177 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %176, i32 0, i32 1
  %178 = call i32 @memcpy(i32* %177, %struct.iwl_bt_coex_ci_cmd* %4, i32 32)
  br label %179

179:                                              ; preds = %24, %50, %114, %175, %161
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_bt_iterator_data*) #2

declare dso_local i32 @iwl_mvm_bt_coex_tcm_based_ci(%struct.iwl_mvm*, %struct.iwl_bt_iterator_data*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i64 @memcmp(%struct.iwl_bt_coex_ci_cmd*, i32*, i32) #2

declare dso_local i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_bt_coex_ci_cmd*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #2

declare dso_local i32 @memcpy(i32*, %struct.iwl_bt_coex_ci_cmd*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
