; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_init_sensitivity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_init_sensitivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_sensitivity_data, i64, %struct.TYPE_2__ }
%struct.il_sensitivity_data = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64*, i64, i64, i64, i8*, i8*, i64 }
%struct.TYPE_2__ = type { %struct.il_sensitivity_ranges* }
%struct.il_sensitivity_ranges = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Start il4965_init_sensitivity\0A\00", align 1
@IL_FA_TOO_MANY = common dso_local global i8* null, align 8
@NRG_NUM_PREV_STAT_L = common dso_local global i32 0, align 4
@AUTO_CORR_CCK_MIN_VAL_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"<<return 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_init_sensitivity(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_sensitivity_data*, align 8
  %6 = alloca %struct.il_sensitivity_ranges*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.il_sensitivity_data* null, %struct.il_sensitivity_data** %5, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %9, align 8
  store %struct.il_sensitivity_ranges* %10, %struct.il_sensitivity_ranges** %6, align 8
  %11 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %136

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @D_CALIB(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  store %struct.il_sensitivity_data* %19, %struct.il_sensitivity_data** %5, align 8
  %20 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %21 = icmp eq %struct.il_sensitivity_ranges* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %136

23:                                               ; preds = %16
  %24 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %25 = call i32 @memset(%struct.il_sensitivity_data* %24, i32 0, i32 144)
  %26 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %27 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %26, i32 0, i32 22
  store i64 0, i64* %27, align 8
  %28 = load i8*, i8** @IL_FA_TOO_MANY, align 8
  %29 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %30 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %29, i32 0, i32 21
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @IL_FA_TOO_MANY, align 8
  %32 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %33 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %32, i32 0, i32 20
  store i8* %31, i8** %33, align 8
  %34 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %35 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %34, i32 0, i32 19
  store i64 0, i64* %35, align 8
  %36 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %37 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %36, i32 0, i32 18
  store i64 0, i64* %37, align 8
  %38 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %39 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %38, i32 0, i32 17
  store i64 0, i64* %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %50, %23
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %45 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %44, i32 0, i32 16
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %40

53:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %65, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @NRG_NUM_PREV_STAT_L, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %60 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %59, i32 0, i32 15
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %70 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %73 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %72, i32 0, i32 14
  store i32 %71, i32* %73, align 8
  %74 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %75 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %78 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %77, i32 0, i32 13
  store i32 %76, i32* %78, align 4
  %79 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %80 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %83 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %82, i32 0, i32 12
  store i32 %81, i32* %83, align 8
  %84 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %85 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %88 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @AUTO_CORR_CCK_MIN_VAL_DEF, align 4
  %90 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %91 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 8
  %92 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %93 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %96 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %98 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %101 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 8
  %102 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %103 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %106 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %108 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %111 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %113 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %116 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.il_sensitivity_ranges*, %struct.il_sensitivity_ranges** %6, align 8
  %118 = getelementptr inbounds %struct.il_sensitivity_ranges, %struct.il_sensitivity_ranges* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %121 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %123 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %125 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %127 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %129 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %131 = call i32 @il4965_sensitivity_write(%struct.il_priv* %130)
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i32 (i8*, ...) @D_CALIB(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %68, %22, %15
  ret void
}

declare dso_local i32 @D_CALIB(i8*, ...) #1

declare dso_local i32 @memset(%struct.il_sensitivity_data*, i32, i32) #1

declare dso_local i32 @il4965_sensitivity_write(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
