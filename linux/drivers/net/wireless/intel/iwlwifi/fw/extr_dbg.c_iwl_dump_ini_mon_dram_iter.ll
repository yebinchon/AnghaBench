; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_dram_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_dram_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iwl_fw_ini_region_cfg = type { i32 }
%struct.iwl_fw_ini_error_dump_range = type { i32, i32, i32 }

@MON_BUFF_BASE_ADDR_VER2 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i8*, i32)* @iwl_dump_ini_mon_dram_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dump_ini_mon_dram_iter(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_fw_runtime*, align 8
  %7 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_fw_ini_error_dump_range*, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %6, align 8
  store %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_region_cfg** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.iwl_fw_ini_error_dump_range*
  store %struct.iwl_fw_ini_error_dump_range* %13, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %14 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* @MON_BUFF_BASE_ADDR_VER2, align 4
  %18 = call i32 @iwl_read_umac_prph(%struct.TYPE_6__* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 1515870810
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %76

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @cpu_to_le64(i32 %25)
  %27 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %28 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %42 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %44 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %58 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32 %45, i32 %56, i32 %67)
  %69 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %70 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = add i64 12, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %24, %21
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @iwl_read_umac_prph(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
