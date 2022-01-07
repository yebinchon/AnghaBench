; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_eeprom.c_mt7603_eeprom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_eeprom.c_mt7603_eeprom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@MT7603_EEPROM_SIZE = common dso_local global i32 0, align 4
@MT_EE_MAC_ADDR = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7603_eeprom_init(%struct.mt7603_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  %5 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %6 = call i32 @mt7603_eeprom_load(%struct.mt7603_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %11
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %19, i32 0, i32 0
  %21 = call i64 @mt7603_check_eeprom(%struct.TYPE_9__* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %25 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @mt7603_apply_cal_free_data(%struct.mt7603_dev* %24, i64 %29)
  br label %44

31:                                               ; preds = %18
  %32 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @MT7603_EEPROM_SIZE, align 4
  %43 = call i32 @memcpy(i64 %36, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %31, %23
  br label %45

45:                                               ; preds = %44, %11
  %46 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %55 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MT_EE_MAC_ADDR, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i64 %53, i64 %60, i32 %61)
  %63 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %64 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %63, i32 0, i32 0
  %65 = call i32 @mt76_eeprom_override(%struct.TYPE_9__* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %45, %9
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mt7603_eeprom_load(%struct.mt7603_dev*) #1

declare dso_local i64 @mt7603_check_eeprom(%struct.TYPE_9__*) #1

declare dso_local i32 @mt7603_apply_cal_free_data(%struct.mt7603_dev*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @mt76_eeprom_override(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
