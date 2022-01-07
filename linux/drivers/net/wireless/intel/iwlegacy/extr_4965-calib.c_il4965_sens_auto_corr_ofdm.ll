; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_sens_auto_corr_ofdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_sens_auto_corr_ofdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_sensitivity_data, %struct.TYPE_2__ }
%struct.il_sensitivity_data = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.il_sensitivity_ranges* }
%struct.il_sensitivity_ranges = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@MAX_FA_OFDM = common dso_local global i32 0, align 4
@MIN_FA_OFDM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"norm FA %u > max FA %u)\0A\00", align 1
@AUTO_CORR_STEP_OFDM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"norm FA %u < min FA %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"min FA %u < norm FA %u < max FA %u OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32, i32)* @il4965_sens_auto_corr_ofdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_sens_auto_corr_ofdm(%struct.il_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.il_sensitivity_data*, align 8
  %12 = alloca %struct.il_sensitivity_ranges*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
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
  store %struct.il_sensitivity_data* null, %struct.il_sensitivity_data** %11, align 8
  %22 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %24, align 8
  store %struct.il_sensitivity_ranges* %25, %struct.il_sensitivity_ranges** %12, align 8
  %26 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 0
  store %struct.il_sensitivity_data* %27, %struct.il_sensitivity_data** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i8*, i32, i32, ...) @D_CALIB(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %36 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %12, align 8
  %41 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @min(i32 %43, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %48 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %50 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %12, align 8
  %55 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @min(i32 %57, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %62 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %64 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %12, align 8
  %69 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %7, align 4
  %73 = call i8* @min(i32 %71, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %76 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %78 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %7, align 4
  %82 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %12, align 8
  %83 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* %7, align 4
  %87 = call i8* @min(i32 %85, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %90 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %161

91:                                               ; preds = %3
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %155

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (i8*, i32, i32, ...) @D_CALIB(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %100 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %7, align 4
  %104 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %12, align 8
  %105 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* %7, align 4
  %109 = call i8* @max(i32 %107, i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %112 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %114 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %7, align 4
  %118 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %12, align 8
  %119 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* %7, align 4
  %123 = call i8* @max(i32 %121, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %126 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %128 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %7, align 4
  %132 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %12, align 8
  %133 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* %7, align 4
  %137 = call i8* @max(i32 %135, i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %140 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %142 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @AUTO_CORR_STEP_OFDM, align 4
  %145 = sub nsw i32 %143, %144
  store i32 %145, i32* %7, align 4
  %146 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %12, align 8
  %147 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %7, align 4
  %151 = call i8* @max(i32 %149, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %11, align 8
  %154 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  br label %160

155:                                              ; preds = %91
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 (i8*, i32, i32, ...) @D_CALIB(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %155, %95
  br label %161

161:                                              ; preds = %160, %31
  ret i32 0
}

declare dso_local i32 @D_CALIB(i8*, i32, i32, ...) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
