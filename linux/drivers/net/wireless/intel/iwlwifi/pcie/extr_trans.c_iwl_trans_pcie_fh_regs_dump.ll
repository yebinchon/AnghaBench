; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_fh_regs_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_fh_regs_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_fw_error_dump_data = type { i64, i8*, i8* }

@FH_MEM_UPPER_BOUND = common dso_local global i32 0, align 4
@FH_MEM_LOWER_BOUND = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_FH_REGS = common dso_local global i32 0, align 4
@FH_MEM_LOWER_BOUND_GEN2 = common dso_local global i32 0, align 4
@FH_MEM_UPPER_BOUND_GEN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_fw_error_dump_data**)* @iwl_trans_pcie_fh_regs_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_fh_regs_dump(%struct.iwl_trans* %0, %struct.iwl_fw_error_dump_data** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %5, align 8
  %10 = load i32, i32* @FH_MEM_UPPER_BOUND, align 4
  %11 = load i32, i32* @FH_MEM_LOWER_BOUND, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %14 = call i32 @iwl_trans_grab_nic_access(%struct.iwl_trans* %13, i64* %7)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

17:                                               ; preds = %2
  %18 = load i32, i32* @IWL_FW_ERROR_DUMP_FH_REGS, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %21 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %20, align 8
  %22 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %26 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %25, align 8
  %27 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %29 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %28, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %8, align 8
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %17
  %41 = load i32, i32* @FH_MEM_LOWER_BOUND, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %54, %40
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @FH_MEM_UPPER_BOUND, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @iwl_trans_pcie_read32(%struct.iwl_trans* %47, i32 %48)
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  br label %42

59:                                               ; preds = %42
  br label %84

60:                                               ; preds = %17
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %62 = load i32, i32* @FH_MEM_LOWER_BOUND_GEN2, align 4
  %63 = call i32 @iwl_umac_prph(%struct.iwl_trans* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %78, %60
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %67 = load i32, i32* @FH_MEM_UPPER_BOUND_GEN2, align 4
  %68 = call i32 @iwl_umac_prph(%struct.iwl_trans* %66, i32 %67)
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @iwl_trans_pcie_read_prph(%struct.iwl_trans* %71, i32 %72)
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  br label %64

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %59
  %85 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %86 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %85, i64* %7)
  %87 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %88 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %87, align 8
  %89 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %88)
  %90 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  store %struct.iwl_fw_error_dump_data* %89, %struct.iwl_fw_error_dump_data** %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 24, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %84, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_trans_pcie_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_umac_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_pcie_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
