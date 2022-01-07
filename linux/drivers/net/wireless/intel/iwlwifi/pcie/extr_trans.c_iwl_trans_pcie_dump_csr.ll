; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_dump_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_dump_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_fw_error_dump_data = type { i64, i8*, i8* }

@IWL_CSR_TO_DUMP = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_fw_error_dump_data**)* @iwl_trans_pcie_dump_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_dump_csr(%struct.iwl_trans* %0, %struct.iwl_fw_error_dump_data** %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %4, align 8
  %8 = load i32, i32* @IWL_CSR_TO_DUMP, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 24, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @IWL_FW_ERROR_DUMP_CSR, align 4
  %13 = call i8* @cpu_to_le32(i32 %12)
  %14 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %15 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %14, align 8
  %16 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 8
  %17 = load i32, i32* @IWL_CSR_TO_DUMP, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %20 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %19, align 8
  %21 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %23 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %22, align 8
  %24 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %40, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IWL_CSR_TO_DUMP, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @iwl_trans_pcie_read32(%struct.iwl_trans* %33, i32 %34)
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 4
  store i32 %42, i32* %7, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %45 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %44, align 8
  %46 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %45)
  %47 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  store %struct.iwl_fw_error_dump_data* %46, %struct.iwl_fw_error_dump_data** %47, align 8
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_trans_pcie_read32(%struct.iwl_trans*, i32) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
