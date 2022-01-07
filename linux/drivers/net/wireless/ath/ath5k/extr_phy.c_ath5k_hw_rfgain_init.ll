; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfgain_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfgain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_ini_rfgain = type { i64, i32* }
%struct.ath5k_hw = type { i32 }

@rfgain_5111 = common dso_local global %struct.ath5k_ini_rfgain* null, align 8
@rfgain_5112 = common dso_local global %struct.ath5k_ini_rfgain* null, align 8
@rfgain_2413 = common dso_local global %struct.ath5k_ini_rfgain* null, align 8
@rfgain_2316 = common dso_local global %struct.ath5k_ini_rfgain* null, align 8
@rfgain_5413 = common dso_local global %struct.ath5k_ini_rfgain* null, align 8
@rfgain_2425 = common dso_local global %struct.ath5k_ini_rfgain* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_hw_rfgain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rfgain_init(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_ini_rfgain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 130, label %13
    i32 129, label %17
    i32 132, label %21
    i32 134, label %25
    i32 128, label %29
    i32 133, label %33
    i32 131, label %33
  ]

13:                                               ; preds = %2
  %14 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_5111, align 8
  store %struct.ath5k_ini_rfgain* %14, %struct.ath5k_ini_rfgain** %6, align 8
  %15 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_5111, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.ath5k_ini_rfgain* %15)
  store i32 %16, i32* %8, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_5112, align 8
  store %struct.ath5k_ini_rfgain* %18, %struct.ath5k_ini_rfgain** %6, align 8
  %19 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_5112, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.ath5k_ini_rfgain* %19)
  store i32 %20, i32* %8, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_2413, align 8
  store %struct.ath5k_ini_rfgain* %22, %struct.ath5k_ini_rfgain** %6, align 8
  %23 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_2413, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.ath5k_ini_rfgain* %23)
  store i32 %24, i32* %8, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_2316, align 8
  store %struct.ath5k_ini_rfgain* %26, %struct.ath5k_ini_rfgain** %6, align 8
  %27 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_2316, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.ath5k_ini_rfgain* %27)
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_5413, align 8
  store %struct.ath5k_ini_rfgain* %30, %struct.ath5k_ini_rfgain** %6, align 8
  %31 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_5413, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.ath5k_ini_rfgain* %31)
  store i32 %32, i32* %8, align 4
  br label %40

33:                                               ; preds = %2, %2
  %34 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_2425, align 8
  store %struct.ath5k_ini_rfgain* %34, %struct.ath5k_ini_rfgain** %6, align 8
  %35 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** @rfgain_2425, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.ath5k_ini_rfgain* %35)
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %33, %29, %25, %21, %17, %13
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %72, %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @AR5K_REG_WAIT(i32 %51)
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %54 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ath5k_ini_rfgain, %struct.ath5k_ini_rfgain* %54, i64 %56
  %58 = getelementptr inbounds %struct.ath5k_ini_rfgain, %struct.ath5k_ini_rfgain* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ath5k_ini_rfgain*, %struct.ath5k_ini_rfgain** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ath5k_ini_rfgain, %struct.ath5k_ini_rfgain* %64, i64 %66
  %68 = getelementptr inbounds %struct.ath5k_ini_rfgain, %struct.ath5k_ini_rfgain* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %53, i32 %63, i32 %70)
  br label %72

72:                                               ; preds = %50
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %46

75:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %37
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ARRAY_SIZE(%struct.ath5k_ini_rfgain*) #1

declare dso_local i32 @AR5K_REG_WAIT(i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
