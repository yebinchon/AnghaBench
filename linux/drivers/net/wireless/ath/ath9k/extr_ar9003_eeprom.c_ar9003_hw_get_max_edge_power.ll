; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_max_edge_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_max_edge_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9300_eeprom = type { i64**, i64** }

@MAX_RATE_POWER = common dso_local global i32 0, align 4
@AR9300_NUM_BAND_EDGES_2G = common dso_local global i32 0, align 4
@AR9300_NUM_BAND_EDGES_5G = common dso_local global i32 0, align 4
@AR5416_BCHAN_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9300_eeprom*, i32, i32, i32)* @ar9003_hw_get_max_edge_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_get_max_edge_power(%struct.ar9300_eeprom* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ar9300_eeprom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar9300_eeprom* %0, %struct.ar9300_eeprom** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @MAX_RATE_POWER, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %18 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %17, i32 0, i32 0
  %19 = load i64**, i64*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64*, i64** %19, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  br label %34

25:                                               ; preds = %4
  %26 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %27 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %26, i32 0, i32 1
  %28 = load i64**, i64*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64*, i64** %28, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  br label %34

34:                                               ; preds = %25, %16
  %35 = phi i64* [ %24, %16 ], [ %33, %25 ]
  store i64* %35, i64** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @AR9300_NUM_BAND_EDGES_2G, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @AR9300_NUM_BAND_EDGES_5G, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %96, %42
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i64*, i64** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AR5416_BCHAN_UNUSED, align 8
  %55 = icmp ne i64 %53, %54
  br label %56

56:                                               ; preds = %48, %44
  %57 = phi i1 [ false, %44 ], [ %55, %48 ]
  br i1 %57, label %58, label %99

58:                                               ; preds = %56
  %59 = load i32, i32* %6, align 4
  %60 = load i64*, i64** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ath9k_hw_fbin2freq(i64 %64, i32 %65)
  %67 = icmp eq i32 %59, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ar9003_hw_get_direct_edge_power(%struct.ar9300_eeprom* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  br label %99

74:                                               ; preds = %58
  %75 = load i32, i32* %12, align 4
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = load i64*, i64** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ath9k_hw_fbin2freq(i64 %83, i32 %84)
  %86 = icmp ult i32 %78, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %77
  %88 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @ar9003_hw_get_indirect_edge_power(%struct.ar9300_eeprom* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %9, align 4
  br label %99

94:                                               ; preds = %77, %74
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %44

99:                                               ; preds = %87, %68, %56
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i32 60, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %102, %99
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @ath9k_hw_fbin2freq(i64, i32) #1

declare dso_local i32 @ar9003_hw_get_direct_edge_power(%struct.ar9300_eeprom*, i32, i32, i32) #1

declare dso_local i32 @ar9003_hw_get_indirect_edge_power(%struct.ar9300_eeprom*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
