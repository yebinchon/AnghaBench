; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwl_send_calib_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwl_send_calib_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_calib_cfg_cmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.iwl_host_cmd = type { i32, i32, i32 }

@CALIBRATION_CFG_CMD = common dso_local global i32 0, align 4
@IWL_CALIB_INIT_CFG_ALL = common dso_local global i8* null, align 8
@IWL_CALIB_CFG_FLAG_SEND_COMPLETE_NTFY_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_send_calib_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_calib_cfg(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_calib_cfg_cmd, align 8
  %4 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %4, i32 0, i32 0
  %6 = ptrtoint %struct.iwl_calib_cfg_cmd* %3 to i32
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %4, i32 0, i32 1
  store i32 32, i32* %7, align 4
  %8 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %4, i32 0, i32 2
  %9 = load i32, i32* @CALIBRATION_CFG_CMD, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @memset(%struct.iwl_calib_cfg_cmd* %3, i32 0, i32 32)
  %11 = load i8*, i8** @IWL_CALIB_INIT_CFG_ALL, align 8
  %12 = getelementptr inbounds %struct.iwl_calib_cfg_cmd, %struct.iwl_calib_cfg_cmd* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** @IWL_CALIB_INIT_CFG_ALL, align 8
  %16 = getelementptr inbounds %struct.iwl_calib_cfg_cmd, %struct.iwl_calib_cfg_cmd* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i8* %15, i8** %18, align 8
  %19 = load i8*, i8** @IWL_CALIB_INIT_CFG_ALL, align 8
  %20 = getelementptr inbounds %struct.iwl_calib_cfg_cmd, %struct.iwl_calib_cfg_cmd* %3, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @IWL_CALIB_CFG_FLAG_SEND_COMPLETE_NTFY_MSK, align 4
  %24 = getelementptr inbounds %struct.iwl_calib_cfg_cmd, %struct.iwl_calib_cfg_cmd* %3, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %27 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %26, %struct.iwl_host_cmd* %4)
  ret i32 %27
}

declare dso_local i32 @memset(%struct.iwl_calib_cfg_cmd*, i32, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
