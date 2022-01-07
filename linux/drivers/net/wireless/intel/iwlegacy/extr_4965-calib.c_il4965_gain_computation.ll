; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_gain_computation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_gain_computation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_chain_noise_data }
%struct.il_chain_noise_data = type { i64*, i32, i32, i32* }
%struct.il_calib_diff_gain_cmd = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NUM_RX_CHAINS = common dso_local global i32 0, align 4
@CHAIN_NOISE_DELTA_GAIN_INIT_VAL = common dso_local global i64 0, align 8
@CHAIN_NOISE_MAX_DELTA_GAIN_CODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"delta_gain_codes: a %d b %d c %d\0A\00", align 1
@IL_PHY_CALIBRATE_DIFF_GAIN_CMD = common dso_local global i32 0, align 4
@C_PHY_CALIBRATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"fail sending cmd C_PHY_CALIBRATION\0A\00", align 1
@IL_CHAIN_NOISE_CALIBRATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i32*, i64, i32, i8*)* @il4965_gain_computation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_gain_computation(%struct.il_priv* %0, i32* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.il_chain_noise_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.il_calib_diff_gain_cmd, align 4
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  store %struct.il_chain_noise_data* %17, %struct.il_chain_noise_data** %13, align 8
  %18 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %19 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %106, %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @NUM_RX_CHAINS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %109

29:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  %30 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %31 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %98, label %38

38:                                               ; preds = %29
  %39 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %40 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHAIN_NOISE_DELTA_GAIN_INIT_VAL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %98

48:                                               ; preds = %38
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = mul nsw i32 %56, 10
  %58 = sdiv i32 %57, 15
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %63 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %61, i64* %67, align 8
  %68 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %69 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CHAIN_NOISE_MAX_DELTA_GAIN_CODE, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = call i64 @min(i64 %74, i8* %76)
  %78 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %79 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 %77, i64* %83, align 8
  %84 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %85 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, 4
  %92 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %93 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 %91, i64* %97, align 8
  br label %105

98:                                               ; preds = %38, %29
  %99 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %100 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %98, %48
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %25

109:                                              ; preds = %25
  %110 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %111 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %116 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %121 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i8*, ...) @D_CALIB(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %114, i64 %119, i64 %124)
  %126 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %127 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %169, label %130

130:                                              ; preds = %109
  %131 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %132 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %131, i32 0, i32 1
  store i32 1, i32* %132, align 8
  %133 = call i32 @memset(%struct.il_calib_diff_gain_cmd* %15, i32 0, i32 16)
  %134 = load i32, i32* @IL_PHY_CALIBRATE_DIFF_GAIN_CMD, align 4
  %135 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, %struct.il_calib_diff_gain_cmd* %15, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %138 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, %struct.il_calib_diff_gain_cmd* %15, i32 0, i32 0
  store i32 %142, i32* %143, align 4
  %144 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %145 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 1
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, %struct.il_calib_diff_gain_cmd* %15, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %152 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 2
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, %struct.il_calib_diff_gain_cmd* %15, i32 0, i32 2
  store i32 %156, i32* %157, align 4
  %158 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %159 = load i32, i32* @C_PHY_CALIBRATION, align 4
  %160 = call i32 @il_send_cmd_pdu(%struct.il_priv* %158, i32 %159, i32 16, %struct.il_calib_diff_gain_cmd* %15)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %130
  %164 = call i32 (i8*, ...) @D_CALIB(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %130
  %166 = load i32, i32* @IL_CHAIN_NOISE_CALIBRATED, align 4
  %167 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %13, align 8
  %168 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %109
  ret void
}

declare dso_local i64 @min(i64, i8*) #1

declare dso_local i32 @D_CALIB(i8*, ...) #1

declare dso_local i32 @memset(%struct.il_calib_diff_gain_cmd*, i32, i32) #1

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il_calib_diff_gain_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
