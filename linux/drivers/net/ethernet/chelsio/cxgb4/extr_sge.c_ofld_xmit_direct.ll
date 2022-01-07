; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_ofld_xmit_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_ofld_xmit_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_uld_txq = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.fw_wr_hdr = type { i32 }

@MAX_IMM_OFLD_TX_DATA_WR_LEN = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@TXQ_STOP_THRES = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_uld_txq*, i8*, i32)* @ofld_xmit_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofld_xmit_direct(%struct.sge_uld_txq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sge_uld_txq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.sge_uld_txq* %0, %struct.sge_uld_txq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MAX_IMM_OFLD_TX_DATA_WR_LEN, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 @WARN_ON(i32 1)
  %16 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %16, i32* %4, align 4
  br label %98

17:                                               ; preds = %3
  %18 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %19 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @spin_trylock(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %24, i32* %4, align 4
  br label %98

25:                                               ; preds = %17
  %26 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %27 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %32 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %31, i32 0, i32 0
  %33 = call i32 @skb_queue_empty(%struct.TYPE_7__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %37 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %30, %25
  %41 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %42 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %45, i32* %4, align 4
  br label %98

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @DIV_ROUND_UP(i32 %47, i32 8)
  %49 = call i32 @flits_to_desc(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %51 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %50, i32 0, i32 1
  %52 = call i32 @txq_avail(%struct.TYPE_6__* %51)
  %53 = load i32, i32* %8, align 4
  %54 = sub i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %56 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %60 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32* %63, i32** %10, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %66 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %65, i32 0, i32 1
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @inline_tx_header(i8* %64, %struct.TYPE_6__* %66, i32* %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @TXQ_STOP_THRES, align 4
  %72 = icmp slt i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %46
  %77 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = bitcast i32* %78 to %struct.fw_wr_hdr*
  %80 = call i32 @ofldtxq_stop(%struct.sge_uld_txq* %77, %struct.fw_wr_hdr* %79)
  br label %81

81:                                               ; preds = %76, %46
  %82 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %83 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %82, i32 0, i32 1
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @txq_advance(%struct.TYPE_6__* %83, i32 %84)
  %86 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %87 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %90 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %89, i32 0, i32 1
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @cxgb4_ring_tx_db(i32 %88, %struct.TYPE_6__* %90, i32 %91)
  %93 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %5, align 8
  %94 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %81, %40, %23, %14
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @skb_queue_empty(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @flits_to_desc(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @txq_avail(%struct.TYPE_6__*) #1

declare dso_local i32 @inline_tx_header(i8*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ofldtxq_stop(%struct.sge_uld_txq*, %struct.fw_wr_hdr*) #1

declare dso_local i32 @txq_advance(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cxgb4_ring_tx_db(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
