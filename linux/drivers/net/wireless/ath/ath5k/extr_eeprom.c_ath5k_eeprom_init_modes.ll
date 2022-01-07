; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32*, i32, i32* }

@AR5K_EEPROM_MODE_11A = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11B = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11G = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_3_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_eeprom_init_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_init_modes(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_eeprom_info*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %11, %struct.ath5k_eeprom_info** %4, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @AR5K_EEPROM_MODES_11A(i64 %14)
  %16 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %16
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @AR5K_EEPROM_MODES_11B(i64 %20)
  %22 = load i64, i64* @AR5K_EEPROM_MODE_11B, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %22
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @AR5K_EEPROM_MODES_11G(i64 %26)
  %28 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %28
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %31 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @AR5K_EEPROM_HDR_T_5GHZ_DBM(i32 %32)
  %34 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %35 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %67, %1
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ath5k_eeprom_read_ants(%struct.ath5k_hw* %51, i32* %7, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %93

58:                                               ; preds = %46
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ath5k_eeprom_read_modes(%struct.ath5k_hw* %59, i32* %7, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %93

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %41

70:                                               ; preds = %41
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AR5K_EEPROM_VERSION_3_2, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %78 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 15, i32* %81, align 4
  %82 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %83 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @AR5K_EEPROM_MODE_11B, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 28, i32* %86, align 4
  %87 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %4, align 8
  %88 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 28, i32* %91, align 4
  br label %92

92:                                               ; preds = %76, %70
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %64, %56
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @AR5K_EEPROM_MODES_11A(i64) #1

declare dso_local i32 @AR5K_EEPROM_MODES_11B(i64) #1

declare dso_local i32 @AR5K_EEPROM_MODES_11G(i64) #1

declare dso_local i32 @AR5K_EEPROM_HDR_T_5GHZ_DBM(i32) #1

declare dso_local i32 @ath5k_eeprom_read_ants(%struct.ath5k_hw*, i32*, i32) #1

declare dso_local i32 @ath5k_eeprom_read_modes(%struct.ath5k_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
