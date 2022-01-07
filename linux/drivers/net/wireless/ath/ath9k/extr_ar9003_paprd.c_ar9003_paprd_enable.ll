; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, %struct.ath9k_channel* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ath9k_channel = type { i64 }

@UPPER_5G_SUB_BAND_START = common dso_local global i64 0, align 8
@MID_5G_SUB_BAND_START = common dso_local global i64 0, align 8
@AR_PHY_PAPRD_CTRL0_B0 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL0_B1 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL0_B2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_paprd_enable(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ar9300_eeprom*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 3
  %9 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  store %struct.ath9k_channel* %9, %struct.ath9k_channel** %5, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.ar9300_eeprom* %12, %struct.ar9300_eeprom** %6, align 8
  %13 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %14 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %2
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %18 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UPPER_5G_SUB_BAND_START, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %24 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = call i32 @BIT(i32 30)
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %22
  br label %62

33:                                               ; preds = %16
  %34 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %35 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MID_5G_SUB_BAND_START, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %41 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = call i32 @BIT(i32 29)
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %39
  br label %61

50:                                               ; preds = %33
  %51 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %52 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = call i32 @BIT(i32 28)
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %50
  br label %61

61:                                               ; preds = %60, %49
  br label %62

62:                                               ; preds = %61, %32
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %71 = call i32 @ath9k_hw_apply_txpower(%struct.ath_hw* %69, %struct.ath9k_channel* %70, i32 0)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %74 = load i32, i32* @AR_PHY_PAPRD_CTRL0_B0, align 4
  %75 = load i32, i32* @AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %73, i32 %74, i32 %75, i32 %80)
  %82 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %83 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @BIT(i32 1)
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %72
  %90 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %91 = load i32, i32* @AR_PHY_PAPRD_CTRL0_B1, align 4
  %92 = load i32, i32* @AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %90, i32 %91, i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %89, %72
  %100 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %101 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @BIT(i32 2)
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %99
  %108 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %109 = load i32, i32* @AR_PHY_PAPRD_CTRL0_B2, align 4
  %110 = load i32, i32* @AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %108, i32 %109, i32 %110, i32 %115)
  br label %117

117:                                              ; preds = %107, %99
  ret void
}

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ath9k_hw_apply_txpower(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
