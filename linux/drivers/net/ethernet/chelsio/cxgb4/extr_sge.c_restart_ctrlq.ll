; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_restart_ctrlq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_restart_ctrlq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sge_ctrl_txq = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32* }
%struct.fw_wr_hdr = type { i32 }

@TXQ_STOP_THRES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @restart_ctrlq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_ctrlq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sge_ctrl_txq*, align 8
  %6 = alloca %struct.fw_wr_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.sge_ctrl_txq*
  store %struct.sge_ctrl_txq* %10, %struct.sge_ctrl_txq** %5, align 8
  %11 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %12 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %16 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %15, i32 0, i32 1
  %17 = call i32 @reclaim_completed_tx_imm(%struct.TYPE_7__* %16)
  %18 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %19 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %18, i32 0, i32 1
  %20 = call i64 @txq_avail(%struct.TYPE_7__* %19)
  %21 = load i64, i64* @TXQ_STOP_THRES, align 8
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  br label %25

25:                                               ; preds = %101, %1
  %26 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %27 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %26, i32 0, i32 0
  %28 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_8__* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %3, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %106

30:                                               ; preds = %25
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %38 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %42 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = bitcast i32* %45 to %struct.fw_wr_hdr*
  store %struct.fw_wr_hdr* %46, %struct.fw_wr_hdr** %6, align 8
  %47 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %48 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %47, i32 0, i32 1
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @txq_advance(%struct.TYPE_7__* %48, i32 %49)
  %51 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %52 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %57 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %56, i32 0, i32 1
  %58 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %6, align 8
  %59 = call i32 @cxgb4_inline_tx_skb(%struct.sk_buff* %55, %struct.TYPE_7__* %57, %struct.fw_wr_hdr* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  %62 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %63 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %62, i32 0, i32 1
  %64 = call i64 @txq_avail(%struct.TYPE_7__* %63)
  %65 = load i64, i64* @TXQ_STOP_THRES, align 8
  %66 = icmp slt i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %30
  %71 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %72 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %8, align 8
  %75 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %76 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %6, align 8
  %77 = call i32 @ctrlq_check_stop(%struct.sge_ctrl_txq* %75, %struct.fw_wr_hdr* %76)
  %78 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %79 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %70
  %85 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %86 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = call i32 @spin_lock(i32* %87)
  br label %109

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %30
  %91 = load i32, i32* %4, align 4
  %92 = icmp ugt i32 %91, 16
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %95 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %98 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %97, i32 0, i32 1
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @cxgb4_ring_tx_db(i32 %96, %struct.TYPE_7__* %98, i32 %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %93, %90
  %102 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %103 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = call i32 @spin_lock(i32* %104)
  br label %25

106:                                              ; preds = %25
  %107 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %108 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %84
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %114 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %117 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %116, i32 0, i32 1
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @cxgb4_ring_tx_db(i32 %115, %struct.TYPE_7__* %117, i32 %118)
  br label %120

120:                                              ; preds = %112, %109
  %121 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %5, align 8
  %122 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaim_completed_tx_imm(%struct.TYPE_7__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @txq_avail(%struct.TYPE_7__*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_8__*) #1

declare dso_local i32 @txq_advance(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cxgb4_inline_tx_skb(%struct.sk_buff*, %struct.TYPE_7__*, %struct.fw_wr_hdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ctrlq_check_stop(%struct.sge_ctrl_txq*, %struct.fw_wr_hdr*) #1

declare dso_local i32 @cxgb4_ring_tx_db(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
