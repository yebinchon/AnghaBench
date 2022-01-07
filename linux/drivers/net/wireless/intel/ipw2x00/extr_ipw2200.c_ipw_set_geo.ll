; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_set_geo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_set_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ipw_priv = type { i32, i32* }

@ipw_geos = common dso_local global %struct.TYPE_4__* null, align 8
@EEPROM_COUNTRY_CODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"SKU [%c%c%c] not recognized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_set_geo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_set_geo(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipw_geos, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @EEPROM_COUNTRY_CODE, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipw_geos, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcmp(i32* %14, i32 %20, i32 3)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %9
  br label %28

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %23, %4
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipw_geos, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %30)
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @EEPROM_COUNTRY_CODE, align 8
  %38 = add i64 %37, 0
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %42 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @EEPROM_COUNTRY_CODE, align 8
  %45 = add i64 %44, 1
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %49 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @EEPROM_COUNTRY_CODE, align 8
  %52 = add i64 %51, 2
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %47, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %33, %28
  %57 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %58 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipw_geos, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = call i32 @libipw_set_geo(i32 %59, %struct.TYPE_4__* %63)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @IPW_WARNING(i8*, i32, i32, i32) #1

declare dso_local i32 @libipw_set_geo(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
