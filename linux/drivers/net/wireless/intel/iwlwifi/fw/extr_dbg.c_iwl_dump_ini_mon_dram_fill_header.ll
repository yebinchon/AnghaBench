; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_dram_fill_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_dram_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_fw_ini_region_cfg = type { i32 }
%struct.iwl_fw_ini_monitor_dump = type { i32 }

@MON_BUFF_WRPTR_VER2 = common dso_local global i32 0, align 4
@MON_BUFF_CYCLE_CNT_VER2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported device family %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i8*)* @iwl_dump_ini_mon_dram_fill_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iwl_dump_ini_mon_dram_fill_header(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iwl_fw_ini_monitor_dump*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_region_cfg** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.iwl_fw_ini_monitor_dump*
  store %struct.iwl_fw_ini_monitor_dump* %14, %struct.iwl_fw_ini_monitor_dump** %8, align 8
  %15 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %25 [
    i32 128, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %3, %3
  %23 = load i32, i32* @MON_BUFF_WRPTR_VER2, align 4
  store i32 %23, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %24 = load i32, i32* @MON_BUFF_CYCLE_CNT_VER2, align 4
  store i32 %24, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %35

25:                                               ; preds = %3
  %26 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %27 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i8* null, i8** %4, align 8
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %37 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %6, align 8
  %38 = load %struct.iwl_fw_ini_monitor_dump*, %struct.iwl_fw_ini_monitor_dump** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i8* @iwl_dump_ini_mon_fill_header(%struct.iwl_fw_runtime* %36, %struct.iwl_fw_ini_region_cfg* %37, %struct.iwl_fw_ini_monitor_dump* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %35, %25
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i32 @IWL_ERR(%struct.iwl_fw_runtime*, i8*, i32) #1

declare dso_local i8* @iwl_dump_ini_mon_fill_header(%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_monitor_dump*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
