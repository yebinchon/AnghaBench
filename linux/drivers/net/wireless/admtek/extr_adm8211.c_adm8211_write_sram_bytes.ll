; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_write_sram_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_write_sram_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@WEPCTL = common dso_local global i32 0, align 4
@ADM8211_REV_BA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @adm8211_write_sram_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8211_write_sram_bytes(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.adm8211_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.adm8211_priv*, %struct.adm8211_priv** %15, align 8
  store %struct.adm8211_priv* %16, %struct.adm8211_priv** %9, align 8
  %17 = load i32, i32* @WEPCTL, align 4
  %18 = call i32 @ADM8211_CSR_READ(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %20 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ADM8211_REV_BA, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %36, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %11, align 4
  %48 = udiv i32 %47, 2
  %49 = add i32 %46, %48
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @adm8211_write_sram(%struct.ieee80211_hw* %45, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, 2
  store i32 %54, i32* %11, align 4
  br label %27

55:                                               ; preds = %27
  br label %104

56:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %100, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %103

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 0
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 0
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %68, %75
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %78, 2
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 16
  %84 = or i32 %76, %83
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 3
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 24
  %92 = or i32 %84, %91
  store i32 %92, i32* %13, align 4
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %11, align 4
  %96 = udiv i32 %95, 4
  %97 = add i32 %94, %96
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @adm8211_write_sram(%struct.ieee80211_hw* %93, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %61
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %101, 4
  store i32 %102, i32* %11, align 4
  br label %57

103:                                              ; preds = %57
  br label %104

104:                                              ; preds = %103, %55
  %105 = load i32, i32* @WEPCTL, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @ADM8211_CSR_WRITE(i32 %105, i32 %106)
  ret void
}

declare dso_local i32 @ADM8211_CSR_READ(i32) #1

declare dso_local i32 @adm8211_write_sram(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
