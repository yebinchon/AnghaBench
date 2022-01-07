; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_setpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_setpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32 }
%struct.ath_common = type { i32 }

@ath9k_hw_setpower.modes = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"AWAKE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FULL-SLEEP\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"NETWORK SLEEP\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unknown power mode %u\0A\00", align 1
@AH_UNPLUGGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_setpower(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %19 = load i32, i32* @RESET, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* @ath9k_hw_setpower.modes, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* @ath9k_hw_setpower.modes, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @ath_dbg(%struct.ath_common* %18, i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %25, i8* %29)
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %50 [
    i32 130, label %32
    i32 129, label %35
    i32 128, label %47
  ]

32:                                               ; preds = %17
  %33 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %34 = call i32 @ath9k_hw_set_power_awake(%struct.ath_hw* %33)
  store i32 %34, i32* %7, align 4
  br label %54

35:                                               ; preds = %17
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = call i32 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %41 = call i32 @ar9003_mci_set_full_sleep(%struct.ath_hw* %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = call i32 @ath9k_set_power_sleep(%struct.ath_hw* %43)
  %45 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %54

47:                                               ; preds = %17
  %48 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %49 = call i32 @ath9k_set_power_network_sleep(%struct.ath_hw* %48)
  br label %54

50:                                               ; preds = %17
  %51 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ath_err(%struct.ath_common* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  store i32 0, i32* %3, align 4
  br label %72

54:                                               ; preds = %47, %42, %32
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AH_UNPLUGGED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @ATH_DBG_WARN_ON_ONCE(i32 %68)
  br label %70

70:                                               ; preds = %64, %54
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %50, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @ath9k_hw_set_power_awake(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_set_full_sleep(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_set_power_sleep(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_set_power_network_sleep(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ATH_DBG_WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
