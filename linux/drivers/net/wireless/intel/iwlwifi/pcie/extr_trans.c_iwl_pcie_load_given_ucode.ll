; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_given_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_given_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.iwl_trans = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.fw_img = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"working with %s CPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Dual\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Single\00", align 1
@LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR = common dso_local global i32 0, align 4
@LMPM_SECURE_CPU2_HDR_MEM_SPACE = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IWL_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@MON_BUFF_BASE_ADDR = common dso_local global i32 0, align 4
@MON_BUFF_END_ADDR = common dso_local global i32 0, align 4
@CSR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.fw_img*)* @iwl_pcie_load_given_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_load_given_ucode(%struct.iwl_trans* %0, %struct.fw_img* %1) #0 {
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
  %17 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %18 = call i32 @iwl_pcie_load_cpu_sections(%struct.iwl_trans* %16, %struct.fw_img* %17, i32 1, i32* %7)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %109

23:                                               ; preds = %2
  %24 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %25 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %30 = load i32, i32* @LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR, align 4
  %31 = load i32, i32* @LMPM_SECURE_CPU2_HDR_MEM_SPACE, align 4
  %32 = call i32 @iwl_write_prph(%struct.iwl_trans* %29, i32 %30, i32 %31)
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %34 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %35 = call i32 @iwl_pcie_load_cpu_sections(%struct.iwl_trans* %33, %struct.fw_img* %34, i32 2, i32* %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %109

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %95

44:                                               ; preds = %41
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IWL_DEVICE_FAMILY_7000, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %44
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %54 = call i32 @iwl_pcie_alloc_fw_monitor(%struct.iwl_trans* %53, i32 0)
  %55 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %52
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %65 = load i32, i32* @MON_BUFF_BASE_ADDR, align 4
  %66 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %67 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 4
  %74 = call i32 @iwl_write_prph(%struct.iwl_trans* %64, i32 %65, i32 %73)
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %76 = load i32, i32* @MON_BUFF_END_ADDR, align 4
  %77 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %78 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %85 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %83, %90
  %92 = ashr i32 %91, 4
  %93 = call i32 @iwl_write_prph(%struct.iwl_trans* %75, i32 %76, i32 %92)
  br label %94

94:                                               ; preds = %63, %52
  br label %103

95:                                               ; preds = %44, %41
  %96 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %97 = call i64 @iwl_pcie_dbg_on(%struct.iwl_trans* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %101 = call i32 @iwl_pcie_apply_destination(%struct.iwl_trans* %100)
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %94
  %104 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %105 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %104)
  %106 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %107 = load i32, i32* @CSR_RESET, align 4
  %108 = call i32 @iwl_write32(%struct.iwl_trans* %106, i32 %107, i32 0)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %103, %38, %21
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_trans*, i8*, i8*) #1

declare dso_local i32 @iwl_pcie_load_cpu_sections(%struct.iwl_trans*, %struct.fw_img*, i32, i32*) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_alloc_fw_monitor(%struct.iwl_trans*, i32) #1

declare dso_local i64 @iwl_pcie_dbg_on(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_apply_destination(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
