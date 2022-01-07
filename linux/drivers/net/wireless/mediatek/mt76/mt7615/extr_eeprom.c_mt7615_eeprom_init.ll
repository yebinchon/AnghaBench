; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.c_mt7615_eeprom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.c_mt7615_eeprom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__, i64, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@MT7615_EEPROM_SIZE = common dso_local global i32 0, align 4
@MT_EE_MAC_ADDR = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_eeprom_init(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %5 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %6 = call i32 @mt7615_eeprom_load(%struct.mt7615_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %12, i32 0, i32 0
  %14 = call i32 @mt7615_check_eeprom(%struct.TYPE_7__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @MT7615_EEPROM_SIZE, align 4
  %36 = call i32 @memcpy(i64 %29, i64 %34, i32 %35)
  br label %40

37:                                               ; preds = %17, %11
  %38 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %39 = call i32 @mt7615_apply_cal_free_data(%struct.mt7615_dev* %38)
  br label %40

40:                                               ; preds = %37, %24
  %41 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %42 = call i32 @mt7615_eeprom_parse_hw_cap(%struct.mt7615_dev* %41)
  %43 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MT_EE_MAC_ADDR, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i64 %46, i64 %53, i32 %54)
  %56 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %57 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %56, i32 0, i32 0
  %58 = call i32 @mt76_eeprom_override(%struct.TYPE_7__* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %40, %9
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @mt7615_eeprom_load(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_check_eeprom(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @mt7615_apply_cal_free_data(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_eeprom_parse_hw_cap(%struct.mt7615_dev*) #1

declare dso_local i32 @mt76_eeprom_override(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
