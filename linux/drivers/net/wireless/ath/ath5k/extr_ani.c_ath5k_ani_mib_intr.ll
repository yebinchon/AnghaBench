; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_mib_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_mib_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.ath5k_ani_state, %struct.TYPE_2__ }
%struct.ath5k_ani_state = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@AR5K_OFDM_FIL_CNT = common dso_local global i32 0, align 4
@AR5K_CCK_FIL_CNT = common dso_local global i32 0, align 4
@ATH5K_ANI_MODE_AUTO = common dso_local global i64 0, align 8
@ATH5K_ANI_OFDM_TRIG_HIGH = common dso_local global i64 0, align 8
@ATH5K_ANI_CCK_TRIG_HIGH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_ani_mib_intr(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath5k_ani_state*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %4 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %4, i32 0, i32 1
  store %struct.ath5k_ani_state* %5, %struct.ath5k_ani_state** %3, align 8
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %14 = load i32, i32* @AR5K_OFDM_FIL_CNT, align 4
  %15 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %13, i32 0, i32 %14)
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %17 = load i32, i32* @AR5K_CCK_FIL_CNT, align 4
  %18 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %16, i32 0, i32 %17)
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ATH5K_ANI_MODE_AUTO, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %48

26:                                               ; preds = %12
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %28 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %29 = call i64 @ath5k_ani_save_and_clear_phy_errors(%struct.ath5k_hw* %27, %struct.ath5k_ani_state* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %48

32:                                               ; preds = %26
  %33 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %34 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATH5K_ANI_OFDM_TRIG_HIGH, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %40 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ATH5K_ANI_CCK_TRIG_HIGH, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %32
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %46 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %45, i32 0, i32 0
  %47 = call i32 @tasklet_schedule(i32* %46)
  br label %48

48:                                               ; preds = %11, %25, %31, %44, %38
  ret void
}

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i64 @ath5k_ani_save_and_clear_phy_errors(%struct.ath5k_hw*, %struct.ath5k_ani_state*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
