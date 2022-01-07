; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_given_ucode_8000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_given_ucode_8000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.fw_img = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"working with %s CPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Dual\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Single\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Original WFPM value = 0x%08X\0A\00", align 1
@WFPM_GP2 = common dso_local global i32 0, align 4
@RELEASE_CPU_RESET = common dso_local global i32 0, align 4
@RELEASE_CPU_RESET_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.fw_img*)* @iwl_pcie_load_given_ucode_8000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_load_given_ucode_8000(%struct.iwl_trans* %0, %struct.fw_img* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.fw_img*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.fw_img* %1, %struct.fw_img** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %9 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %10 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @IWL_DEBUG_FW(%struct.iwl_trans* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %17 = call i64 @iwl_pcie_dbg_on(%struct.iwl_trans* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %21 = call i32 @iwl_pcie_apply_destination(%struct.iwl_trans* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %25 = load i32, i32* @WFPM_GP2, align 4
  %26 = call i32 @iwl_read_prph(%struct.iwl_trans* %24, i32 %25)
  %27 = call i32 @IWL_DEBUG_POWER(%struct.iwl_trans* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %29 = load i32, i32* @WFPM_GP2, align 4
  %30 = call i32 @iwl_write_prph(%struct.iwl_trans* %28, i32 %29, i32 16843009)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %32 = load i32, i32* @RELEASE_CPU_RESET, align 4
  %33 = load i32, i32* @RELEASE_CPU_RESET_BIT, align 4
  %34 = call i32 @iwl_write_prph(%struct.iwl_trans* %31, i32 %32, i32 %33)
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %36 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %37 = call i32 @iwl_pcie_load_cpu_sections_8000(%struct.iwl_trans* %35, %struct.fw_img* %36, i32 1, i32* %7)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %22
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %44 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %45 = call i32 @iwl_pcie_load_cpu_sections_8000(%struct.iwl_trans* %43, %struct.fw_img* %44, i32 2, i32* %7)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_trans*, i8*, i8*) #1

declare dso_local i64 @iwl_pcie_dbg_on(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_apply_destination(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_POWER(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_load_cpu_sections_8000(%struct.iwl_trans*, %struct.fw_img*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
