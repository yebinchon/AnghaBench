; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_READBACK_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_read_eeprom(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.p54_common*, %struct.p54_common** %11, align 8
  store %struct.p54_common* %12, %struct.p54_common** %3, align 8
  store i64 8224, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* @EEPROM_READBACK_LEN, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %17 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 1289
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %21, 12
  store i64 %22, i64* %7, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 %24, 4
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kzalloc(i64 %27, i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %68

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @min(i64 %42, i64 %43)
  store i64 %44, i64* %6, align 8
  %45 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr i8, i8* %46, i64 %47
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @p54_download_eeprom(%struct.p54_common* %45, i8* %48, i64 %49, i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %68

56:                                               ; preds = %41
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %4, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %4, align 8
  br label %38

63:                                               ; preds = %38
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @p54_parse_eeprom(%struct.ieee80211_hw* %64, i8* %65, i64 %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %63, %55, %36
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @kfree(i8* %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @p54_download_eeprom(%struct.p54_common*, i8*, i64, i64) #1

declare dso_local i32 @p54_parse_eeprom(%struct.ieee80211_hw*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
