; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_save_and_clear_phy_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_save_and_clear_phy_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath5k_ani_state = type { i32, i32, i32, i32 }

@AR5K_PHYERR_CNT1 = common dso_local global i32 0, align 4
@AR5K_PHYERR_CNT2 = common dso_local global i32 0, align 4
@ATH5K_PHYERR_CNT_MAX = common dso_local global i32 0, align 4
@ATH5K_ANI_OFDM_TRIG_HIGH = common dso_local global i32 0, align 4
@ATH5K_ANI_CCK_TRIG_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_ani_state*)* @ath5k_ani_save_and_clear_phy_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_ani_save_and_clear_phy_errors(%struct.ath5k_hw* %0, %struct.ath5k_ani_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ath5k_ani_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ath5k_ani_state* %1, %struct.ath5k_ani_state** %5, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %16 = load i32, i32* @AR5K_PHYERR_CNT1, align 4
  %17 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %19 = load i32, i32* @AR5K_PHYERR_CNT2, align 4
  %20 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %22 = load i32, i32* @ATH5K_PHYERR_CNT_MAX, align 4
  %23 = load i32, i32* @ATH5K_ANI_OFDM_TRIG_HIGH, align 4
  %24 = sub i32 %22, %23
  %25 = load i32, i32* @AR5K_PHYERR_CNT1, align 4
  %26 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %21, i32 %24, i32 %25)
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %28 = load i32, i32* @ATH5K_PHYERR_CNT_MAX, align 4
  %29 = load i32, i32* @ATH5K_ANI_CCK_TRIG_HIGH, align 4
  %30 = sub i32 %28, %29
  %31 = load i32, i32* @AR5K_PHYERR_CNT2, align 4
  %32 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %27, i32 %30, i32 %31)
  %33 = load i32, i32* @ATH5K_ANI_OFDM_TRIG_HIGH, align 4
  %34 = load i32, i32* @ATH5K_PHYERR_CNT_MAX, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub i32 %34, %35
  %37 = sub i32 %33, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @ATH5K_ANI_CCK_TRIG_HIGH, align 4
  %39 = load i32, i32* @ATH5K_PHYERR_CNT_MAX, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub i32 %39, %40
  %42 = sub i32 %38, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ule i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %14
  %46 = load i32, i32* %7, align 4
  %47 = icmp ule i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %78

49:                                               ; preds = %45, %14
  %50 = load i32, i32* %6, align 4
  %51 = icmp ugt i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %55 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %60 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %52, %49
  %64 = load i32, i32* %7, align 4
  %65 = icmp ugt i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %69 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %5, align 8
  %74 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %66, %63
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %48, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
