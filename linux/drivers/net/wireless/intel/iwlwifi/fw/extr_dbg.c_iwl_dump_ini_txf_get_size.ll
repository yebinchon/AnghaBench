; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_txf_get_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_txf_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iwl_txf_iter_data }
%struct.iwl_txf_iter_data = type { i32 }
%struct.iwl_fw_ini_region_cfg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*)* @iwl_dump_ini_txf_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dump_ini_txf_get_size(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  %5 = alloca %struct.iwl_txf_iter_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_region_cfg** %4, align 8
  %8 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.iwl_txf_iter_data* %10, %struct.iwl_txf_iter_data** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 4, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %41, %2
  %21 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %22 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @iwl_ini_txf_iter(%struct.iwl_fw_runtime* %21, %struct.iwl_fw_ini_region_cfg* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %26
  br label %20

42:                                               ; preds = %20
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @iwl_ini_txf_iter(%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
