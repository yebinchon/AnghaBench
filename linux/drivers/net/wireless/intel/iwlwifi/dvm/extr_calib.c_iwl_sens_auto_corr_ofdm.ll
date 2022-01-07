; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_sens_auto_corr_ofdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_sens_auto_corr_ofdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.iwl_sensitivity_data, %struct.TYPE_2__ }
%struct.iwl_sensitivity_data = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.iwl_sensitivity_ranges* }
%struct.iwl_sensitivity_ranges = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@MAX_FA_OFDM = common dso_local global i32 0, align 4
@MIN_FA_OFDM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"norm FA %u > max FA %u)\0A\00", align 1
@AUTO_CORR_STEP_OFDM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"norm FA %u < min FA %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"min FA %u < norm FA %u < max FA %u OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i32, i32)* @iwl_sens_auto_corr_ofdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_sens_auto_corr_ofdm(%struct.iwl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_sensitivity_data*, align 8
  %12 = alloca %struct.iwl_sensitivity_ranges*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 200
  %15 = mul nsw i32 %14, 1024
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @MAX_FA_OFDM, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @MIN_FA_OFDM, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  store %struct.iwl_sensitivity_data* null, %struct.iwl_sensitivity_data** %11, align 8
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %24, align 8
  store %struct.iwl_sensitivity_ranges* %25, %struct.iwl_sensitivity_ranges** %12, align 8
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  store %struct.iwl_sensitivity_data* %27, %struct.iwl_sensitivity_data** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %92

31:                                               ; preds = %3
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %37 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %12, align 8
  %42 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @min(i32 %44, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %49 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %51 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %12, align 8
  %56 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = call i8* @min(i32 %58, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %63 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %65 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %7, align 4
  %69 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %12, align 8
  %70 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %7, align 4
  %74 = call i8* @min(i32 %72, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %77 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %79 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %7, align 4
  %83 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %12, align 8
  %84 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %7, align 4
  %88 = call i8* @min(i32 %86, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %91 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %164

92:                                               ; preds = %3
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %157

96:                                               ; preds = %92
  %97 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %102 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %7, align 4
  %106 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %12, align 8
  %107 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %7, align 4
  %111 = call i8* @max(i32 %109, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %114 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %116 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %7, align 4
  %120 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %12, align 8
  %121 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %7, align 4
  %125 = call i8* @max(i32 %123, i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %128 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %130 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %7, align 4
  %134 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %12, align 8
  %135 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* %7, align 4
  %139 = call i8* @max(i32 %137, i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %142 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %144 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %7, align 4
  %148 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %12, align 8
  %149 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* %7, align 4
  %153 = call i8* @max(i32 %151, i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %11, align 8
  %156 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  br label %163

157:                                              ; preds = %92
  %158 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %158, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %96
  br label %164

164:                                              ; preds = %163, %31
  ret i32 0
}

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, i32, i32, ...) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
