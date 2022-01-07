; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_div_comb_alt_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_div_comb_alt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw_antcomb_conf = type { i64, i64, i32 }
%struct.ath_ant_comb = type { i32, i32 }

@ATH_ANT_DIV_COMB_LNA2 = common dso_local global i64 0, align 8
@ATH_ANT_DIV_COMB_LNA1 = common dso_local global i64 0, align 8
@ATH_ANT_DIV_COMB_ALT_ANT_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw_antcomb_conf*, %struct.ath_ant_comb*, i32, i32, i32)* @ath_ant_div_comb_alt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_ant_div_comb_alt_check(%struct.ath_hw_antcomb_conf* %0, %struct.ath_ant_comb* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ath_hw_antcomb_conf*, align 8
  %7 = alloca %struct.ath_ant_comb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath_hw_antcomb_conf* %0, %struct.ath_hw_antcomb_conf** %6, align 8
  store %struct.ath_ant_comb* %1, %struct.ath_ant_comb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %6, align 8
  %15 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %6, align 8
  %21 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %12, align 4
  br label %26

26:                                               ; preds = %25, %19, %5
  %27 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %6, align 8
  %28 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %6, align 8
  %34 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %32, %26
  %40 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %6, align 8
  %41 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %117 [
    i32 0, label %43
    i32 1, label %49
    i32 2, label %49
    i32 3, label %83
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %43
  br label %117

49:                                               ; preds = %39, %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %7, align 8
  %55 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %49
  br label %117

59:                                               ; preds = %52
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 5
  %66 = icmp sge i32 %63, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, 2
  %74 = icmp sge i32 %71, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %7, align 8
  %78 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %70, %62
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %75
  br label %117

83:                                               ; preds = %39
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %7, align 8
  %89 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86, %83
  br label %117

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 3
  %100 = icmp sge i32 %97, %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 3
  %108 = icmp sge i32 %105, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %7, align 8
  %112 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %104, %96
  store i32 1, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %109
  br label %117

117:                                              ; preds = %39, %116, %92, %82, %58, %48
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
