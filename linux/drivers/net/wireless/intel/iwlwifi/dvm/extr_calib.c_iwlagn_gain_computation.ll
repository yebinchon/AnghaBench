; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwlagn_gain_computation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwlagn_gain_computation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_2__*, %struct.iwl_chain_noise_data }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_chain_noise_data = type { i32*, i32, i32, i64* }
%struct.iwl_calib_chain_noise_gain_cmd = type { i32, i32, i32 }

@NUM_RX_CHAINS = common dso_local global i32 0, align 4
@CHAIN_NOISE_MAX_DELTA_GAIN_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Delta gains: ANT_B = %d  ANT_C = %d\0A\00", align 1
@REPLY_PHY_CALIBRATION_CMD = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@IWL_CHAIN_NOISE_CALIBRATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i64*, i32)* @iwlagn_gain_computation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_gain_computation(%struct.iwl_priv* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_chain_noise_data*, align 8
  %10 = alloca %struct.iwl_calib_chain_noise_gain_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @NUM_RX_CHAINS, align 4
  %12 = zext i32 %11 to i64
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 2
  store %struct.iwl_chain_noise_data* %14, %struct.iwl_chain_noise_data** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %80, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NUM_RX_CHAINS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %17
  %22 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %23 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %22, i32 0, i32 3
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %32 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 0, i32* %36, align 4
  br label %80

37:                                               ; preds = %21
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64*, i64** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64*, i64** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = sub nsw i32 %48, %54
  %56 = mul nsw i32 %42, %55
  %57 = sdiv i32 %56, 1500
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @abs(i32 %58) #3
  %60 = load i32, i32* @CHAIN_NOISE_MAX_DELTA_GAIN_CODE, align 4
  %61 = call i32 @min(i32 %59, i32 %60)
  %62 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %63 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %37
  %71 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %72 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, 4
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %70, %37
  br label %80

80:                                               ; preds = %79, %30
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %17

83:                                               ; preds = %17
  %84 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %85 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %86 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %91 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_priv* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %94)
  %96 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %97 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %128, label %100

100:                                              ; preds = %83
  %101 = call i32 @memset(%struct.iwl_calib_chain_noise_gain_cmd* %10, i32 0, i32 12)
  %102 = getelementptr inbounds %struct.iwl_calib_chain_noise_gain_cmd, %struct.iwl_calib_chain_noise_gain_cmd* %10, i32 0, i32 2
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %104 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @iwl_set_calib_hdr(i32* %102, i32 %105)
  %107 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %108 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.iwl_calib_chain_noise_gain_cmd, %struct.iwl_calib_chain_noise_gain_cmd* %10, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %114 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.iwl_calib_chain_noise_gain_cmd, %struct.iwl_calib_chain_noise_gain_cmd* %10, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %120 = load i32, i32* @REPLY_PHY_CALIBRATION_CMD, align 4
  %121 = load i32, i32* @CMD_ASYNC, align 4
  %122 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %119, i32 %120, i32 %121, i32 12, %struct.iwl_calib_chain_noise_gain_cmd* %10)
  %123 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %124 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %123, i32 0, i32 1
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* @IWL_CHAIN_NOISE_CALIBRATED, align 4
  %126 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %127 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %100, %83
  ret void
}

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.iwl_calib_chain_noise_gain_cmd*, i32, i32) #1

declare dso_local i32 @iwl_set_calib_hdr(i32*, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_calib_chain_noise_gain_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
