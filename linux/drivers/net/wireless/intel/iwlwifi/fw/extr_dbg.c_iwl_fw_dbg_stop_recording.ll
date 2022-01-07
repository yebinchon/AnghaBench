; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_stop_recording.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_stop_recording.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_fw_dbg_params = type { i8*, i8* }

@IWL_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@MON_BUFF_SAMPLE_CTL = common dso_local global i32 0, align 4
@DBGC_IN_SAMPLE = common dso_local global i32 0, align 4
@DBGC_OUT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_fw_dbg_params*)* @iwl_fw_dbg_stop_recording to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_dbg_stop_recording(%struct.iwl_trans* %0, %struct.iwl_fw_dbg_params* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_fw_dbg_params*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_fw_dbg_params* %1, %struct.iwl_fw_dbg_params** %4, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IWL_DEVICE_FAMILY_7000, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %14 = load i32, i32* @MON_BUFF_SAMPLE_CTL, align 4
  %15 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %13, i32 %14, i32 256)
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.iwl_fw_dbg_params*, %struct.iwl_fw_dbg_params** %4, align 8
  %18 = icmp ne %struct.iwl_fw_dbg_params* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %21 = load i32, i32* @DBGC_IN_SAMPLE, align 4
  %22 = call i8* @iwl_read_umac_prph(%struct.iwl_trans* %20, i32 %21)
  %23 = load %struct.iwl_fw_dbg_params*, %struct.iwl_fw_dbg_params** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_fw_dbg_params, %struct.iwl_fw_dbg_params* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %26 = load i32, i32* @DBGC_OUT_CTRL, align 4
  %27 = call i8* @iwl_read_umac_prph(%struct.iwl_trans* %25, i32 %26)
  %28 = load %struct.iwl_fw_dbg_params*, %struct.iwl_fw_dbg_params** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_fw_dbg_params, %struct.iwl_fw_dbg_params* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %19, %16
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %32 = load i32, i32* @DBGC_IN_SAMPLE, align 4
  %33 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %31, i32 %32, i32 0)
  %34 = call i32 @usleep_range(i32 700, i32 1000)
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %36 = load i32, i32* @DBGC_OUT_CTRL, align 4
  %37 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i8* @iwl_read_umac_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write_umac_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
