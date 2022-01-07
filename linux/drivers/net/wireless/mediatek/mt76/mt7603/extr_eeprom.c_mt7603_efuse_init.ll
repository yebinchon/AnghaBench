; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_eeprom.c_mt7603_efuse_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_eeprom.c_mt7603_efuse_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@MT_EFUSE_BASE = common dso_local global i32 0, align 4
@MT7603_EEPROM_SIZE = common dso_local global i32 0, align 4
@MT_EFUSE_BASE_CTRL = common dso_local global i64 0, align 8
@MT_EFUSE_BASE_CTRL_EMPTY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*)* @mt7603_efuse_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_efuse_init(%struct.mt7603_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  %9 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %10 = load i32, i32* @MT_EFUSE_BASE, align 4
  %11 = call i64 @mt7603_reg_map(%struct.mt7603_dev* %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @MT7603_EEPROM_SIZE, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @MT_EFUSE_BASE_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @mt76_rr(%struct.mt7603_dev* %13, i64 %16)
  %18 = load i32, i32* @MT_EFUSE_BASE_CTRL_EMPTY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

22:                                               ; preds = %1
  %23 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kzalloc(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %22
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %77

48:                                               ; preds = %22
  %49 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %50 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %73, %48
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 16
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = call i32 @mt7603_efuse_read(%struct.mt7603_dev* %60, i64 %61, i32 %62, i8* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %77

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 16
  store i32 %75, i32* %8, align 4
  br label %54

76:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %70, %45, %21
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @mt7603_reg_map(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i64) #1

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mt7603_efuse_read(%struct.mt7603_dev*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
