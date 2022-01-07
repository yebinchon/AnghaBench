; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_fill_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.iwl_fw_ini_region_cfg = type { i32 }
%struct.iwl_fw_ini_monitor_dump = type { i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [30 x i8] c"Failed to get monitor header\0A\00", align 1
@IWL_INI_DUMP_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_monitor_dump*, i32, i32, i32, i32)* @iwl_dump_ini_mon_fill_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iwl_dump_ini_mon_fill_header(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_monitor_dump* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iwl_fw_runtime*, align 8
  %10 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  %11 = alloca %struct.iwl_fw_ini_monitor_dump*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %9, align 8
  store %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_region_cfg** %10, align 8
  store %struct.iwl_fw_ini_monitor_dump* %2, %struct.iwl_fw_ini_monitor_dump** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @iwl_trans_grab_nic_access(i32 %21, i64* %18)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %9, align 8
  %26 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %8, align 8
  br label %62

27:                                               ; preds = %7
  %28 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %9, align 8
  %29 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @iwl_read_prph_no_grab(i32 %30, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %9, align 8
  %34 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @iwl_read_prph_no_grab(i32 %35, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %9, align 8
  %39 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @iwl_trans_release_nic_access(i32 %40, i64* %18)
  %42 = load i32, i32* @IWL_INI_DUMP_VER, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.iwl_fw_ini_monitor_dump*, %struct.iwl_fw_ini_monitor_dump** %11, align 8
  %45 = getelementptr inbounds %struct.iwl_fw_ini_monitor_dump, %struct.iwl_fw_ini_monitor_dump* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %47, %48
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.iwl_fw_ini_monitor_dump*, %struct.iwl_fw_ini_monitor_dump** %11, align 8
  %52 = getelementptr inbounds %struct.iwl_fw_ini_monitor_dump, %struct.iwl_fw_ini_monitor_dump* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %15, align 4
  %55 = and i32 %53, %54
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.iwl_fw_ini_monitor_dump*, %struct.iwl_fw_ini_monitor_dump** %11, align 8
  %58 = getelementptr inbounds %struct.iwl_fw_ini_monitor_dump, %struct.iwl_fw_ini_monitor_dump* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.iwl_fw_ini_monitor_dump*, %struct.iwl_fw_ini_monitor_dump** %11, align 8
  %60 = getelementptr inbounds %struct.iwl_fw_ini_monitor_dump, %struct.iwl_fw_ini_monitor_dump* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %27, %24
  %63 = load i8*, i8** %8, align 8
  ret i8* %63
}

declare dso_local i32 @iwl_trans_grab_nic_access(i32, i64*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_fw_runtime*, i8*) #1

declare dso_local i32 @iwl_read_prph_no_grab(i32, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(i32, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
