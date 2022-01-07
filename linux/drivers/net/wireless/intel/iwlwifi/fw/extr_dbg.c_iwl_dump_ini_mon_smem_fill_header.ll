; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_smem_fill_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_smem_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.iwl_cfg* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_cfg = type { i32, i32, i32, i32 }
%struct.iwl_fw_ini_region_cfg = type { i32 }
%struct.iwl_fw_ini_monitor_dump = type { i32 }

@IWL_DEVICE_FAMILY_9000 = common dso_local global i64 0, align 8
@IWL_DEVICE_FAMILY_22000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unsupported device family %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i8*)* @iwl_dump_ini_mon_smem_fill_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iwl_dump_ini_mon_smem_fill_header(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iwl_fw_ini_monitor_dump*, align 8
  %9 = alloca %struct.iwl_cfg*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_region_cfg** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.iwl_fw_ini_monitor_dump*
  store %struct.iwl_fw_ini_monitor_dump* %11, %struct.iwl_fw_ini_monitor_dump** %8, align 8
  %12 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.iwl_cfg*, %struct.iwl_cfg** %15, align 8
  store %struct.iwl_cfg* %16, %struct.iwl_cfg** %9, align 8
  %17 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IWL_DEVICE_FAMILY_9000, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %3
  %27 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IWL_DEVICE_FAMILY_22000, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %38 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i8* null, i8** %4, align 8
  br label %63

46:                                               ; preds = %26, %3
  %47 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %48 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %6, align 8
  %49 = load %struct.iwl_fw_ini_monitor_dump*, %struct.iwl_fw_ini_monitor_dump** %8, align 8
  %50 = load %struct.iwl_cfg*, %struct.iwl_cfg** %9, align 8
  %51 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iwl_cfg*, %struct.iwl_cfg** %9, align 8
  %54 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iwl_cfg*, %struct.iwl_cfg** %9, align 8
  %57 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iwl_cfg*, %struct.iwl_cfg** %9, align 8
  %60 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @iwl_dump_ini_mon_fill_header(%struct.iwl_fw_runtime* %47, %struct.iwl_fw_ini_region_cfg* %48, %struct.iwl_fw_ini_monitor_dump* %49, i32 %52, i32 %55, i32 %58, i32 %61)
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %46, %36
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local i32 @IWL_ERR(%struct.iwl_fw_runtime*, i8*, i64) #1

declare dso_local i8* @iwl_dump_ini_mon_fill_header(%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_monitor_dump*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
