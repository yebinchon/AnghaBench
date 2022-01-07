; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_5__*, %struct.device* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i32, i32, %struct.TYPE_6__*, i64, i32*, i32*, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32)* @iwl_pcie_txq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_free(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwl_txq*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %10 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %9)
  store %struct.iwl_trans_pcie* %10, %struct.iwl_trans_pcie** %5, align 8
  %11 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %11, i32 0, i32 2
  %13 = load %struct.iwl_txq**, %struct.iwl_txq*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %13, i64 %15
  %17 = load %struct.iwl_txq*, %struct.iwl_txq** %16, align 8
  store %struct.iwl_txq* %17, %struct.iwl_txq** %6, align 8
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %18, i32 0, i32 1
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %22 = icmp ne %struct.iwl_txq* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %122

28:                                               ; preds = %2
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @iwl_pcie_txq_unmap(%struct.iwl_trans* %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %41 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kzfree(i32 %52)
  %54 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %55 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @kzfree(i32 %61)
  br label %63

63:                                               ; preds = %44
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %38

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66, %28
  %68 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %69 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %110

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %75 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %78 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %76, %83
  %85 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %86 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %89 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @dma_free_coherent(%struct.device* %73, i32 %84, i32* %87, i64 %90)
  %92 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %93 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %92, i32 0, i32 6
  store i64 0, i64* %93, align 8
  %94 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %95 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %94, i32 0, i32 5
  store i32* null, i32** %95, align 8
  %96 = load %struct.device*, %struct.device** %7, align 8
  %97 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %98 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %104 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %107 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @dma_free_coherent(%struct.device* %96, i32 %102, i32* %105, i64 %108)
  br label %110

110:                                              ; preds = %72, %67
  %111 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %112 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = call i32 @kfree(%struct.TYPE_6__* %113)
  %115 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %116 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %115, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %116, align 8
  %117 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %118 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %117, i32 0, i32 1
  %119 = call i32 @del_timer_sync(i32* %118)
  %120 = load %struct.iwl_txq*, %struct.iwl_txq** %6, align 8
  %121 = call i32 @memset(%struct.iwl_txq* %120, i32 0, i32 48)
  br label %122

122:                                              ; preds = %110, %27
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_pcie_txq_unmap(%struct.iwl_trans*, i32) #1

declare dso_local i32 @kzfree(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @memset(%struct.iwl_txq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
