; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_wow_add_disassoc_deauth_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_wow_add_disassoc_deauth_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@MAX_PATTERN_SIZE = common dso_local global i32 0, align 4
@MAX_PATTERN_MASK_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath9k_wow_add_disassoc_deauth_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_wow_add_disassoc_deauth_pattern(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 0
  %14 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  store %struct.ath_hw* %14, %struct.ath_hw** %3, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @MAX_PATTERN_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @MAX_PATTERN_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = load i32, i32* @MAX_PATTERN_SIZE, align 4
  %25 = call i32 @memset(i32* %20, i32 0, i32 %24)
  %26 = load i32, i32* @MAX_PATTERN_SIZE, align 4
  %27 = call i32 @memset(i32* %23, i32 0, i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %36, %1
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MAX_PATTERN_MASK_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %23, i64 %34
  store i32 255, i32* %35, align 4
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %20, i64 %41
  store i32 160, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 3
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 6
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %20, i64 %50
  %52 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %53 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @memcpy(i32* %51, i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 6
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %20, i64 %60
  %62 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %63 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32* %61, i32 %64, i32 %65)
  %67 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 254, i32* %67, align 16
  %68 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 3, i32* %68, align 4
  %69 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 192, i32* %69, align 8
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ath9k_hw_wow_apply_pattern(%struct.ath_hw* %70, i32* %20, i32* %23, i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %39
  br label %85

77:                                               ; preds = %39
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 192, i32* %80, align 16
  %81 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ath9k_hw_wow_apply_pattern(%struct.ath_hw* %81, i32* %20, i32* %23, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %77, %76
  %86 = load i32, i32* %6, align 4
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  ret i32 %86
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ath9k_hw_wow_apply_pattern(%struct.ath_hw*, i32*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
