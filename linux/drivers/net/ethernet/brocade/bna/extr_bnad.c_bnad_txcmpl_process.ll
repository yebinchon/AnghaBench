; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_txcmpl_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_txcmpl_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_tcb = type { i64*, i64, i64, %struct.TYPE_2__*, i32, %struct.bnad_tx_unmap* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bnad_tx_unmap = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }

@BNAD_TXQ_TX_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnad*, %struct.bna_tcb*)* @bnad_txcmpl_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnad_txcmpl_process(%struct.bnad* %0, %struct.bna_tcb* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca %struct.bna_tcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bnad_tx_unmap*, align 8
  %14 = alloca %struct.bnad_tx_unmap*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store %struct.bna_tcb* %1, %struct.bna_tcb** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %17 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %16, i32 0, i32 5
  %18 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %17, align 8
  store %struct.bnad_tx_unmap* %18, %struct.bnad_tx_unmap** %13, align 8
  %19 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %20 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %21 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %20, i32 0, i32 4
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %105

25:                                               ; preds = %2
  %26 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %27 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = call i32 (...) @rmb()
  %31 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %32 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %35 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i64 @BNA_Q_INDEX_CHANGE(i64 %37, i64 %38, i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %43 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %44 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @BNA_QE_IN_USE_CNT(%struct.bna_tcb* %42, i64 %45)
  %47 = icmp sle i64 %41, %46
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  br label %51

51:                                               ; preds = %54, %25
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  %55 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %13, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %55, i64 %56
  store %struct.bnad_tx_unmap* %57, %struct.bnad_tx_unmap** %14, align 8
  %58 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %14, align 8
  %59 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %58, i32 0, i32 1
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %15, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %6, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %14, align 8
  %69 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @BNA_TXQ_WI_NEEDED(i32 %70)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %8, align 8
  %75 = load %struct.bnad*, %struct.bnad** %4, align 8
  %76 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %13, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @bnad_tx_buff_unmap(%struct.bnad* %75, %struct.bnad_tx_unmap* %76, i64 %77, i64 %78)
  store i64 %79, i64* %11, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  br label %51

82:                                               ; preds = %51
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %85 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %88 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %86
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %97 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %96, i32 0, i32 3
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %95
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load i64, i64* %6, align 8
  store i64 %104, i64* %3, align 8
  br label %105

105:                                              ; preds = %82, %24
  %106 = load i64, i64* %3, align 8
  ret i64 %106
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @BNA_Q_INDEX_CHANGE(i64, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @BNA_QE_IN_USE_CNT(%struct.bna_tcb*, i64) #1

declare dso_local i64 @BNA_TXQ_WI_NEEDED(i32) #1

declare dso_local i64 @bnad_tx_buff_unmap(%struct.bnad*, %struct.bnad_tx_unmap*, i64, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
