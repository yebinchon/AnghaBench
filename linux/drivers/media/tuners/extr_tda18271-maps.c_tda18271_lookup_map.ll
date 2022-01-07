; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-maps.c_tda18271_lookup_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-maps.c_tda18271_lookup_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tda18271_map*, %struct.tda18271_map*, %struct.tda18271_map*, %struct.tda18271_map*, %struct.tda18271_map*, %struct.tda18271_map*, %struct.tda18271_map* }
%struct.tda18271_map = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"bp_filter\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"km\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rf_band\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gain_taper\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rf_cal\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ir_measure\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"rf_cal_dc_over_dt\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%s map is not set!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"%s: frequency (%d) out of range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"(%d) %s: 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_lookup_map(%struct.dvb_frontend* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tda18271_priv*, align 8
  %10 = alloca %struct.tda18271_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.tda18271_priv*, %struct.tda18271_priv** %15, align 8
  store %struct.tda18271_priv* %16, %struct.tda18271_priv** %9, align 8
  store %struct.tda18271_map* null, %struct.tda18271_map** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %18 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %67 [
    i32 134, label %25
    i32 128, label %31
    i32 131, label %37
    i32 133, label %43
    i32 130, label %49
    i32 132, label %55
    i32 129, label %61
  ]

25:                                               ; preds = %4
  %26 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %27 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 6
  %30 = load %struct.tda18271_map*, %struct.tda18271_map** %29, align 8
  store %struct.tda18271_map* %30, %struct.tda18271_map** %10, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %68

31:                                               ; preds = %4
  %32 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %33 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = load %struct.tda18271_map*, %struct.tda18271_map** %35, align 8
  store %struct.tda18271_map* %36, %struct.tda18271_map** %10, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %68

37:                                               ; preds = %4
  %38 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %39 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load %struct.tda18271_map*, %struct.tda18271_map** %41, align 8
  store %struct.tda18271_map* %42, %struct.tda18271_map** %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %68

43:                                               ; preds = %4
  %44 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %45 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load %struct.tda18271_map*, %struct.tda18271_map** %47, align 8
  store %struct.tda18271_map* %48, %struct.tda18271_map** %10, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %68

49:                                               ; preds = %4
  %50 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %51 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load %struct.tda18271_map*, %struct.tda18271_map** %53, align 8
  store %struct.tda18271_map* %54, %struct.tda18271_map** %10, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %68

55:                                               ; preds = %4
  %56 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %57 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.tda18271_map*, %struct.tda18271_map** %59, align 8
  store %struct.tda18271_map* %60, %struct.tda18271_map** %10, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %68

61:                                               ; preds = %4
  %62 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %63 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.tda18271_map*, %struct.tda18271_map** %65, align 8
  store %struct.tda18271_map* %66, %struct.tda18271_map** %10, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %68

67:                                               ; preds = %4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %68

68:                                               ; preds = %67, %61, %55, %49, %43, %37, %31, %25
  %69 = load %struct.tda18271_map*, %struct.tda18271_map** %10, align 8
  %70 = icmp ne %struct.tda18271_map* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @tda_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %13, align 4
  br label %120

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %104, %76
  %78 = load %struct.tda18271_map*, %struct.tda18271_map** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.tda18271_map, %struct.tda18271_map* %78, i64 %80
  %82 = getelementptr inbounds %struct.tda18271_map, %struct.tda18271_map* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 1000
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %77
  %89 = load %struct.tda18271_map*, %struct.tda18271_map** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.tda18271_map, %struct.tda18271_map* %89, i64 %92
  %94 = getelementptr inbounds %struct.tda18271_map, %struct.tda18271_map* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load i8*, i8** %12, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @tda_map(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %98, i32 %100)
  %102 = load i32, i32* @ERANGE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %13, align 4
  br label %107

104:                                              ; preds = %88
  %105 = load i32, i32* %11, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %77

107:                                              ; preds = %97, %77
  %108 = load %struct.tda18271_map*, %struct.tda18271_map** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.tda18271_map, %struct.tda18271_map* %108, i64 %110
  %112 = getelementptr inbounds %struct.tda18271_map, %struct.tda18271_map* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %8, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @tda_map(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %115, i8* %116, i32 %118)
  br label %120

120:                                              ; preds = %107, %71
  %121 = load i32, i32* %13, align 4
  ret i32 %121
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tda_warn(i8*, i8*) #1

declare dso_local i32 @tda_map(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
