; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_txq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_txq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { %struct.TYPE_2__**, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@iwl_trans_pcie_txq_disable.zero_val = internal constant [4 x i64] zeroinitializer, align 16
@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"queue %d not used\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Deactivate queue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_txq_disable(%struct.iwl_trans* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %10 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %9)
  store %struct.iwl_trans_pcie* %10, %struct.iwl_trans_pcie** %7, align 8
  %11 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @SCD_TX_STTS_QUEUE_OFFSET(i32 %14)
  %16 = add nsw i64 %13, %15
  store i64 %16, i64* %8, align 8
  %17 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %35 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @test_and_clear_bit(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %41, i32 0, i32 0
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @WARN_ONCE(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %72

46:                                               ; preds = %3
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @iwl_scd_txq_set_inactive(%struct.iwl_trans* %50, i32 %51)
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([4 x i64], [4 x i64]* @iwl_trans_pcie_txq_disable.zero_val, i64 0, i64 0))
  %56 = call i32 @iwl_trans_write_mem(%struct.iwl_trans* %53, i64 %54, i8* bitcast ([4 x i64]* @iwl_trans_pcie_txq_disable.zero_val to i8*), i32 %55)
  br label %57

57:                                               ; preds = %49, %46
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @iwl_pcie_txq_unmap(%struct.iwl_trans* %58, i32 %59)
  %61 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %57, %39
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @SCD_TX_STTS_QUEUE_OFFSET(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_scd_txq_set_inactive(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_write_mem(%struct.iwl_trans*, i64, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @iwl_pcie_txq_unmap(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
