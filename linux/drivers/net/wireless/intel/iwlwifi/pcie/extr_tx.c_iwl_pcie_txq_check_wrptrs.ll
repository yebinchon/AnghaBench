; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_check_wrptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_check_wrptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_txq_check_wrptrs(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_txq*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %11 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %9, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %8
  %19 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %19, i32 0, i32 1
  %21 = load %struct.iwl_txq**, %struct.iwl_txq*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %21, i64 %23
  %25 = load %struct.iwl_txq*, %struct.iwl_txq** %24, align 8
  store %struct.iwl_txq* %25, %struct.iwl_txq** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @test_bit(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  br label %51

33:                                               ; preds = %18
  %34 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %34, i32 0, i32 1
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %43 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %44 = call i32 @iwl_pcie_txq_inc_wr_ptr(%struct.iwl_trans* %42, %struct.iwl_txq* %43)
  %45 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %33
  %48 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock_bh(i32* %49)
  br label %51

51:                                               ; preds = %47, %32
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %8

54:                                               ; preds = %8
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iwl_pcie_txq_inc_wr_ptr(%struct.iwl_trans*, %struct.iwl_txq*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
