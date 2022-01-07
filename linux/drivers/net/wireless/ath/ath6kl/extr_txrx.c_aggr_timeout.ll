; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggr_info_conn = type { i32, i32, %struct.rxtid*, %struct.rxtid_stats* }
%struct.rxtid = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.rxtid_stats = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@NUM_OF_TIDS = common dso_local global i64 0, align 8
@ATH6KL_DBG_AGGR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"aggr timeout (st %d end %d)\0A\00", align 1
@ATH6KL_MAX_SEQ_NO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@AGGR_RX_TIMEOUT = common dso_local global i32 0, align 4
@aggr_conn = common dso_local global %struct.aggr_info_conn* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @aggr_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggr_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.aggr_info_conn*, align 8
  %6 = alloca %struct.rxtid*, align 8
  %7 = alloca %struct.rxtid_stats*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %9 = ptrtoint %struct.aggr_info_conn* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @timer, align 4
  %12 = call %struct.aggr_info_conn* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.aggr_info_conn* %12, %struct.aggr_info_conn** %5, align 8
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %61, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @NUM_OF_TIDS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %13
  %18 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %19 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %18, i32 0, i32 2
  %20 = load %struct.rxtid*, %struct.rxtid** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %20, i64 %21
  store %struct.rxtid* %22, %struct.rxtid** %6, align 8
  %23 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %24 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %23, i32 0, i32 3
  %25 = load %struct.rxtid_stats*, %struct.rxtid_stats** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %25, i64 %26
  store %struct.rxtid_stats* %27, %struct.rxtid_stats** %7, align 8
  %28 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %29 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %34 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %17
  br label %61

38:                                               ; preds = %32
  %39 = load %struct.rxtid_stats*, %struct.rxtid_stats** %7, align 8
  %40 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @ATH6KL_DBG_AGGR, align 4
  %44 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %45 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %48 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %51 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %49, %52
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* @ATH6KL_MAX_SEQ_NO, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @ath6kl_dbg(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %56)
  %58 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @aggr_deque_frms(%struct.aggr_info_conn* %58, i64 %59, i32 0, i32 0)
  br label %61

61:                                               ; preds = %38, %37
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %3, align 8
  br label %13

64:                                               ; preds = %13
  %65 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %66 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  store i64 0, i64* %3, align 8
  br label %67

67:                                               ; preds = %130, %64
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @NUM_OF_TIDS, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %133

71:                                               ; preds = %67
  %72 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %73 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %72, i32 0, i32 2
  %74 = load %struct.rxtid*, %struct.rxtid** %73, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %74, i64 %75
  store %struct.rxtid* %76, %struct.rxtid** %6, align 8
  %77 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %78 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %129

81:                                               ; preds = %71
  %82 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %83 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = icmp ne %struct.TYPE_2__* %84, null
  br i1 %85, label %86, label %129

86:                                               ; preds = %81
  %87 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %88 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %87, i32 0, i32 3
  %89 = call i32 @spin_lock_bh(i32* %88)
  store i64 0, i64* %4, align 8
  br label %90

90:                                               ; preds = %112, %86
  %91 = load i64, i64* %4, align 8
  %92 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %93 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %90
  %98 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %99 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %108 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %110 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %115

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %4, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %4, align 8
  br label %90

115:                                              ; preds = %106, %90
  %116 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %117 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %116, i32 0, i32 3
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load i64, i64* %4, align 8
  %120 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %121 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = icmp uge i64 %119, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %127 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %115
  br label %129

129:                                              ; preds = %128, %81, %71
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %3, align 8
  br label %67

133:                                              ; preds = %67
  %134 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %135 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %140 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %139, i32 0, i32 1
  %141 = load i64, i64* @jiffies, align 8
  %142 = load i32, i32* @AGGR_RX_TIMEOUT, align 4
  %143 = call i64 @msecs_to_jiffies(i32 %142)
  %144 = add nsw i64 %141, %143
  %145 = call i32 @mod_timer(i32* %140, i64 %144)
  br label %146

146:                                              ; preds = %138, %133
  ret void
}

declare dso_local %struct.aggr_info_conn* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @aggr_deque_frms(%struct.aggr_info_conn*, i64, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
