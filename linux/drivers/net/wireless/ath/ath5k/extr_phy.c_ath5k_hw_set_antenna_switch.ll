; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_set_antenna_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_set_antenna_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32** }

@AR5K_ANTMODE_FIXED_A = common dso_local global i64 0, align 8
@AR5K_ANT_SWTABLE_A = common dso_local global i64 0, align 8
@AR5K_ANTMODE_FIXED_B = common dso_local global i64 0, align 8
@AR5K_ANT_SWTABLE_B = common dso_local global i64 0, align 8
@AR5K_PHY_ANT_CTL = common dso_local global i32 0, align 4
@AR5K_PHY_ANT_CTL_SWTABLE_IDLE = common dso_local global i32 0, align 4
@AR5K_ANT_CTL = common dso_local global i64 0, align 8
@AR5K_PHY_ANT_CTL_TXRX_EN = common dso_local global i32 0, align 4
@AR5K_PHY_ANT_SWITCH_TABLE_0 = common dso_local global i32 0, align 4
@AR5K_PHY_ANT_SWITCH_TABLE_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_set_antenna_switch(%struct.ath5k_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AR5K_ANTMODE_FIXED_A, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @AR5K_ANT_SWTABLE_A, align 8
  store i64 %13, i64* %6, align 8
  store i64 %13, i64* %5, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AR5K_ANTMODE_FIXED_B, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* @AR5K_ANT_SWTABLE_B, align 8
  store i64 %21, i64* %6, align 8
  store i64 %21, i64* %5, align 8
  br label %25

22:                                               ; preds = %14
  %23 = load i64, i64* @AR5K_ANT_SWTABLE_A, align 8
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* @AR5K_ANT_SWTABLE_B, align 8
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %20
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = load i32, i32* @AR5K_PHY_ANT_CTL, align 4
  %29 = load i32, i32* @AR5K_PHY_ANT_CTL_SWTABLE_IDLE, align 4
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @AR5K_ANT_CTL, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AR5K_PHY_ANT_CTL_TXRX_EN, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %27, i32 %28, i32 %29, i32 %40)
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AR5K_PHY_ANT_SWITCH_TABLE_0, align 4
  %53 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %42, i32 %51, i32 %52)
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %56 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AR5K_PHY_ANT_SWITCH_TABLE_1, align 4
  %65 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %54, i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
