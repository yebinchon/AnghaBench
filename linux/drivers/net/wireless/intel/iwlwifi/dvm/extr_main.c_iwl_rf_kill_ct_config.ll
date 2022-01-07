; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_rf_kill_ct_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_rf_kill_ct_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_ct_kill_config = type { i8*, i8*, i8* }
%struct.iwl_ct_kill_throttling_config = type { i8*, i8*, i8* }

@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT = common dso_local global i32 0, align 4
@REPLY_CT_KILL_CONFIG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"REPLY_CT_KILL_CONFIG_CMD failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"REPLY_CT_KILL_CONFIG_CMD succeeded, critical temperature enter is %d,exit is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"REPLY_CT_KILL_CONFIG_CMD succeeded, critical temperature is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwl_rf_kill_ct_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_rf_kill_ct_config(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_ct_kill_config, align 8
  %4 = alloca %struct.iwl_ct_kill_throttling_config, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %10 = load i32, i32* @CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT, align 4
  %11 = call i32 @iwl_write32(i32 %8, i32 %9, i32 %10)
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %1
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.iwl_ct_kill_throttling_config, %struct.iwl_ct_kill_throttling_config* %4, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.iwl_ct_kill_throttling_config, %struct.iwl_ct_kill_throttling_config* %4, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %35 = load i32, i32* @REPLY_CT_KILL_CONFIG_CMD, align 4
  %36 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %34, i32 %35, i32 0, i32 24, %struct.iwl_ct_kill_throttling_config* %4)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %41 = call i32 @IWL_ERR(%struct.iwl_priv* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %53

42:                                               ; preds = %21
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %43, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %42, %39
  br label %78

54:                                               ; preds = %1
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = getelementptr inbounds %struct.iwl_ct_kill_config, %struct.iwl_ct_kill_config* %3, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %62 = load i32, i32* @REPLY_CT_KILL_CONFIG_CMD, align 4
  %63 = bitcast %struct.iwl_ct_kill_config* %3 to %struct.iwl_ct_kill_throttling_config*
  %64 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %61, i32 %62, i32 0, i32 24, %struct.iwl_ct_kill_throttling_config* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %69 = call i32 @IWL_ERR(%struct.iwl_priv* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %77

70:                                               ; preds = %54
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %73 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %71, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %70, %67
  br label %78

78:                                               ; preds = %77, %53
  ret void
}

declare dso_local i32 @iwl_write32(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_ct_kill_throttling_config*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
