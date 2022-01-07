; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_dyn_txq_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_dyn_txq_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_txq = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Scheduler BC Table allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Tx queue alloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Tx queue init failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_trans_pcie_dyn_txq_alloc_dma(%struct.iwl_trans* %0, %struct.iwl_txq** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_txq**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_txq*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.iwl_txq** %1, %struct.iwl_txq*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.iwl_txq* @kzalloc(i32 8, i32 %12)
  store %struct.iwl_txq* %13, %struct.iwl_txq** %11, align 8
  %14 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %15 = icmp ne %struct.iwl_txq* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %75

19:                                               ; preds = %4
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %21 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %22 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %21, i32 0, i32 1
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %29 = icmp sge i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i64 4, i64 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @iwl_pcie_alloc_dma_ptr(%struct.iwl_trans* %20, i32* %22, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %38 = call i32 @IWL_ERR(%struct.iwl_trans* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %40 = call i32 @kfree(%struct.iwl_txq* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %75

43:                                               ; preds = %19
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %45 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @iwl_pcie_txq_alloc(%struct.iwl_trans* %44, %struct.iwl_txq* %45, i32 %46, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %52 = call i32 @IWL_ERR(%struct.iwl_trans* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %70

53:                                               ; preds = %43
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %55 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @iwl_pcie_txq_init(%struct.iwl_trans* %54, %struct.iwl_txq* %55, i32 %56, i32 0)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %62 = call i32 @IWL_ERR(%struct.iwl_trans* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %70

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @msecs_to_jiffies(i32 %64)
  %66 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %67 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %69 = load %struct.iwl_txq**, %struct.iwl_txq*** %7, align 8
  store %struct.iwl_txq* %68, %struct.iwl_txq** %69, align 8
  store i32 0, i32* %5, align 4
  br label %75

70:                                               ; preds = %60, %50
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %72 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %73 = call i32 @iwl_pcie_gen2_txq_free_memory(%struct.iwl_trans* %71, %struct.iwl_txq* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %63, %36, %16
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.iwl_txq* @kzalloc(i32, i32) #1

declare dso_local i32 @iwl_pcie_alloc_dma_ptr(%struct.iwl_trans*, i32*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @kfree(%struct.iwl_txq*) #1

declare dso_local i32 @iwl_pcie_txq_alloc(%struct.iwl_trans*, %struct.iwl_txq*, i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_init(%struct.iwl_trans*, %struct.iwl_txq*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @iwl_pcie_gen2_txq_free_memory(%struct.iwl_trans*, %struct.iwl_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
