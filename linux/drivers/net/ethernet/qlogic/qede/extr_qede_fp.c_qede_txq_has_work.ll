; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_txq_has_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_txq_has_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_tx_queue = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_txq_has_work(%struct.qede_tx_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qede_tx_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.qede_tx_queue* %0, %struct.qede_tx_queue** %3, align 8
  %5 = call i32 (...) @barrier()
  %6 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %3, align 8
  %7 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @le16_to_cpu(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %3, align 8
  %12 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %11, i32 0, i32 0
  %13 = call i64 @qed_chain_get_cons_idx(i32* %12)
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %14, 1
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %3, align 8
  %21 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %20, i32 0, i32 0
  %22 = call i64 @qed_chain_get_cons_idx(i32* %21)
  %23 = icmp ne i64 %19, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @qed_chain_get_cons_idx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
