; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Not enough memory for tx queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Tx %d queue init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Tx %d queue alloc failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_gen2_tx_init(%struct.iwl_trans* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_trans_pcie*, align 8
  %9 = alloca %struct.iwl_txq*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %12 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %8, align 8
  %13 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %13, i32 0, i32 2
  %15 = load %struct.iwl_txq**, %struct.iwl_txq*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %15, i64 %17
  %19 = load %struct.iwl_txq*, %struct.iwl_txq** %18, align 8
  %20 = icmp ne %struct.iwl_txq* %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.iwl_txq* @kzalloc(i32 4, i32 %22)
  store %struct.iwl_txq* %23, %struct.iwl_txq** %9, align 8
  %24 = load %struct.iwl_txq*, %struct.iwl_txq** %9, align 8
  %25 = icmp ne %struct.iwl_txq* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %28 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %94

31:                                               ; preds = %21
  %32 = load %struct.iwl_txq*, %struct.iwl_txq** %9, align 8
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 2
  %35 = load %struct.iwl_txq**, %struct.iwl_txq*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %35, i64 %37
  store %struct.iwl_txq* %32, %struct.iwl_txq** %38, align 8
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %40 = load %struct.iwl_txq*, %struct.iwl_txq** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @iwl_pcie_txq_alloc(%struct.iwl_trans* %39, %struct.iwl_txq* %40, i32 %41, i32 1)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %90

49:                                               ; preds = %31
  br label %58

50:                                               ; preds = %3
  %51 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %52 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %51, i32 0, i32 2
  %53 = load %struct.iwl_txq**, %struct.iwl_txq*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %53, i64 %55
  %57 = load %struct.iwl_txq*, %struct.iwl_txq** %56, align 8
  store %struct.iwl_txq* %57, %struct.iwl_txq** %9, align 8
  br label %58

58:                                               ; preds = %50, %49
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %60 = load %struct.iwl_txq*, %struct.iwl_txq** %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %64 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @iwl_pcie_txq_init(%struct.iwl_trans* %59, %struct.iwl_txq* %60, i32 %61, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %90

75:                                               ; preds = %58
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %78 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %77, i32 0, i32 2
  %79 = load %struct.iwl_txq**, %struct.iwl_txq*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %79, i64 %81
  %83 = load %struct.iwl_txq*, %struct.iwl_txq** %82, align 8
  %84 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %83, i32 0, i32 0
  store i32 %76, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %87 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @set_bit(i32 %85, i32 %88)
  store i32 0, i32* %4, align 4
  br label %94

90:                                               ; preds = %71, %45
  %91 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %92 = call i32 @iwl_pcie_gen2_tx_free(%struct.iwl_trans* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %75, %26
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local %struct.iwl_txq* @kzalloc(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @iwl_pcie_txq_alloc(%struct.iwl_trans*, %struct.iwl_txq*, i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_init(%struct.iwl_trans*, %struct.iwl_txq*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @iwl_pcie_gen2_tx_free(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
