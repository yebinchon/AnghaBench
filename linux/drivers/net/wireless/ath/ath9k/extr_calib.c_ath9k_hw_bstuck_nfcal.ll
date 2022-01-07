; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_bstuck_nfcal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_bstuck_nfcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { i32 }

@NFCAL_PENDING = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NF = common dso_local global i32 0, align 4
@NFCAL_INTF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_bstuck_nfcal(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_cal_data*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 1
  %6 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  store %struct.ath9k_hw_cal_data* %6, %struct.ath9k_hw_cal_data** %3, align 8
  %7 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %3, align 8
  %8 = icmp ne %struct.ath9k_hw_cal_data* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load i32, i32* @NFCAL_PENDING, align 4
  %16 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %3, align 8
  %17 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %21, i32 1)
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %26 = call i32 @REG_READ(%struct.ath_hw* %24, i32 %25)
  %27 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ath9k_hw_getnf(%struct.ath_hw* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %23
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* @NFCAL_INTF, align 4
  %39 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %3, align 8
  %40 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %39, i32 0, i32 0
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_getnf(%struct.ath_hw*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
