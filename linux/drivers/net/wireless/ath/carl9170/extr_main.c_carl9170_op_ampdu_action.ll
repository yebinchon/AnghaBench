; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i64, i64, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32, i64 }
%struct.carl9170_sta_info = type { %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.carl9170_sta_tid = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32 }

@modparam_noht = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CARL9170_TID_STATE_PROGRESS = common dso_local global i32 0, align 4
@CARL9170_TID_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@CARL9170_BAW_SIZE = common dso_local global i32 0, align 4
@CARL9170_TID_STATE_IDLE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @carl9170_op_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.ar9170*, align 8
  %13 = alloca %struct.carl9170_sta_info*, align 8
  %14 = alloca %struct.carl9170_sta_tid*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %7, align 8
  %15 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %15, i32 0, i32 3
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %16, align 8
  store %struct.ieee80211_sta* %17, %struct.ieee80211_sta** %8, align 8
  %18 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %24, i32 0, i32 2
  store i64* %25, i64** %11, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %26, i32 0, i32 0
  %28 = load %struct.ar9170*, %struct.ar9170** %27, align 8
  store %struct.ar9170* %28, %struct.ar9170** %12, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.carl9170_sta_info*
  store %struct.carl9170_sta_info* %33, %struct.carl9170_sta_info** %13, align 8
  %34 = load i64, i64* @modparam_noht, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %222

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %218 [
    i32 131, label %41
    i32 130, label %124
    i32 129, label %124
    i32 128, label %124
    i32 132, label %173
    i32 134, label %217
    i32 133, label %217
  ]

41:                                               ; preds = %39
  %42 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %13, align 8
  %43 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %222

49:                                               ; preds = %41
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call %struct.carl9170_sta_tid* @kzalloc(i32 80, i32 %50)
  store %struct.carl9170_sta_tid* %51, %struct.carl9170_sta_tid** %14, align 8
  %52 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %53 = icmp ne %struct.carl9170_sta_tid* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %222

57:                                               ; preds = %49
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %61 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %63 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %62, i32 0, i32 1
  store i64 %59, i64* %63, align 8
  %64 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %65 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %64, i32 0, i32 0
  store i64 %59, i64* %65, align 8
  %66 = load i32, i32* @CARL9170_TID_STATE_PROGRESS, align 4
  %67 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %68 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %71 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %13, align 8
  %73 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %76 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %78 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %79 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %78, i32 0, i32 11
  store %struct.ieee80211_sta* %77, %struct.ieee80211_sta** %79, align 8
  %80 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %81 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %82 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %81, i32 0, i32 10
  store %struct.ieee80211_vif* %80, %struct.ieee80211_vif** %82, align 8
  %83 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %84 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %83, i32 0, i32 6
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %87 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %86, i32 0, i32 9
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %90 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %89, i32 0, i32 8
  %91 = call i32 @skb_queue_head_init(i32* %90)
  %92 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %93 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %92, i32 0, i32 7
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  %96 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %95, i32 0, i32 2
  %97 = call i32 @spin_lock_bh(i32* %96)
  %98 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  %99 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %103 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %102, i32 0, i32 6
  %104 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  %105 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %104, i32 0, i32 3
  %106 = call i32 @list_add_tail_rcu(i32* %103, i32* %105)
  %107 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %13, align 8
  %108 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %114 = call i32 @rcu_assign_pointer(i32 %112, %struct.carl9170_sta_tid* %113)
  %115 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  %116 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %115, i32 0, i32 2
  %117 = call i32 @spin_unlock_bh(i32* %116)
  %118 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %119 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %118, i32 %121, i64 %122)
  br label %221

124:                                              ; preds = %39, %39, %39
  %125 = call i32 (...) @rcu_read_lock()
  %126 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %13, align 8
  %127 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.carl9170_sta_tid* @rcu_dereference(i32 %131)
  store %struct.carl9170_sta_tid* %132, %struct.carl9170_sta_tid** %14, align 8
  %133 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %134 = icmp ne %struct.carl9170_sta_tid* %133, null
  br i1 %134, label %135, label %152

135:                                              ; preds = %124
  %136 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  %137 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %136, i32 0, i32 2
  %138 = call i32 @spin_lock_bh(i32* %137)
  %139 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %140 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CARL9170_TID_STATE_SHUTDOWN, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load i32, i32* @CARL9170_TID_STATE_SHUTDOWN, align 4
  %146 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %147 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %135
  %149 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  %150 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %149, i32 0, i32 2
  %151 = call i32 @spin_unlock_bh(i32* %150)
  br label %152

152:                                              ; preds = %148, %124
  %153 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %13, align 8
  %154 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @RCU_INIT_POINTER(i32 %158, i32* null)
  %160 = call i32 (...) @rcu_read_unlock()
  %161 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %162 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %163 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %161, i32 %164, i64 %165)
  %167 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  %168 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  %171 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %170, i32 0, i32 0
  %172 = call i32 @ieee80211_queue_work(i32 %169, i32* %171)
  br label %221

173:                                              ; preds = %39
  %174 = call i32 (...) @rcu_read_lock()
  %175 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %13, align 8
  %176 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* %10, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.carl9170_sta_tid* @rcu_dereference(i32 %180)
  store %struct.carl9170_sta_tid* %181, %struct.carl9170_sta_tid** %14, align 8
  %182 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %13, align 8
  %183 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load i64, i64* %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 4
  %188 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %13, align 8
  %189 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = load i64, i64* %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  store i32 0, i32* %193, align 4
  %194 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %195 = icmp ne %struct.carl9170_sta_tid* %194, null
  br i1 %195, label %196, label %205

196:                                              ; preds = %173
  %197 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %198 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @CARL9170_BAW_SIZE, align 4
  %201 = call i32 @bitmap_zero(i32 %199, i32 %200)
  %202 = load i32, i32* @CARL9170_TID_STATE_IDLE, align 4
  %203 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %204 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %196, %173
  %206 = call i32 (...) @rcu_read_unlock()
  %207 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %14, align 8
  %208 = icmp ne %struct.carl9170_sta_tid* %207, null
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = call i32 @WARN_ON_ONCE(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i32, i32* @EFAULT, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %4, align 4
  br label %222

216:                                              ; preds = %205
  br label %221

217:                                              ; preds = %39, %39
  br label %221

218:                                              ; preds = %39
  %219 = load i32, i32* @EOPNOTSUPP, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %4, align 4
  br label %222

221:                                              ; preds = %217, %216, %152, %57
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %221, %218, %213, %54, %46, %36
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local %struct.carl9170_sta_tid* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.carl9170_sta_tid*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.carl9170_sta_tid* @rcu_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
