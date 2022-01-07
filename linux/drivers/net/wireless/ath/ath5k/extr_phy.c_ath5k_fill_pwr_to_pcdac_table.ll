; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_fill_pwr_to_pcdac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_fill_pwr_to_pcdac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64** }

@AR5K_EEPROM_POWER_TABLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, i64*, i64*)* @ath5k_fill_pwr_to_pcdac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_fill_pwr_to_pcdac_table(%struct.ath5k_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %7, align 8
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64**, i64*** %22, align 8
  %24 = getelementptr inbounds i64*, i64** %23, i64 0
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %8, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %15, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = getelementptr inbounds i64, i64* %35, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %45

45:                                               ; preds = %55, %3
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %11, align 8
  %54 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %45

58:                                               ; preds = %45
  %59 = load i64, i64* %14, align 8
  store i64 %59, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %60

60:                                               ; preds = %81, %58
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @AR5K_EEPROM_POWER_TABLE_SIZE, align 8
  %67 = icmp ult i64 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %70, label %84

70:                                               ; preds = %68
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %11, align 8
  %78 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %74, i64* %78, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %12, align 8
  br label %81

81:                                               ; preds = %70
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %13, align 8
  br label %60

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @AR5K_EEPROM_POWER_TABLE_SIZE, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i64, i64* %10, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %11, align 8
  %94 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %94, align 8
  br label %85

95:                                               ; preds = %85
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
