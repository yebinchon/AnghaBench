; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_paging_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_paging_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.iwl_fw_ini_region_cfg = type { i32 }
%struct.iwl_fw_ini_error_dump_range = type { i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i8*, i32)* @iwl_dump_ini_paging_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dump_ini_paging_iter(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1, i8* %2, i32 %3) #0 {
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
  %12 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %22 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @_iwl_dump_ini_paging_iter(%struct.iwl_fw_runtime* %21, %struct.iwl_fw_ini_region_cfg* %22, i8* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %71

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to %struct.iwl_fw_ini_error_dump_range*
  store %struct.iwl_fw_ini_error_dump_range* %28, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %29 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %43 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %47 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %49 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @memcpy(i32 %50, i32 %61, i32 %62)
  %64 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %65 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @le32_to_cpu(i8* %66)
  %68 = sext i32 %67 to i64
  %69 = add i64 24, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %26, %20
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @_iwl_dump_ini_paging_iter(%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
