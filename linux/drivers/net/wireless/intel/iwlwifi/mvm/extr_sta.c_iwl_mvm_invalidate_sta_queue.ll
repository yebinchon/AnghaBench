; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_invalidate_sta_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_invalidate_sta_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_mvm_add_sta_cmd = type { i32, i8*, i32, i32, i32, i8* }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STA_MODE_MODIFY = common dso_local global i32 0, align 4
@STA_MODIFY_QUEUES = common dso_local global i32 0, align 4
@STA_MODIFY_TID_DISABLE_TX = common dso_local global i32 0, align 4
@STA_MODIFY_QUEUE_REMOVAL = common dso_local global i32 0, align 4
@ADD_STA_SUCCESS = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, i64, i32)* @iwl_mvm_invalidate_sta_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_invalidate_sta_queue(%struct.iwl_mvm* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_add_sta_cmd, align 8
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.iwl_mvm_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = bitcast %struct.iwl_mvm_add_sta_cmd* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %17 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %16)
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %102

23:                                               ; preds = %4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.ieee80211_sta* @rcu_dereference(i32 %38)
  store %struct.ieee80211_sta* %39, %struct.ieee80211_sta** %11, align 8
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %41 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %40)
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %23
  %45 = call i32 (...) @rcu_read_unlock()
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %102

48:                                               ; preds = %23
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %50 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %49)
  store %struct.iwl_mvm_sta* %50, %struct.iwl_mvm_sta** %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 5
  store i8* %59, i8** %60, align 8
  %61 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 4
  store i32 %63, i32* %64, align 8
  %65 = load i32, i32* @STA_MODE_MODIFY, align 4
  %66 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @STA_MODIFY_QUEUES, align 4
  %68 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %48
  %72 = load i32, i32* @STA_MODIFY_TID_DISABLE_TX, align 4
  %73 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %48
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @STA_MODIFY_QUEUE_REMOVAL, align 4
  %81 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @cpu_to_le16(i64 %92)
  %94 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %10, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = call i32 (...) @rcu_read_unlock()
  %96 = load i32, i32* @ADD_STA_SUCCESS, align 4
  store i32 %96, i32* %13, align 4
  %97 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %98 = load i32, i32* @ADD_STA, align 4
  %99 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %100 = call i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm* %99)
  %101 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %97, i32 %98, i32 %100, %struct.iwl_mvm_add_sta_cmd* %10, i32* %13)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %84, %44, %20
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le16(i64) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_mvm_add_sta_cmd*, i32*) #2

declare dso_local i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
