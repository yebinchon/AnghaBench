; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_build_tfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_build_tfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { i32, i8* }
%struct.iwl_trans_pcie = type { i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Error can not send more than %d chunks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_TX_DMA_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unaligned address = %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_txq*, i32, i32, i32)* @iwl_pcie_txq_build_tfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_txq_build_tfd(%struct.iwl_trans* %0, %struct.iwl_txq* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans*, align 8
  %8 = alloca %struct.iwl_txq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_trans_pcie*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %7, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %16 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %15)
  store %struct.iwl_trans_pcie* %16, %struct.iwl_trans_pcie** %12, align 8
  %17 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %18 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %12, align 8
  %21 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %24 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %19, i64 %27
  store i8* %28, i8** %13, align 8
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load i8*, i8** %13, align 8
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %12, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memset(i8* %32, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %31, %5
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i64 @iwl_pcie_tfd_get_num_tbs(%struct.iwl_trans* %38, i8* %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %12, align 8
  %43 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %48 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %12, align 8
  %49 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @IWL_ERR(%struct.iwl_trans* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %75

54:                                               ; preds = %37
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @IWL_TX_DMA_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = call i64 @WARN(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %75

66:                                               ; preds = %54
  %67 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @iwl_pcie_tfd_set_tb(%struct.iwl_trans* %67, i8* %68, i64 %69, i32 %70, i32 %71)
  %73 = load i64, i64* %14, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %66, %63, %46
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @iwl_pcie_tfd_get_num_tbs(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i64) #1

declare dso_local i64 @WARN(i32, i8*, i64) #1

declare dso_local i32 @iwl_pcie_tfd_set_tb(%struct.iwl_trans*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
