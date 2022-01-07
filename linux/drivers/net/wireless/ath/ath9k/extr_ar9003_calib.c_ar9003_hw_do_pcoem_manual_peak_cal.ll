; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_do_pcoem_manual_peak_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_do_pcoem_manual_peak_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__, %struct.ath9k_hw_cal_data* }
%struct.TYPE_2__ = type { i32 }
%struct.ath9k_hw_cal_data = type { i8**, i32 }
%struct.ath9k_channel = type { i32 }

@ATH9K_HW_CAP_RTT = common dso_local global i32 0, align 4
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@SW_PKDET_DONE = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32)* @ar9003_hw_do_pcoem_manual_peak_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_do_pcoem_manual_peak_cal(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath9k_hw_cal_data*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 2
  %11 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  store %struct.ath9k_hw_cal_data* %11, %struct.ath9k_hw_cal_data** %7, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATH9K_HW_CAP_RTT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %104

23:                                               ; preds = %19, %3
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %43

37:                                               ; preds = %28
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %41 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %40)
  %42 = call i32 @ar9003_hw_manual_peak_cal(%struct.ath_hw* %38, i32 %39, i64 %41)
  br label %43

43:                                               ; preds = %37, %36
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %48 = icmp ne %struct.ath9k_hw_cal_data* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @SW_PKDET_DONE, align 4
  %51 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %52 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %51, i32 0, i32 1
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %56 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATH9K_HW_CAP_RTT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %104

62:                                               ; preds = %54
  %63 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %64 = icmp ne %struct.ath9k_hw_cal_data* %63, null
  br i1 %64, label %65, label %104

65:                                               ; preds = %62
  %66 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %67 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %71 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 0)
  %72 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, align 4
  %73 = call i8* @REG_READ_FIELD(%struct.ath_hw* %70, i32 %71, i32 %72)
  %74 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %75 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  store i8* %73, i8** %77, align 8
  %78 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %79 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 1)
  %80 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, align 4
  %81 = call i8* @REG_READ_FIELD(%struct.ath_hw* %78, i32 %79, i32 %80)
  %82 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %83 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  store i8* %81, i8** %85, align 8
  br label %103

86:                                               ; preds = %65
  %87 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %88 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 0)
  %89 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR, align 4
  %90 = call i8* @REG_READ_FIELD(%struct.ath_hw* %87, i32 %88, i32 %89)
  %91 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %92 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  store i8* %90, i8** %94, align 8
  %95 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %96 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 1)
  %97 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR, align 4
  %98 = call i8* @REG_READ_FIELD(%struct.ath_hw* %95, i32 %96, i32 %97)
  %99 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %100 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  store i8* %98, i8** %102, align 8
  br label %103

103:                                              ; preds = %86, %69
  br label %104

104:                                              ; preds = %22, %103, %62, %54
  ret void
}

declare dso_local i32 @ar9003_hw_manual_peak_cal(%struct.ath_hw*, i32, i64) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i8* @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_PHY_65NM_RXRF_AGC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
