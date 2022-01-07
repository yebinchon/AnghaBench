; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_regd_get_band_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_regd_get_band_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_regulatory = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CTRY_DEFAULT = common dso_local global i64 0, align 8
@SD_NO_CTL = common dso_local global i32 0, align 4
@CTL_FCC = common dso_local global i32 0, align 4
@CTL_ETSI = common dso_local global i32 0, align 4
@CTL_MKK = common dso_local global i32 0, align 4
@NO_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_regd_get_band_ctl(%struct.ath_regulatory* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_regulatory*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_regulatory* %0, %struct.ath_regulatory** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %7 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %12 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CTRY_DEFAULT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %18 = call i64 @ath_regd_get_eepromRD(%struct.ath_regulatory* %17)
  %19 = call i64 @is_wwr_sku(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @SD_NO_CTL, align 4
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %16, %10
  %24 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %25 = call i64 @ath_regd_get_eepromRD(%struct.ath_regulatory* %24)
  %26 = load i64, i64* @CTRY_DEFAULT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %30 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %38 [
    i32 129, label %32
    i32 130, label %34
    i32 128, label %36
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* @CTL_FCC, align 4
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %28
  %35 = load i32, i32* @CTL_ETSI, align 4
  store i32 %35, i32* %3, align 4
  br label %56

36:                                               ; preds = %28
  %37 = load i32, i32* @CTL_MKK, align 4
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %54 [
    i32 132, label %42
    i32 131, label %48
  ]

42:                                               ; preds = %40
  %43 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %44 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %3, align 4
  br label %56

48:                                               ; preds = %40
  %49 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %50 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %40
  %55 = load i32, i32* @NO_CTL, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %48, %42, %36, %34, %32, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @is_wwr_sku(i64) #1

declare dso_local i64 @ath_regd_get_eepromRD(%struct.ath_regulatory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
