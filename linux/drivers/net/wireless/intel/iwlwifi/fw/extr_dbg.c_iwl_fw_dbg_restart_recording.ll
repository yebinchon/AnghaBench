; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_restart_recording.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_restart_recording.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_fw_dbg_params = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@MON_BUFF_SAMPLE_CTL = common dso_local global i32 0, align 4
@DBGC_IN_SAMPLE = common dso_local global i32 0, align 4
@DBGC_OUT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_fw_dbg_params*)* @iwl_fw_dbg_restart_recording to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fw_dbg_restart_recording(%struct.iwl_trans* %0, %struct.iwl_fw_dbg_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_fw_dbg_params*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_fw_dbg_params* %1, %struct.iwl_fw_dbg_params** %5, align 8
  %6 = load %struct.iwl_fw_dbg_params*, %struct.iwl_fw_dbg_params** %5, align 8
  %7 = icmp ne %struct.iwl_fw_dbg_params* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IWL_DEVICE_FAMILY_7000, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %21 = load i32, i32* @MON_BUFF_SAMPLE_CTL, align 4
  %22 = call i32 @iwl_clear_bits_prph(%struct.iwl_trans* %20, i32 %21, i32 256)
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %24 = load i32, i32* @MON_BUFF_SAMPLE_CTL, align 4
  %25 = call i32 @iwl_clear_bits_prph(%struct.iwl_trans* %23, i32 %24, i32 1)
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %27 = load i32, i32* @MON_BUFF_SAMPLE_CTL, align 4
  %28 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %26, i32 %27, i32 1)
  br label %42

29:                                               ; preds = %11
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %31 = load i32, i32* @DBGC_IN_SAMPLE, align 4
  %32 = load %struct.iwl_fw_dbg_params*, %struct.iwl_fw_dbg_params** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_fw_dbg_params, %struct.iwl_fw_dbg_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %30, i32 %31, i32 %34)
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %37 = load i32, i32* @DBGC_OUT_CTRL, align 4
  %38 = load %struct.iwl_fw_dbg_params*, %struct.iwl_fw_dbg_params** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_fw_dbg_params, %struct.iwl_fw_dbg_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %29, %19
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %8
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @iwl_clear_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_umac_prph(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
