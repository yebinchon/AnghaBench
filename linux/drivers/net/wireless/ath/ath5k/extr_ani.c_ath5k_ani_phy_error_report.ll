; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_phy_error_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_phy_error_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.ath5k_ani_state }
%struct.ath5k_ani_state = type { i64, i64 }

@AR5K_RX_PHY_ERROR_OFDM_TIMING = common dso_local global i32 0, align 4
@ATH5K_ANI_OFDM_TRIG_HIGH = common dso_local global i64 0, align 8
@AR5K_RX_PHY_ERROR_CCK_TIMING = common dso_local global i32 0, align 4
@ATH5K_ANI_CCK_TRIG_HIGH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_ani_phy_error_report(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_ani_state*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %6, i32 0, i32 1
  store %struct.ath5k_ani_state* %7, %struct.ath5k_ani_state** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AR5K_RX_PHY_ERROR_OFDM_TIMING, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %13 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %17 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATH5K_ANI_OFDM_TRIG_HIGH, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 0
  %24 = call i32 @tasklet_schedule(i32* %23)
  br label %25

25:                                               ; preds = %21, %11
  br label %46

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AR5K_RX_PHY_ERROR_CCK_TIMING, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %32 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %36 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ATH5K_ANI_CCK_TRIG_HIGH, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %41, i32 0, i32 0
  %43 = call i32 @tasklet_schedule(i32* %42)
  br label %44

44:                                               ; preds = %40, %30
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %25
  ret void
}

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
