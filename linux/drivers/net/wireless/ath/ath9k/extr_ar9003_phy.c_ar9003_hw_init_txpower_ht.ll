; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_init_txpower_ht.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_init_txpower_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32* }

@mcs2pwr_ht40 = common dso_local global i32* null, align 8
@mcs2pwr_ht20 = common dso_local global i32* null, align 8
@AR9300_HT_SS_RATES = common dso_local global i32 0, align 4
@AR9300_HT_DS_RATES = common dso_local global i32 0, align 4
@AR9300_HT_TS_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32*, i32, i32, i32, i32)* @ar9003_hw_init_txpower_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_init_txpower_ht(%struct.ath_hw* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32*, i32** @mcs2pwr_ht40, align 8
  br label %23

21:                                               ; preds = %6
  %22 = load i32*, i32** @mcs2pwr_ht20, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32* [ %20, %19 ], [ %22, %21 ]
  store i32* %24, i32** %16, align 8
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %51, %23
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @AR9300_HT_SS_RATES, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load i32*, i32** %16, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %81, %54
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @AR9300_HT_DS_RATES, align 4
  %60 = add nsw i32 %58, %59
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load i32*, i32** %16, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %62
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %56

84:                                               ; preds = %56
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %111, %84
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @AR9300_HT_TS_RATES, align 4
  %90 = add nsw i32 %88, %89
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %86
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %14, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %104 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %92
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %86

114:                                              ; preds = %86
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
