; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.c_mt7615_apply_cal_free_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.c_mt7615_apply_cal_free_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i64* }

@mt7615_apply_cal_free_data.ical = internal constant [70 x i32] [i32 83, i32 84, i32 85, i32 86, i32 87, i32 92, i32 93, i32 98, i32 99, i32 104, i32 105, i32 110, i32 111, i32 115, i32 116, i32 120, i32 121, i32 130, i32 131, i32 135, i32 136, i32 140, i32 141, i32 145, i32 146, i32 150, i32 151, i32 155, i32 156, i32 160, i32 161, i32 170, i32 171, i32 175, i32 176, i32 180, i32 181, i32 185, i32 186, i32 244, i32 247, i32 255, i32 320, i32 321, i32 325, i32 326, i32 330, i32 331, i32 340, i32 341, i32 345, i32 346, i32 350, i32 351, i32 355, i32 356, i32 360, i32 361, i32 365, i32 366, i32 370, i32 371, i32 380, i32 381, i32 385, i32 386, i32 390, i32 391, i32 395, i32 396], align 16
@mt7615_apply_cal_free_data.ical_nocheck = internal constant [19 x i32] [i32 272, i32 273, i32 274, i32 275, i32 276, i32 277, i32 278, i32 279, i32 280, i32 437, i32 438, i32 439, i32 940, i32 941, i32 942, i32 943, i32 944, i32 945, i32 946], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7615_dev*)* @mt7615_apply_cal_free_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_apply_cal_free_data(%struct.mt7615_dev* %0) #0 {
  %2 = alloca %struct.mt7615_dev*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %2, align 8
  %6 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %3, align 8
  %11 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %4, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %87

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([70 x i32], [70 x i32]* @mt7615_apply_cal_free_data.ical, i64 0, i64 0))
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i64*, i64** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [70 x i32], [70 x i32]* @mt7615_apply_cal_free_data.ical, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %25, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %87

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %20

39:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([70 x i32], [70 x i32]* @mt7615_apply_cal_free_data.ical, i64 0, i64 0))
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load i64*, i64** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [70 x i32], [70 x i32]* @mt7615_apply_cal_free_data.ical, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %45, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [70 x i32], [70 x i32]* @mt7615_apply_cal_free_data.ical, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %53, i64 %58
  store i64 %52, i64* %59, align 8
  br label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %40

63:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %84, %63
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([19 x i32], [19 x i32]* @mt7615_apply_cal_free_data.ical_nocheck, i64 0, i64 0))
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load i64*, i64** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [19 x i32], [19 x i32]* @mt7615_apply_cal_free_data.ical_nocheck, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %69, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [19 x i32], [19 x i32]* @mt7615_apply_cal_free_data.ical_nocheck, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %77, i64 %82
  store i64 %76, i64* %83, align 8
  br label %84

84:                                               ; preds = %68
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %64

87:                                               ; preds = %18, %34, %64
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
