; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_txq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_txq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32)* @iwl_pcie_gen2_txq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_gen2_txq_free(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwl_txq*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %5, align 8
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 2
  %12 = load %struct.iwl_txq**, %struct.iwl_txq*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %12, i64 %14
  %16 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  store %struct.iwl_txq* %16, %struct.iwl_txq** %6, align 8
  %17 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %18 = icmp ne %struct.iwl_txq* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %81

24:                                               ; preds = %2
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @iwl_pcie_gen2_txq_unmap(%struct.iwl_trans* %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %59, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kzfree(i32 %48)
  %50 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @kzfree(i32 %57)
  br label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %34

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62, %24
  %64 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %65 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %64, i32 0, i32 1
  %66 = call i32 @del_timer_sync(i32* %65)
  %67 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %68 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %69 = call i32 @iwl_pcie_gen2_txq_free_memory(%struct.iwl_trans* %67, %struct.iwl_txq* %68)
  %70 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %71 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %70, i32 0, i32 2
  %72 = load %struct.iwl_txq**, %struct.iwl_txq*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %72, i64 %74
  store %struct.iwl_txq* null, %struct.iwl_txq** %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %78 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @clear_bit(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %63, %23
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_pcie_gen2_txq_unmap(%struct.iwl_trans*, i32) #1

declare dso_local i32 @kzfree(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @iwl_pcie_gen2_txq_free_memory(%struct.iwl_trans*, %struct.iwl_txq*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
