; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_band_reference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_band_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_cfg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.iwl_eeprom_channel = type { i32 }

@INDIRECT_ADDRESS = common dso_local global i32 0, align 4
@INDIRECT_REGULATORY = common dso_local global i32 0, align 4
@iwl_eeprom_band_1 = common dso_local global i32* null, align 8
@iwl_eeprom_band_2 = common dso_local global i32* null, align 8
@iwl_eeprom_band_3 = common dso_local global i32* null, align 8
@iwl_eeprom_band_4 = common dso_local global i32* null, align 8
@iwl_eeprom_band_5 = common dso_local global i32* null, align 8
@iwl_eeprom_band_6 = common dso_local global i32* null, align 8
@iwl_eeprom_band_7 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_cfg*, i32*, i64, i32, i32*, %struct.iwl_eeprom_channel**, i32**)* @iwl_init_band_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_init_band_reference(%struct.iwl_cfg* %0, i32* %1, i64 %2, i32 %3, i32* %4, %struct.iwl_eeprom_channel** %5, i32** %6) #0 {
  %8 = alloca %struct.iwl_cfg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.iwl_eeprom_channel**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  store %struct.iwl_cfg* %0, %struct.iwl_cfg** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.iwl_eeprom_channel** %5, %struct.iwl_eeprom_channel*** %13, align 8
  store i32** %6, i32*** %14, align 8
  %16 = load %struct.iwl_cfg*, %struct.iwl_cfg** %8, align 8
  %17 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* @INDIRECT_ADDRESS, align 4
  %27 = load i32, i32* @INDIRECT_REGULATORY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %15, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %15, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i64 @iwl_eeprom_query_addr(i32* %31, i64 %32, i32 %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to %struct.iwl_eeprom_channel*
  %37 = load %struct.iwl_eeprom_channel**, %struct.iwl_eeprom_channel*** %13, align 8
  store %struct.iwl_eeprom_channel* %36, %struct.iwl_eeprom_channel** %37, align 8
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %81 [
    i32 1, label %39
    i32 2, label %45
    i32 3, label %51
    i32 4, label %57
    i32 5, label %63
    i32 6, label %69
    i32 7, label %75
  ]

39:                                               ; preds = %7
  %40 = load i32*, i32** @iwl_eeprom_band_1, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = load i32*, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** @iwl_eeprom_band_1, align 8
  %44 = load i32**, i32*** %14, align 8
  store i32* %43, i32** %44, align 8
  br label %85

45:                                               ; preds = %7
  %46 = load i32*, i32** @iwl_eeprom_band_2, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** @iwl_eeprom_band_2, align 8
  %50 = load i32**, i32*** %14, align 8
  store i32* %49, i32** %50, align 8
  br label %85

51:                                               ; preds = %7
  %52 = load i32*, i32** @iwl_eeprom_band_3, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** @iwl_eeprom_band_3, align 8
  %56 = load i32**, i32*** %14, align 8
  store i32* %55, i32** %56, align 8
  br label %85

57:                                               ; preds = %7
  %58 = load i32*, i32** @iwl_eeprom_band_4, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  %60 = load i32*, i32** %12, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** @iwl_eeprom_band_4, align 8
  %62 = load i32**, i32*** %14, align 8
  store i32* %61, i32** %62, align 8
  br label %85

63:                                               ; preds = %7
  %64 = load i32*, i32** @iwl_eeprom_band_5, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** @iwl_eeprom_band_5, align 8
  %68 = load i32**, i32*** %14, align 8
  store i32* %67, i32** %68, align 8
  br label %85

69:                                               ; preds = %7
  %70 = load i32*, i32** @iwl_eeprom_band_6, align 8
  %71 = call i32 @ARRAY_SIZE(i32* %70)
  %72 = load i32*, i32** %12, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** @iwl_eeprom_band_6, align 8
  %74 = load i32**, i32*** %14, align 8
  store i32* %73, i32** %74, align 8
  br label %85

75:                                               ; preds = %7
  %76 = load i32*, i32** @iwl_eeprom_band_7, align 8
  %77 = call i32 @ARRAY_SIZE(i32* %76)
  %78 = load i32*, i32** %12, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** @iwl_eeprom_band_7, align 8
  %80 = load i32**, i32*** %14, align 8
  store i32* %79, i32** %80, align 8
  br label %85

81:                                               ; preds = %7
  %82 = load i32*, i32** %12, align 8
  store i32 0, i32* %82, align 4
  %83 = load i32**, i32*** %14, align 8
  store i32* null, i32** %83, align 8
  %84 = call i32 @WARN_ON(i32 1)
  br label %85

85:                                               ; preds = %81, %75, %69, %63, %57, %51, %45, %39
  ret void
}

declare dso_local i64 @iwl_eeprom_query_addr(i32*, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
