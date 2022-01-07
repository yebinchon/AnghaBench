; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_reg_get_matched_power_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_reg_get_matched_power_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64 }
%struct.il3945_eeprom_txpower_group = type { %struct.il3945_eeprom_txpower_sample* }
%struct.il3945_eeprom_txpower_sample = type { i64, i64 }
%struct.il3945_eeprom = type { %struct.il3945_eeprom_txpower_group* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32, i64, i64*)* @il3945_hw_reg_get_matched_power_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_hw_reg_get_matched_power_idx(%struct.il_priv* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.il3945_eeprom_txpower_group*, align 8
  %11 = alloca %struct.il3945_eeprom*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.il3945_eeprom_txpower_sample*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.il3945_eeprom_txpower_group* null, %struct.il3945_eeprom_txpower_group** %10, align 8
  %21 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.il3945_eeprom*
  store %struct.il3945_eeprom* %24, %struct.il3945_eeprom** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %14, align 8
  %28 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %11, align 8
  %29 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %28, i32 0, i32 0
  %30 = load %struct.il3945_eeprom_txpower_group*, %struct.il3945_eeprom_txpower_group** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.il3945_eeprom_txpower_group, %struct.il3945_eeprom_txpower_group* %30, i64 %31
  store %struct.il3945_eeprom_txpower_group* %32, %struct.il3945_eeprom_txpower_group** %10, align 8
  %33 = load %struct.il3945_eeprom_txpower_group*, %struct.il3945_eeprom_txpower_group** %10, align 8
  %34 = getelementptr inbounds %struct.il3945_eeprom_txpower_group, %struct.il3945_eeprom_txpower_group* %33, i32 0, i32 0
  %35 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %34, align 8
  store %struct.il3945_eeprom_txpower_sample* %35, %struct.il3945_eeprom_txpower_sample** %16, align 8
  store i64 0, i64* %15, align 8
  br label %36

36:                                               ; preds = %55, %4
  %37 = load i64, i64* %15, align 8
  %38 = icmp ult i64 %37, 5
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %41, i64 %42
  %44 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %49 = load i64, i64* %15, align 8
  %50 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %48, i64 %49
  %51 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %5, align 4
  br label %134

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %15, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %15, align 8
  br label %36

58:                                               ; preds = %36
  %59 = load i64, i64* %14, align 8
  %60 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %61 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %60, i64 1
  %62 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i64 0, i64* %12, align 8
  store i64 1, i64* %13, align 8
  br label %85

66:                                               ; preds = %58
  %67 = load i64, i64* %14, align 8
  %68 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %69 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %68, i64 2
  %70 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %67, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i64 1, i64* %12, align 8
  store i64 2, i64* %13, align 8
  br label %84

74:                                               ; preds = %66
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %77 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %76, i64 3
  %78 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ugt i64 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i64 2, i64* %12, align 8
  store i64 3, i64* %13, align 8
  br label %83

82:                                               ; preds = %74
  store i64 3, i64* %12, align 8
  store i64 4, i64* %13, align 8
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %73
  br label %85

85:                                               ; preds = %84, %65
  %86 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %86, i64 %87
  %89 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %91, i64 %92
  %94 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %90, %95
  store i64 %96, i64* %20, align 8
  %97 = load i64, i64* %20, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %134

102:                                              ; preds = %85
  %103 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %103, i64 %104
  %106 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = mul i64 %107, 524288
  store i64 %108, i64* %17, align 8
  %109 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %109, i64 %110
  %112 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = mul i64 %113, 524288
  store i64 %114, i64* %18, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* %17, align 8
  %118 = sub i64 %116, %117
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.il3945_eeprom_txpower_sample*, %struct.il3945_eeprom_txpower_sample** %16, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %120, i64 %121
  %123 = getelementptr inbounds %struct.il3945_eeprom_txpower_sample, %struct.il3945_eeprom_txpower_sample* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %119, %124
  %126 = mul i64 %118, %125
  %127 = load i64, i64* %20, align 8
  %128 = udiv i64 %126, %127
  %129 = add i64 %115, %128
  %130 = add i64 %129, 262144
  store i64 %130, i64* %19, align 8
  %131 = load i64, i64* %19, align 8
  %132 = lshr i64 %131, 19
  %133 = load i64*, i64** %9, align 8
  store i64 %132, i64* %133, align 8
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %102, %99, %47
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
