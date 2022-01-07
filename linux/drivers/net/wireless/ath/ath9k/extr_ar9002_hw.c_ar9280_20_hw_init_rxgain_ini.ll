; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9280_20_hw_init_rxgain_ini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9280_20_hw_init_rxgain_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ath_hw*)*, i64 (%struct.ath_hw*, i32)* }

@AR5416_EEP_MINOR_VER_17 = common dso_local global i64 0, align 8
@EEP_RXGAIN_TYPE = common dso_local global i32 0, align 4
@AR5416_EEP_RXGAIN_13DB_BACKOFF = common dso_local global i64 0, align 8
@ar9280Modes_backoff_13db_rxgain_9280_2 = common dso_local global i32 0, align 4
@AR5416_EEP_RXGAIN_23DB_BACKOFF = common dso_local global i64 0, align 8
@ar9280Modes_backoff_23db_rxgain_9280_2 = common dso_local global i32 0, align 4
@ar9280Modes_original_rxgain_9280_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9280_20_hw_init_rxgain_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9280_20_hw_init_rxgain_ini(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64 (%struct.ath_hw*)*, i64 (%struct.ath_hw*)** %7, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = call i64 %8(%struct.ath_hw* %9)
  %11 = load i64, i64* @AR5416_EEP_MINOR_VER_17, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %17, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = load i32, i32* @EEP_RXGAIN_TYPE, align 4
  %21 = call i64 %18(%struct.ath_hw* %19, i32 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @AR5416_EEP_RXGAIN_13DB_BACKOFF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %26, i32 0, i32 0
  %28 = load i32, i32* @ar9280Modes_backoff_13db_rxgain_9280_2, align 4
  %29 = call i32 @INIT_INI_ARRAY(i32* %27, i32 %28)
  br label %45

30:                                               ; preds = %13
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @AR5416_EEP_RXGAIN_23DB_BACKOFF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 0
  %37 = load i32, i32* @ar9280Modes_backoff_23db_rxgain_9280_2, align 4
  %38 = call i32 @INIT_INI_ARRAY(i32* %36, i32 %37)
  br label %44

39:                                               ; preds = %30
  %40 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 0
  %42 = load i32, i32* @ar9280Modes_original_rxgain_9280_2, align 4
  %43 = call i32 @INIT_INI_ARRAY(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %25
  br label %51

46:                                               ; preds = %1
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 0
  %49 = load i32, i32* @ar9280Modes_original_rxgain_9280_2, align 4
  %50 = call i32 @INIT_INI_ARRAY(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %45
  ret void
}

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
