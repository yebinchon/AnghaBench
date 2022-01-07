; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_txq_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_txq_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Q %d Free %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_gen2_txq_unmap(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwl_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %5, align 8
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 1
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

22:                                               ; preds = %67, %62, %2
  %23 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %78

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
  br i1 %41, label %42, label %67

42:                                               ; preds = %30
  %43 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %44 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %45 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %43, i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %49 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %8, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON_ONCE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  br label %22

63:                                               ; preds = %42
  %64 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @iwl_pcie_free_tso_page(%struct.iwl_trans_pcie* %64, %struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %63, %30
  %68 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %69 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %70 = call i32 @iwl_pcie_gen2_free_tfd(%struct.iwl_trans* %68, %struct.iwl_txq* %69)
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %72 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %73 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @iwl_queue_inc_wrap(%struct.iwl_trans* %71, i64 %74)
  %76 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %77 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %22

78:                                               ; preds = %22
  br label %79

79:                                               ; preds = %85, %78
  %80 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %81 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %80, i32 0, i32 3
  %82 = call i32 @skb_queue_empty(i32* %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %87 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %86, i32 0, i32 3
  %88 = call %struct.sk_buff* @__skb_dequeue(i32* %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %9, align 8
  %89 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %90 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = call i32 @iwl_op_mode_free_skb(i32 %91, %struct.sk_buff* %92)
  br label %79

94:                                               ; preds = %79
  %95 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %96 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %95, i32 0, i32 2
  %97 = call i32 @spin_unlock_bh(i32* %96)
  %98 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %99 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %100 = call i32 @iwl_wake_queue(%struct.iwl_trans* %98, %struct.iwl_txq* %99)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_REPLY(%struct.iwl_trans*, i8*, i32, i64) #1

declare dso_local i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_pcie_free_tso_page(%struct.iwl_trans_pcie*, %struct.sk_buff*) #1

declare dso_local i32 @iwl_pcie_gen2_free_tfd(%struct.iwl_trans*, %struct.iwl_txq*) #1

declare dso_local i64 @iwl_queue_inc_wrap(%struct.iwl_trans*, i64) #1

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
