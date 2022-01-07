; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_chain_noise_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_chain_noise_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_chain_noise_data }
%struct.il_chain_noise_data = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.il_calib_diff_gain_cmd = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IL_CHAIN_NOISE_ALIVE = common dso_local global i64 0, align 8
@IL_PHY_CALIBRATE_DIFF_GAIN_CMD = common dso_local global i32 0, align 4
@C_PHY_CALIBRATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not send C_PHY_CALIBRATION\0A\00", align 1
@IL_CHAIN_NOISE_ACCUMULATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Run chain_noise_calibrate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_chain_noise_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_chain_noise_reset(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca %struct.il_chain_noise_data*, align 8
  %4 = alloca %struct.il_calib_diff_gain_cmd, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 0
  store %struct.il_chain_noise_data* %6, %struct.il_chain_noise_data** %3, align 8
  %7 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %3, align 8
  %8 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IL_CHAIN_NOISE_ALIVE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %1
  %13 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %14 = call i64 @il_is_any_associated(%struct.il_priv* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %3, align 8
  %18 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %3, align 8
  %20 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %3, align 8
  %22 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %3, align 8
  %24 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %3, align 8
  %26 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %3, align 8
  %28 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %3, align 8
  %30 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = call i32 @memset(%struct.il_calib_diff_gain_cmd* %4, i32 0, i32 32)
  %32 = load i32, i32* @IL_PHY_CALIBRATE_DIFF_GAIN_CMD, align 4
  %33 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, %struct.il_calib_diff_gain_cmd* %4, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, %struct.il_calib_diff_gain_cmd* %4, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, %struct.il_calib_diff_gain_cmd* %4, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, %struct.il_calib_diff_gain_cmd* %4, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %39 = load i32, i32* @C_PHY_CALIBRATION, align 4
  %40 = call i64 @il_send_cmd_pdu(%struct.il_priv* %38, i32 %39, i32 32, %struct.il_calib_diff_gain_cmd* %4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %16
  %43 = call i32 @IL_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i64, i64* @IL_CHAIN_NOISE_ACCUMULATE, align 8
  %46 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %3, align 8
  %47 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = call i32 @D_CALIB(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %12, %1
  ret void
}

declare dso_local i64 @il_is_any_associated(%struct.il_priv*) #1

declare dso_local i32 @memset(%struct.il_calib_diff_gain_cmd*, i32, i32) #1

declare dso_local i64 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il_calib_diff_gain_cmd*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @D_CALIB(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
