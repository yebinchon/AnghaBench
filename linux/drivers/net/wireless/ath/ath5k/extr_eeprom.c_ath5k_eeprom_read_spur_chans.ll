; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_spur_chans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_spur_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64, i8*** }

@AR5K_EEPROM_VERSION_5_3 = common dso_local global i64 0, align 8
@AR5K_EEPROM_NO_SPUR = common dso_local global i8* null, align 8
@AR5K_EEPROM_5413_SPUR_CHAN_1 = common dso_local global i8* null, align 8
@AR5K_EEPROM_5413_SPUR_CHAN_2 = common dso_local global i8* null, align 8
@AR5K_EEPROM_N_SPUR_CHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_eeprom_read_spur_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_spur_chans(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath5k_eeprom_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %10, %struct.ath5k_eeprom_info** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %12 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @AR5K_EEPROM_CTL(i64 %13)
  %15 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @AR5K_EEPROM_N_CTLS(i64 %17)
  %19 = add nsw i64 %14, %18
  store i64 %19, i64* %4, align 8
  %20 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %21 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AR5K_EEPROM_VERSION_5_3, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %1
  %26 = load i8*, i8** @AR5K_EEPROM_NO_SPUR, align 8
  %27 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %28 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %27, i32 0, i32 1
  %29 = load i8***, i8**** %28, align 8
  %30 = getelementptr inbounds i8**, i8*** %29, i64 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %26, i8** %32, align 8
  %33 = load i8*, i8** @AR5K_EEPROM_5413_SPUR_CHAN_1, align 8
  %34 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %35 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %34, i32 0, i32 1
  %36 = load i8***, i8**** %35, align 8
  %37 = getelementptr inbounds i8**, i8*** %36, i64 0
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* %33, i8** %39, align 8
  %40 = load i8*, i8** @AR5K_EEPROM_5413_SPUR_CHAN_2, align 8
  %41 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %42 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %41, i32 0, i32 1
  %43 = load i8***, i8**** %42, align 8
  %44 = getelementptr inbounds i8**, i8*** %43, i64 1
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* %40, i8** %46, align 8
  %47 = load i8*, i8** @AR5K_EEPROM_NO_SPUR, align 8
  %48 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %49 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %48, i32 0, i32 1
  %50 = load i8***, i8**** %49, align 8
  %51 = getelementptr inbounds i8**, i8*** %50, i64 2
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* %47, i8** %53, align 8
  br label %100

54:                                               ; preds = %1
  %55 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %56 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AR5K_EEPROM_VERSION_5_3, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %95, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @AR5K_EEPROM_N_SPUR_CHANS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = load i64, i64* %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @AR5K_EEPROM_READ(i64 %66, i8* %67)
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %71 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %70, i32 0, i32 1
  %72 = load i8***, i8**** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8**, i8*** %72, i64 %74
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  store i8* %69, i8** %77, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i32, i32* @AR5K_EEPROM_N_SPUR_CHANS, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @AR5K_EEPROM_READ(i64 %81, i8* %82)
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %86 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %85, i32 0, i32 1
  %87 = load i8***, i8**** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8**, i8*** %87, i64 %89
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  store i8* %84, i8** %92, align 8
  %93 = load i64, i64* %4, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %4, align 8
  br label %95

95:                                               ; preds = %65
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %61

98:                                               ; preds = %61
  br label %99

99:                                               ; preds = %98, %54
  br label %100

100:                                              ; preds = %99, %25
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @AR5K_EEPROM_CTL(i64) #1

declare dso_local i64 @AR5K_EEPROM_N_CTLS(i64) #1

declare dso_local i32 @AR5K_EEPROM_READ(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
