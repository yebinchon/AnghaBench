; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_set_tb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_set_tb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_tfh_tfd = type { i8*, %struct.iwl_tfh_tb* }
%struct.iwl_tfh_tb = type { i8*, i32 }
%struct.iwl_trans_pcie = type { i64 }

@IWL_TFH_NUM_TBS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error can not send more than %d chunks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_tfh_tfd*, i32, i32)* @iwl_pcie_gen2_set_tb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans* %0, %struct.iwl_tfh_tfd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_tfh_tfd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_trans_pcie*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_tfh_tb*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.iwl_tfh_tfd* %1, %struct.iwl_tfh_tfd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %14 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %13)
  store %struct.iwl_trans_pcie* %14, %struct.iwl_trans_pcie** %10, align 8
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %16 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %7, align 8
  %17 = call i32 @iwl_pcie_gen2_get_num_tbs(%struct.iwl_trans* %15, %struct.iwl_tfh_tfd* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @IWL_TFH_NUM_TBS, align 4
  %20 = icmp sge i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %65

27:                                               ; preds = %4
  %28 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %28, i32 0, i32 1
  %30 = load %struct.iwl_tfh_tb*, %struct.iwl_tfh_tb** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iwl_tfh_tb, %struct.iwl_tfh_tb* %30, i64 %32
  store %struct.iwl_tfh_tb* %33, %struct.iwl_tfh_tb** %12, align 8
  %34 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %7, align 8
  %35 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @le16_to_cpu(i8* %36)
  %38 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %39 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %44 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %45 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @IWL_ERR(%struct.iwl_trans* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %65

50:                                               ; preds = %27
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.iwl_tfh_tb*, %struct.iwl_tfh_tb** %12, align 8
  %53 = getelementptr inbounds %struct.iwl_tfh_tb, %struct.iwl_tfh_tb* %52, i32 0, i32 1
  %54 = call i32 @put_unaligned_le64(i32 %51, i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.iwl_tfh_tb*, %struct.iwl_tfh_tb** %12, align 8
  %58 = getelementptr inbounds %struct.iwl_tfh_tb, %struct.iwl_tfh_tb* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %7, align 8
  %63 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %50, %42, %24
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_gen2_get_num_tbs(%struct.iwl_trans*, %struct.iwl_tfh_tfd*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i64) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
