; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_init_sensitivity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_init_sensitivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_4__*, %struct.iwl_sensitivity_data, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_sensitivity_data = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64*, i64, i64, i64, i8*, i8*, i64 }
%struct.TYPE_3__ = type { %struct.iwl_sensitivity_ranges* }
%struct.iwl_sensitivity_ranges = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IWL_SENSITIVITY_CALIB_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Start iwl_init_sensitivity\0A\00", align 1
@IWL_FA_TOO_MANY = common dso_local global i8* null, align 8
@NRG_NUM_PREV_STAT_L = common dso_local global i32 0, align 4
@AUTO_CORR_CCK_MIN_VAL_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"<<return 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_init_sensitivity(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_sensitivity_data*, align 8
  %6 = alloca %struct.iwl_sensitivity_ranges*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.iwl_sensitivity_data* null, %struct.iwl_sensitivity_data** %5, align 8
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %9, align 8
  store %struct.iwl_sensitivity_ranges* %10, %struct.iwl_sensitivity_ranges** %6, align 8
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IWL_SENSITIVITY_CALIB_DISABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %153

18:                                               ; preds = %1
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %20 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 2
  store %struct.iwl_sensitivity_data* %22, %struct.iwl_sensitivity_data** %5, align 8
  %23 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %24 = icmp eq %struct.iwl_sensitivity_ranges* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %153

26:                                               ; preds = %18
  %27 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %28 = call i32 @memset(%struct.iwl_sensitivity_data* %27, i32 0, i32 144)
  %29 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %29, i32 0, i32 22
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** @IWL_FA_TOO_MANY, align 8
  %32 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %32, i32 0, i32 21
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @IWL_FA_TOO_MANY, align 8
  %35 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %36 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %35, i32 0, i32 20
  store i8* %34, i8** %36, align 8
  %37 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %37, i32 0, i32 19
  store i64 0, i64* %38, align 8
  %39 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %39, i32 0, i32 18
  store i64 0, i64* %40, align 8
  %41 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %42 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %41, i32 0, i32 17
  store i64 0, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %53, %26
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %47, i32 0, i32 16
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %43

56:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %68, %56
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @NRG_NUM_PREV_STAT_L, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %63 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %62, i32 0, i32 15
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %73 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %76 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %75, i32 0, i32 14
  store i32 %74, i32* %76, align 8
  %77 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %78 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %81 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %80, i32 0, i32 13
  store i32 %79, i32* %81, align 4
  %82 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %83 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %86 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %85, i32 0, i32 12
  store i32 %84, i32* %86, align 8
  %87 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %88 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %91 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %90, i32 0, i32 11
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @AUTO_CORR_CCK_MIN_VAL_DEF, align 4
  %93 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %94 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %93, i32 0, i32 10
  store i32 %92, i32* %94, align 8
  %95 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %96 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %99 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 4
  %100 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %101 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %104 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 8
  %105 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %106 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %109 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %111 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %114 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %116 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %119 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load %struct.iwl_sensitivity_ranges*, %struct.iwl_sensitivity_ranges** %6, align 8
  %121 = getelementptr inbounds %struct.iwl_sensitivity_ranges, %struct.iwl_sensitivity_ranges* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %124 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %126 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %128 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %130 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %132 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %134 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %71
  %140 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %141 = call i32 @iwl_enhance_sensitivity_write(%struct.iwl_priv* %140)
  %142 = load i32, i32* %3, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %3, align 4
  br label %149

144:                                              ; preds = %71
  %145 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %146 = call i32 @iwl_sensitivity_write(%struct.iwl_priv* %145)
  %147 = load i32, i32* %3, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %151 = load i32, i32* %3, align 4
  %152 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %150, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %25, %17
  ret void
}

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @memset(%struct.iwl_sensitivity_data*, i32, i32) #1

declare dso_local i32 @iwl_enhance_sensitivity_write(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_sensitivity_write(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
