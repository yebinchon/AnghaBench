; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.c_mt7615_efuse_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.c_mt7615_efuse_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@MT_EFUSE_BASE = common dso_local global i32 0, align 4
@MT7615_EEPROM_SIZE = common dso_local global i32 0, align 4
@MT_EFUSE_BASE_CTRL = common dso_local global i32 0, align 4
@MT_EFUSE_BASE_CTRL_EMPTY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*)* @mt7615_efuse_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_efuse_init(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %10 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %11 = load i32, i32* @MT_EFUSE_BASE, align 4
  %12 = call i32 @mt7615_reg_map(%struct.mt7615_dev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @MT7615_EEPROM_SIZE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MT_EFUSE_BASE_CTRL, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @mt76_rr(%struct.mt7615_dev* %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MT_EFUSE_BASE_CTRL_EMPTY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

24:                                               ; preds = %1
  %25 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @devm_kzalloc(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %24
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %79

50:                                               ; preds = %24
  %51 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %75, %50
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 16
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %65, i64 %67
  %69 = call i32 @mt7615_efuse_read(%struct.mt7615_dev* %62, i32 %63, i32 %64, i8* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 16
  store i32 %77, i32* %6, align 4
  br label %56

78:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %72, %47, %23
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @mt7615_reg_map(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt7615_dev*, i32) #1

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mt7615_efuse_read(%struct.mt7615_dev*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
