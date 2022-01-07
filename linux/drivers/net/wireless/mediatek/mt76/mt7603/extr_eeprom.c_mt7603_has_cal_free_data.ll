; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_eeprom.c_mt7603_has_cal_free_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_eeprom.c_mt7603_has_cal_free_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_EE_TEMP_SENSOR_CAL = common dso_local global i64 0, align 8
@MT_EE_TX_POWER_0_START_2G = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_1_START_2G = common dso_local global i32 0, align 4
@MT_EE_CP_FT_VERSION = common dso_local global i64 0, align 8
@MT_EE_XTAL_FREQ_OFFSET = common dso_local global i64 0, align 8
@MT_EE_XTAL_WF_RFCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*, i32*)* @mt7603_has_cal_free_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_has_cal_free_data(%struct.mt7603_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7603_dev*, align 8
  %5 = alloca i32*, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @MT_EE_TEMP_SENSOR_CAL, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @MT_EE_TX_POWER_0_START_2G, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i64 @get_unaligned_le16(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %50

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @MT_EE_TX_POWER_1_START_2G, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i64 @get_unaligned_le16(i32* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %50

28:                                               ; preds = %20
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* @MT_EE_CP_FT_VERSION, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %50

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* @MT_EE_XTAL_FREQ_OFFSET, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %50

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @MT_EE_XTAL_WF_RFCAL, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %50

49:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %41, %34, %27, %19, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
