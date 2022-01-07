; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_deque_frms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_deque_frms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggr_info_conn = type { i32, i32, %struct.rxtid_stats*, %struct.rxtid* }
%struct.rxtid_stats = type { i32, i32 }
%struct.rxtid = type { i64, i32, i32, i32, %struct.skb_hold_q* }
%struct.skb_hold_q = type { i32*, i64 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aggr_info_conn*, i64, i64, i64)* @aggr_deque_frms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggr_deque_frms(%struct.aggr_info_conn* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.aggr_info_conn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rxtid*, align 8
  %11 = alloca %struct.skb_hold_q*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.rxtid_stats*, align 8
  store %struct.aggr_info_conn* %0, %struct.aggr_info_conn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %17 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %16, i32 0, i32 3
  %18 = load %struct.rxtid*, %struct.rxtid** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %18, i64 %19
  store %struct.rxtid* %20, %struct.rxtid** %10, align 8
  %21 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %22 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %21, i32 0, i32 2
  %23 = load %struct.rxtid_stats*, %struct.rxtid_stats** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %23, i64 %24
  store %struct.rxtid_stats* %25, %struct.rxtid_stats** %15, align 8
  %26 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %27 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %26, i32 0, i32 2
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %30 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %33 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @AGGR_WIN_IDX(i64 %31, i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i64, i64* %7, align 8
  br label %44

40:                                               ; preds = %4
  %41 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %42 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i64 [ %39, %38 ], [ %43, %40 ]
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %48 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @AGGR_WIN_IDX(i64 %46, i32 %49)
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %113, %44
  %52 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %53 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %52, i32 0, i32 4
  %54 = load %struct.skb_hold_q*, %struct.skb_hold_q** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %54, i64 %55
  store %struct.skb_hold_q* %56, %struct.skb_hold_q** %11, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.skb_hold_q*, %struct.skb_hold_q** %11, align 8
  %61 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %117

65:                                               ; preds = %59, %51
  %66 = load %struct.skb_hold_q*, %struct.skb_hold_q** %11, align 8
  %67 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.skb_hold_q*, %struct.skb_hold_q** %11, align 8
  %72 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %77 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %80 = load %struct.skb_hold_q*, %struct.skb_hold_q** %11, align 8
  %81 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @aggr_slice_amsdu(i32 %78, %struct.rxtid* %79, i32* %82)
  br label %91

84:                                               ; preds = %70
  %85 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %86 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %85, i32 0, i32 1
  %87 = load %struct.skb_hold_q*, %struct.skb_hold_q** %11, align 8
  %88 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @skb_queue_tail(i32* %86, i32* %89)
  br label %91

91:                                               ; preds = %84, %75
  %92 = load %struct.skb_hold_q*, %struct.skb_hold_q** %11, align 8
  %93 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %99

94:                                               ; preds = %65
  %95 = load %struct.rxtid_stats*, %struct.rxtid_stats** %15, align 8
  %96 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %91
  %100 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %101 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @ATH6KL_NEXT_SEQ_NO(i64 %102)
  %104 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %105 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %107 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %110 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @AGGR_WIN_IDX(i64 %108, i32 %111)
  store i64 %112, i64* %12, align 8
  br label %113

113:                                              ; preds = %99
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %51, label %117

117:                                              ; preds = %113, %64
  %118 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %119 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %118, i32 0, i32 2
  %120 = call i32 @spin_unlock_bh(i32* %119)
  %121 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %122 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %121, i32 0, i32 1
  %123 = call i64 @skb_queue_len(i32* %122)
  %124 = load %struct.rxtid_stats*, %struct.rxtid_stats** %15, align 8
  %125 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %123
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  br label %130

130:                                              ; preds = %135, %117
  %131 = load %struct.rxtid*, %struct.rxtid** %10, align 8
  %132 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %131, i32 0, i32 1
  %133 = call %struct.sk_buff* @skb_dequeue(i32* %132)
  store %struct.sk_buff* %133, %struct.sk_buff** %9, align 8
  %134 = icmp ne %struct.sk_buff* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %5, align 8
  %137 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = call i32 @ath6kl_deliver_frames_to_nw_stack(i32 %138, %struct.sk_buff* %139)
  br label %130

141:                                              ; preds = %130
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @AGGR_WIN_IDX(i64, i32) #1

declare dso_local i32 @aggr_slice_amsdu(i32, %struct.rxtid*, i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, i32*) #1

declare dso_local i64 @ATH6KL_NEXT_SEQ_NO(i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ath6kl_deliver_frames_to_nw_stack(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
