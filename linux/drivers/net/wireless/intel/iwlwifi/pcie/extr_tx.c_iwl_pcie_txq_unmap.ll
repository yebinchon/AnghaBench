; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Q %d Free %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32)* @iwl_pcie_txq_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_unmap(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwl_txq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %5, align 8
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 2
  %14 = load %struct.iwl_txq**, %struct.iwl_txq*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %14, i64 %16
  %18 = load %struct.iwl_txq*, %struct.iwl_txq** %17, align 8
  store %struct.iwl_txq* %18, %struct.iwl_txq** %6, align 8
  %19 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_bh(i32* %20)
  br label %22

22:                                               ; preds = %99, %58, %2
  %23 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %100

30:                                               ; preds = %22
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @IWL_DEBUG_TX_REPLY(%struct.iwl_trans* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %30
  %43 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON_ONCE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  br label %22

59:                                               ; preds = %42
  %60 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i32 @iwl_pcie_free_tso_page(%struct.iwl_trans_pcie* %60, %struct.sk_buff* %61)
  br label %63

63:                                               ; preds = %59, %30
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %65 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %66 = call i32 @iwl_pcie_txq_free_tfd(%struct.iwl_trans* %64, %struct.iwl_txq* %65)
  %67 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %68 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %69 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @iwl_queue_inc_wrap(%struct.iwl_trans* %67, i64 %70)
  %72 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %73 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %75 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %78 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %63
  %82 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %83 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %82, i32 0, i32 1
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %88 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %93 = call i32 @iwl_pcie_clear_cmd_in_flight(%struct.iwl_trans* %92)
  br label %94

94:                                               ; preds = %91, %81
  %95 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %95, i32 0, i32 1
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  br label %99

99:                                               ; preds = %94, %63
  br label %22

100:                                              ; preds = %22
  br label %101

101:                                              ; preds = %107, %100
  %102 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %103 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %102, i32 0, i32 3
  %104 = call i32 @skb_queue_empty(i32* %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %109 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %108, i32 0, i32 3
  %110 = call %struct.sk_buff* @__skb_dequeue(i32* %109)
  store %struct.sk_buff* %110, %struct.sk_buff** %9, align 8
  %111 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %112 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %115 = call i32 @iwl_op_mode_free_skb(i32 %113, %struct.sk_buff* %114)
  br label %101

116:                                              ; preds = %101
  %117 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %118 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %117, i32 0, i32 2
  %119 = call i32 @spin_unlock_bh(i32* %118)
  %120 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %121 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %122 = call i32 @iwl_wake_queue(%struct.iwl_trans* %120, %struct.iwl_txq* %121)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_REPLY(%struct.iwl_trans*, i8*, i32, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_pcie_free_tso_page(%struct.iwl_trans_pcie*, %struct.sk_buff*) #1

declare dso_local i32 @iwl_pcie_txq_free_tfd(%struct.iwl_trans*, %struct.iwl_txq*) #1

declare dso_local i64 @iwl_queue_inc_wrap(%struct.iwl_trans*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_pcie_clear_cmd_in_flight(%struct.iwl_trans*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @iwl_op_mode_free_skb(i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_wake_queue(%struct.iwl_trans*, %struct.iwl_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
