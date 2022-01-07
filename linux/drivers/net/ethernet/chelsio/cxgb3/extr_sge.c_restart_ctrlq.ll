; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_restart_ctrlq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_restart_ctrlq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sge_qset = type { i32, i32, %struct.sge_txq* }
%struct.sge_txq = type { i64, i64, i64, i32, i32, i32, i32, i32, i32* }

@TXQ_CTRL = common dso_local global i64 0, align 8
@A_SG_KDOORBELL = common dso_local global i32 0, align 4
@F_SELEGRCNTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @restart_ctrlq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_ctrlq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sge_qset*, align 8
  %5 = alloca %struct.sge_txq*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.sge_qset*
  store %struct.sge_qset* %7, %struct.sge_qset** %4, align 8
  %8 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %9 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %8, i32 0, i32 2
  %10 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %11 = load i64, i64* @TXQ_CTRL, align 8
  %12 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %10, i64 %11
  store %struct.sge_txq* %12, %struct.sge_txq** %5, align 8
  %13 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %14 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %13, i32 0, i32 5
  %15 = call i32 @spin_lock(i32* %14)
  br label %16

16:                                               ; preds = %90, %1
  %17 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %18 = call i32 @reclaim_completed_tx_imm(%struct.sge_txq* %17)
  br label %19

19:                                               ; preds = %65, %16
  %20 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %21 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %24 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %29 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %28, i32 0, i32 7
  %30 = call %struct.sk_buff* @__skb_dequeue(i32* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %3, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi i1 [ false, %19 ], [ %31, %27 ]
  br i1 %33, label %34, label %70

34:                                               ; preds = %32
  %35 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %36 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %39 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %47 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @write_imm(i32* %41, %struct.sk_buff* %42, i32 %45, i32 %48)
  %50 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %51 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %55 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %34
  %59 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %60 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %62 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = xor i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %58, %34
  %66 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %67 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  br label %19

70:                                               ; preds = %32
  %71 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %72 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %71, i32 0, i32 7
  %73 = call i32 @skb_queue_empty(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* @TXQ_CTRL, align 8
  %77 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %78 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %77, i32 0, i32 1
  %79 = call i32 @set_bit(i64 %76, i32* %78)
  %80 = call i32 (...) @smp_mb__after_atomic()
  %81 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %82 = call i64 @should_restart_tx(%struct.sge_txq* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load i64, i64* @TXQ_CTRL, align 8
  %86 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %87 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %86, i32 0, i32 1
  %88 = call i64 @test_and_clear_bit(i64 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %16

91:                                               ; preds = %84, %75
  %92 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %93 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %70
  %97 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %98 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %97, i32 0, i32 5
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = call i32 (...) @wmb()
  %101 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %102 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @A_SG_KDOORBELL, align 4
  %105 = load i32, i32* @F_SELEGRCNTX, align 4
  %106 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %107 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @V_EGRCNTX(i32 %108)
  %110 = or i32 %105, %109
  %111 = call i32 @t3_write_reg(i32 %103, i32 %104, i32 %110)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaim_completed_tx_imm(%struct.sge_txq*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @write_imm(i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @should_restart_tx(%struct.sge_txq*) #1

declare dso_local i64 @test_and_clear_bit(i64, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t3_write_reg(i32, i32, i32) #1

declare dso_local i32 @V_EGRCNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
