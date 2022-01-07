; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_prepare_legacy_sensitivity_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_prepare_legacy_sensitivity_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_sensitivity_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@HD_AUTO_CORR32_X4_TH_ADD_MIN_IDX = common dso_local global i64 0, align 8
@HD_AUTO_CORR32_X4_TH_ADD_MIN_MRC_IDX = common dso_local global i64 0, align 8
@HD_AUTO_CORR32_X1_TH_ADD_MIN_IDX = common dso_local global i64 0, align 8
@HD_AUTO_CORR32_X1_TH_ADD_MIN_MRC_IDX = common dso_local global i64 0, align 8
@HD_AUTO_CORR40_X4_TH_ADD_MIN_IDX = common dso_local global i64 0, align 8
@HD_AUTO_CORR40_X4_TH_ADD_MIN_MRC_IDX = common dso_local global i64 0, align 8
@HD_MIN_ENERGY_CCK_DET_IDX = common dso_local global i64 0, align 8
@HD_MIN_ENERGY_OFDM_DET_IDX = common dso_local global i64 0, align 8
@HD_BARKER_CORR_TH_ADD_MIN_IDX = common dso_local global i64 0, align 8
@HD_BARKER_CORR_TH_ADD_MIN_MRC_IDX = common dso_local global i64 0, align 8
@HD_OFDM_ENERGY_TH_IN_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"ofdm: ac %u mrc %u x1 %u mrc_x1 %u thresh %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cck: ac %u mrc %u thresh %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_sensitivity_data*, i32*)* @il4965_prepare_legacy_sensitivity_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_prepare_legacy_sensitivity_tbl(%struct.il_priv* %0, %struct.il_sensitivity_data* %1, i32* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_sensitivity_data*, align 8
  %6 = alloca i32*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_sensitivity_data* %1, %struct.il_sensitivity_data** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %8 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @cpu_to_le16(i32 %10)
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* @HD_AUTO_CORR32_X4_TH_ADD_MIN_IDX, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %16 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @cpu_to_le16(i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* @HD_AUTO_CORR32_X4_TH_ADD_MIN_MRC_IDX, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %24 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* @HD_AUTO_CORR32_X1_TH_ADD_MIN_IDX, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %32 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* @HD_AUTO_CORR32_X1_TH_ADD_MIN_MRC_IDX, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %40 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* @HD_AUTO_CORR40_X4_TH_ADD_MIN_IDX, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %48 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @cpu_to_le16(i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* @HD_AUTO_CORR40_X4_TH_ADD_MIN_MRC_IDX, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %56 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* @HD_MIN_ENERGY_CCK_DET_IDX, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %64 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @cpu_to_le16(i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* @HD_MIN_ENERGY_OFDM_DET_IDX, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %72 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cpu_to_le16(i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* @HD_BARKER_CORR_TH_ADD_MIN_IDX, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %74, i32* %77, align 4
  %78 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %79 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cpu_to_le16(i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* @HD_BARKER_CORR_TH_ADD_MIN_MRC_IDX, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %86 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @cpu_to_le16(i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* @HD_OFDM_ENERGY_TH_IN_IDX, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %93 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %96 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %99 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %102 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %105 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, i64, i64, i64, ...) @D_CALIB(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %94, i64 %97, i64 %100, i64 %103, i64 %106)
  %108 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %109 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %112 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %115 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i8*, i64, i64, i64, ...) @D_CALIB(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %113, i64 %116)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @D_CALIB(i8*, i64, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
