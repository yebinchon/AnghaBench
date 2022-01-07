; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_block_txq_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_block_txq_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i32, i32, i32 }

@HBUS_TARG_WRPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32)* @iwl_trans_pcie_block_txq_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_pcie_block_txq_ptrs(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_txq*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %82, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %85

20:                                               ; preds = %10
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %21, i32 0, i32 1
  %23 = load %struct.iwl_txq**, %struct.iwl_txq*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %23, i64 %25
  %27 = load %struct.iwl_txq*, %struct.iwl_txq** %26, align 8
  store %struct.iwl_txq* %27, %struct.iwl_txq** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %82

34:                                               ; preds = %20
  %35 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %35, i32 0, i32 1
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %34
  %41 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %42 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON_ONCE(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %40
  %50 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %49
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %60 = load i32, i32* @HBUS_TARG_WRPTR, align 4
  %61 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %63, %65
  %67 = call i32 @iwl_write32(%struct.iwl_trans* %59, i32 %60, i32 %66)
  br label %68

68:                                               ; preds = %58, %49
  br label %78

69:                                               ; preds = %40, %34
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %74 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77, %68
  %79 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %80 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock_bh(i32* %80)
  br label %82

82:                                               ; preds = %78, %33
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %10

85:                                               ; preds = %10
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
