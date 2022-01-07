; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_ctrl_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_ctrl_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i64, i32, i64, i32, i32, i32, i32*, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.work_request_hdr = type { i32, i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@F_WR_SOP = common dso_local global i32 0, align 4
@F_WR_EOP = common dso_local global i32 0, align 4
@TXQ_CTRL = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@A_SG_KDOORBELL = common dso_local global i32 0, align 4
@F_SELEGRCNTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_txq*, %struct.sk_buff*)* @ctrl_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_xmit(%struct.adapter* %0, %struct.sge_txq* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_txq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.work_request_hdr*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.work_request_hdr*
  store %struct.work_request_hdr* %13, %struct.work_request_hdr** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call i32 @immediate(%struct.sk_buff* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = call i32 @WARN_ON(i32 1)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call i32 @dev_kfree_skb(%struct.sk_buff* %23)
  %25 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %25, i32* %4, align 4
  br label %115

26:                                               ; preds = %3
  %27 = load i32, i32* @F_WR_SOP, align 4
  %28 = load i32, i32* @F_WR_EOP, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @htonl(i32 %29)
  %31 = load %struct.work_request_hdr*, %struct.work_request_hdr** %9, align 8
  %32 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %36 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @V_WR_TID(i32 %37)
  %39 = call i32 @htonl(i32 %38)
  %40 = load %struct.work_request_hdr*, %struct.work_request_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %43 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %42, i32 0, i32 4
  %44 = call i32 @spin_lock(i32* %43)
  br label %45

45:                                               ; preds = %64, %26
  %46 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %47 = call i32 @reclaim_completed_tx_imm(%struct.sge_txq* %46)
  %48 = load %struct.adapter*, %struct.adapter** %5, align 8
  %49 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load i32, i32* @TXQ_CTRL, align 4
  %52 = call i32 @check_desc_avail(%struct.adapter* %48, %struct.sge_txq* %49, %struct.sk_buff* %50, i32 1, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %61 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %60, i32 0, i32 4
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %63, i32* %4, align 4
  br label %115

64:                                               ; preds = %56
  br label %45

65:                                               ; preds = %45
  %66 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %67 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %70 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %78 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @write_imm(i32* %72, %struct.sk_buff* %73, i32 %76, i32 %79)
  %81 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %82 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %86 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %90 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp uge i64 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %65
  %94 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %95 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %97 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = xor i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %65
  %101 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %102 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %101, i32 0, i32 4
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = call i32 (...) @wmb()
  %105 = load %struct.adapter*, %struct.adapter** %5, align 8
  %106 = load i32, i32* @A_SG_KDOORBELL, align 4
  %107 = load i32, i32* @F_SELEGRCNTX, align 4
  %108 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %109 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @V_EGRCNTX(i32 %110)
  %112 = or i32 %107, %111
  %113 = call i32 @t3_write_reg(%struct.adapter* %105, i32 %106, i32 %112)
  %114 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %100, %59, %21
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @immediate(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @V_WR_TID(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaim_completed_tx_imm(%struct.sge_txq*) #1

declare dso_local i32 @check_desc_avail(%struct.adapter*, %struct.sge_txq*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_imm(i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_EGRCNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
