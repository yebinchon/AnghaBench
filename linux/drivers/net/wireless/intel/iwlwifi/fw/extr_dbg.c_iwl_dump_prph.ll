; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_prph.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_prph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.iwl_trans* }
%struct.iwl_trans = type { i32 }
%struct.iwl_prph_range = type { i32, i32 }
%struct.iwl_fw_error_dump_prph = type { i64, i8* }
%struct.iwl_fw_error_dump_data = type { i64, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"WRT PRPH dump\0A\00", align 1
@IWL_FW_ERROR_DUMP_PRPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_prph_range*, i64, i8*)* @iwl_dump_prph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_dump_prph(%struct.iwl_fw_runtime* %0, %struct.iwl_prph_range* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca %struct.iwl_prph_range*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iwl_fw_error_dump_prph*, align 8
  %10 = alloca %struct.iwl_trans*, align 8
  %11 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store %struct.iwl_prph_range* %1, %struct.iwl_prph_range** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %15, i32 0, i32 0
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %16, align 8
  store %struct.iwl_trans* %17, %struct.iwl_trans** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.iwl_fw_error_dump_data**
  store %struct.iwl_fw_error_dump_data** %19, %struct.iwl_fw_error_dump_data*** %11, align 8
  %20 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %11, align 8
  %21 = icmp ne %struct.iwl_fw_error_dump_data** %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %108

23:                                               ; preds = %4
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %25 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %27 = call i32 @iwl_trans_grab_nic_access(%struct.iwl_trans* %26, i64* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %108

30:                                               ; preds = %23
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %102, %30
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %31
  %36 = load %struct.iwl_prph_range*, %struct.iwl_prph_range** %6, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %36, i64 %37
  %39 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iwl_prph_range*, %struct.iwl_prph_range** %6, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %41, i64 %42
  %44 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %40, %45
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @IWL_FW_ERROR_DUMP_PRPH, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %11, align 8
  %51 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %50, align 8
  %52 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %51, i32 0, i32 2
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 16, %54
  %56 = trunc i64 %55 to i32
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %11, align 8
  %59 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %58, align 8
  %60 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %11, align 8
  %62 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %61, align 8
  %63 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = bitcast i8* %65 to %struct.iwl_fw_error_dump_prph*
  store %struct.iwl_fw_error_dump_prph* %66, %struct.iwl_fw_error_dump_prph** %9, align 8
  %67 = load %struct.iwl_prph_range*, %struct.iwl_prph_range** %6, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %67, i64 %68
  %70 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.iwl_fw_error_dump_prph*, %struct.iwl_fw_error_dump_prph** %9, align 8
  %74 = getelementptr inbounds %struct.iwl_fw_error_dump_prph, %struct.iwl_fw_error_dump_prph* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %76 = load %struct.iwl_prph_range*, %struct.iwl_prph_range** %6, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %76, i64 %77
  %79 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.iwl_prph_range*, %struct.iwl_prph_range** %6, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %81, i64 %82
  %84 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.iwl_prph_range*, %struct.iwl_prph_range** %6, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %86, i64 %87
  %89 = getelementptr inbounds %struct.iwl_prph_range, %struct.iwl_prph_range* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %85, %90
  %92 = add nsw i32 %91, 4
  %93 = load %struct.iwl_fw_error_dump_prph*, %struct.iwl_fw_error_dump_prph** %9, align 8
  %94 = getelementptr inbounds %struct.iwl_fw_error_dump_prph, %struct.iwl_fw_error_dump_prph* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @iwl_read_prph_block(%struct.iwl_trans* %75, i32 %80, i32 %92, i8* %96)
  %98 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %11, align 8
  %99 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %98, align 8
  %100 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %99)
  %101 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %11, align 8
  store %struct.iwl_fw_error_dump_data* %100, %struct.iwl_fw_error_dump_data** %101, align 8
  br label %102

102:                                              ; preds = %35
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %13, align 8
  br label %31

105:                                              ; preds = %31
  %106 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %107 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %106, i64* %12)
  br label %108

108:                                              ; preds = %105, %29, %22
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_read_prph_block(%struct.iwl_trans*, i32, i32, i8*) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
