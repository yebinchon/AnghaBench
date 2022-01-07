; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_read_radio_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_read_radio_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.iwl_fw_error_dump_data = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [26 x i8] c"WRT radio registers dump\0A\00", align 1
@IWL_FW_ERROR_DUMP_RADIO_REG = common dso_local global i32 0, align 4
@RADIO_REG_MAX_READ = common dso_local global i32 0, align 4
@RADIO_RSP_RD_CMD = common dso_local global i32 0, align 4
@RADIO_RSP_ADDR_POS = common dso_local global i32 0, align 4
@RSP_RADIO_CMD = common dso_local global i32 0, align 4
@RSP_RADIO_RDDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**)* @iwl_read_radio_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_read_radio_regs(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_error_dump_data** %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %4, align 8
  %9 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %10 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %9, align 8
  %11 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %5, align 8
  %15 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %16 = call i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iwl_trans_grab_nic_access(i32 %19, i64* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %71

23:                                               ; preds = %2
  %24 = load i32, i32* @IWL_FW_ERROR_DUMP_RADIO_REG, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %27 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %26, align 8
  %28 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* @RADIO_REG_MAX_READ, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %32 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %31, align 8
  %33 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %59, %23
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @RADIO_REG_MAX_READ, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i32, i32* @RADIO_RSP_RD_CMD, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @RADIO_RSP_ADDR_POS, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RSP_RADIO_CMD, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @iwl_write_prph_no_grab(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RSP_RADIO_RDDAT, align 4
  %55 = call i64 @iwl_read_prph_no_grab(i32 %53, i32 %54)
  %56 = load i64*, i64** %5, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %5, align 8
  br label %59

59:                                               ; preds = %38
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %64 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %63, align 8
  %65 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %64)
  %66 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  store %struct.iwl_fw_error_dump_data* %65, %struct.iwl_fw_error_dump_data** %66, align 8
  %67 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %68 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @iwl_trans_release_nic_access(i32 %69, i64* %6)
  br label %71

71:                                               ; preds = %62, %22
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime*, i8*) #1

declare dso_local i32 @iwl_trans_grab_nic_access(i32, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_write_prph_no_grab(i32, i32, i32) #1

declare dso_local i64 @iwl_read_prph_no_grab(i32, i32) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

declare dso_local i32 @iwl_trans_release_nic_access(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
