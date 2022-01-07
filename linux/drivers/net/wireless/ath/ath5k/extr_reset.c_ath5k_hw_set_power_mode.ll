; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_STA_ID1 = common dso_local global i32 0, align 4
@AR5K_STA_ID1_DEFAULT_ANTENNA = common dso_local global i32 0, align 4
@AR5K_SLEEP_CTL_SLE_ALLOW = common dso_local global i32 0, align 4
@AR5K_SLEEP_CTL = common dso_local global i32 0, align 4
@AR5K_STA_ID1_PWR_SV = common dso_local global i32 0, align 4
@AR5K_SLEEP_CTL_SLE_SLP = common dso_local global i32 0, align 4
@AR5K_SLEEP_CTL_SLE = common dso_local global i32 0, align 4
@AR5K_SLEEP_CTL_SLE_WAKE = common dso_local global i32 0, align 4
@AR5K_PCICFG = common dso_local global i32 0, align 4
@AR5K_PCICFG_SPWR_DN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32, i32, i32)* @ath5k_hw_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_set_power_mode(%struct.ath5k_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %14 = load i32, i32* @AR5K_STA_ID1, align 4
  %15 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %106 [
    i32 131, label %17
    i32 128, label %22
    i32 129, label %36
    i32 130, label %48
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @AR5K_STA_ID1_DEFAULT_ANTENNA, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %4, %17
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %27 = load i32, i32* @AR5K_SLEEP_CTL_SLE_ALLOW, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AR5K_SLEEP_CTL, align 4
  %31 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %26, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* @AR5K_STA_ID1_PWR_SV, align 4
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %109

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %41 = load i32, i32* @AR5K_SLEEP_CTL_SLE_SLP, align 4
  %42 = load i32, i32* @AR5K_SLEEP_CTL, align 4
  %43 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @AR5K_STA_ID1_PWR_SV, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %109

48:                                               ; preds = %4
  %49 = load i32, i32* @AR5K_STA_ID1_PWR_SV, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %110

56:                                               ; preds = %48
  %57 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %58 = load i32, i32* @AR5K_SLEEP_CTL, align 4
  %59 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, -4194304
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %69

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @AR5K_SLEEP_CTL_SLE, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %64, %63
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @AR5K_SLEEP_CTL_SLE_WAKE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @AR5K_SLEEP_CTL, align 4
  %75 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %70, i32 %73, i32 %74)
  %76 = call i32 @usleep_range(i32 15, i32 20)
  store i32 200, i32* %10, align 4
  br label %77

77:                                               ; preds = %96, %69
  %78 = load i32, i32* %10, align 4
  %79 = icmp ugt i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %82 = load i32, i32* @AR5K_PCICFG, align 4
  %83 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %81, i32 %82)
  %84 = load i32, i32* @AR5K_PCICFG_SPWR_DN, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %99

88:                                               ; preds = %80
  %89 = call i32 @usleep_range(i32 50, i32 75)
  %90 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @AR5K_SLEEP_CTL_SLE_WAKE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @AR5K_SLEEP_CTL, align 4
  %95 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %90, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, -1
  store i32 %98, i32* %10, align 4
  br label %77

99:                                               ; preds = %87, %77
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %115

105:                                              ; preds = %99
  br label %109

106:                                              ; preds = %4
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %115

109:                                              ; preds = %105, %44, %32
  br label %110

110:                                              ; preds = %109, %55
  %111 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @AR5K_STA_ID1, align 4
  %114 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %111, i32 %112, i32 %113)
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %106, %102
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
