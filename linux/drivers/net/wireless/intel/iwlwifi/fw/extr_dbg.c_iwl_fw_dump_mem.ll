; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dump_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dump_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.iwl_fw_error_dump_data = type { i64, i8*, i8* }
%struct.iwl_fw_error_dump_mem = type { i8*, i32, i8* }

@IWL_FW_ERROR_DUMP_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WRT memory dump. Type=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**, i32, i32, i32)* @iwl_fw_dump_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_dump_mem(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_error_dump_data** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_fw_runtime*, align 8
  %7 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_fw_error_dump_mem*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %6, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  br label %61

15:                                               ; preds = %5
  %16 = load i32, i32* @IWL_FW_ERROR_DUMP_MEM, align 4
  %17 = call i8* @cpu_to_le32(i32 %16)
  %18 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  %19 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %18, align 8
  %20 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %19, i32 0, i32 2
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 24
  %24 = trunc i64 %23 to i32
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  %27 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %26, align 8
  %28 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  %30 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %29, align 8
  %31 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.iwl_fw_error_dump_mem*
  store %struct.iwl_fw_error_dump_mem* %34, %struct.iwl_fw_error_dump_mem** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.iwl_fw_error_dump_mem*, %struct.iwl_fw_error_dump_mem** %11, align 8
  %38 = getelementptr inbounds %struct.iwl_fw_error_dump_mem, %struct.iwl_fw_error_dump_mem* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.iwl_fw_error_dump_mem*, %struct.iwl_fw_error_dump_mem** %11, align 8
  %42 = getelementptr inbounds %struct.iwl_fw_error_dump_mem, %struct.iwl_fw_error_dump_mem* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.iwl_fw_error_dump_mem*, %struct.iwl_fw_error_dump_mem** %11, align 8
  %48 = getelementptr inbounds %struct.iwl_fw_error_dump_mem, %struct.iwl_fw_error_dump_mem* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @iwl_trans_read_mem_bytes(i32 %45, i32 %46, i32 %49, i32 %50)
  %52 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  %53 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %52, align 8
  %54 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %53)
  %55 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  store %struct.iwl_fw_error_dump_data* %54, %struct.iwl_fw_error_dump_data** %55, align 8
  %56 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %57 = load %struct.iwl_fw_error_dump_mem*, %struct.iwl_fw_error_dump_mem** %11, align 8
  %58 = getelementptr inbounds %struct.iwl_fw_error_dump_mem, %struct.iwl_fw_error_dump_mem* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %15, %14
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_trans_read_mem_bytes(i32, i32, i32, i32) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
