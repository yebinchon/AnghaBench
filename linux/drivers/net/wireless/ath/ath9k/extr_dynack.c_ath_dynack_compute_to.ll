; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dynack.c_ath_dynack_compute_to.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dynack.c_ath_dynack_compute_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath_dynack }
%struct.ath_dynack = type { %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i64, i64, i64* }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__*, %struct.ts_info* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.ts_info = type { i64, i64 }
%struct.ieee80211_sta = type { i64 }
%struct.ath_node = type { i32 }

@DYNACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ack_ts %u st_ts %u st_dur %u [%u-%u]\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%pM to %d [%u]\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@COMPUTE_TO = common dso_local global i64 0, align 8
@ATH_DYN_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath_dynack_compute_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_dynack_compute_to(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_dynack*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ts_info*, align 8
  %9 = alloca %struct.ath_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 1
  store %struct.ath_dynack* %13, %struct.ath_dynack** %3, align 8
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = call i64 @ath_dynack_get_max_to(%struct.ath_hw* %15)
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %189, %1
  %18 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %19 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %23 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %29 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %33 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br label %37

37:                                               ; preds = %27, %17
  %38 = phi i1 [ false, %17 ], [ %36, %27 ]
  br i1 %38, label %39, label %190

39:                                               ; preds = %37
  %40 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %41 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %45 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %43, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %5, align 8
  %50 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %51 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load %struct.ts_info*, %struct.ts_info** %52, align 8
  %54 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %55 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %53, i64 %57
  store %struct.ts_info* %58, %struct.ts_info** %8, align 8
  %59 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %60 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %64 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %10, align 8
  %70 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %71 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %75 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %11, align 8
  %81 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %82 = call i32 @ath9k_hw_common(%struct.ath_hw* %81)
  %83 = load i32, i32* @DYNACK, align 4
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.ts_info*, %struct.ts_info** %8, align 8
  %86 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ts_info*, %struct.ts_info** %8, align 8
  %89 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %92 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %96 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (i32, i32, i8*, i64, i64, i64, ...) @ath_dbg(i32 %82, i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %84, i64 %87, i64 %90, i64 %94, i64 %98)
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.ts_info*, %struct.ts_info** %8, align 8
  %102 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ts_info*, %struct.ts_info** %8, align 8
  %105 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = icmp sgt i64 %100, %107
  br i1 %108, label %109, label %182

109:                                              ; preds = %39
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.ts_info*, %struct.ts_info** %8, align 8
  %112 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  %115 = load %struct.ts_info*, %struct.ts_info** %8, align 8
  %116 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  store i64 %118, i64* %4, align 8
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* %6, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %175

122:                                              ; preds = %109
  %123 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %124 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %125, i32* %126, i32* %127)
  store %struct.ieee80211_sta* %128, %struct.ieee80211_sta** %7, align 8
  %129 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %130 = icmp ne %struct.ieee80211_sta* %129, null
  br i1 %130, label %131, label %168

131:                                              ; preds = %122
  %132 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to %struct.ath_node*
  store %struct.ath_node* %135, %struct.ath_node** %9, align 8
  %136 = load %struct.ath_node*, %struct.ath_node** %9, align 8
  %137 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %4, align 8
  %140 = call i32 @ath_dynack_ewma(i32 %138, i64 %139)
  %141 = load %struct.ath_node*, %struct.ath_node** %9, align 8
  %142 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %144 = call i32 @ath9k_hw_common(%struct.ath_hw* %143)
  %145 = load i32, i32* @DYNACK, align 4
  %146 = load i32*, i32** %10, align 8
  %147 = ptrtoint i32* %146 to i64
  %148 = load %struct.ath_node*, %struct.ath_node** %9, align 8
  %149 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %4, align 8
  %153 = call i32 (i32, i32, i8*, i64, i64, i64, ...) @ath_dbg(i32 %144, i32 %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %147, i64 %151, i64 %152)
  %154 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %155 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @time_is_before_jiffies(i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %131
  %160 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %161 = call i32 @ath_dynack_compute_ackto(%struct.ath_hw* %160)
  %162 = load i64, i64* @jiffies, align 8
  %163 = load i64, i64* @COMPUTE_TO, align 8
  %164 = add nsw i64 %162, %163
  %165 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %166 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %159, %131
  br label %168

168:                                              ; preds = %167, %122
  %169 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %170 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @ATH_DYN_BUF, align 4
  %174 = call i32 @INCR(i64 %172, i32 %173)
  br label %175

175:                                              ; preds = %168, %109
  %176 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %177 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @ATH_DYN_BUF, align 4
  %181 = call i32 @INCR(i64 %179, i32 %180)
  br label %189

182:                                              ; preds = %39
  %183 = load %struct.ath_dynack*, %struct.ath_dynack** %3, align 8
  %184 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* @ATH_DYN_BUF, align 4
  %188 = call i32 @INCR(i64 %186, i32 %187)
  br label %189

189:                                              ; preds = %182, %175
  br label %17

190:                                              ; preds = %37
  %191 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @ath_dynack_get_max_to(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32*, i32*) #1

declare dso_local i32 @ath_dynack_ewma(i32, i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @ath_dynack_compute_ackto(%struct.ath_hw*) #1

declare dso_local i32 @INCR(i64, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
