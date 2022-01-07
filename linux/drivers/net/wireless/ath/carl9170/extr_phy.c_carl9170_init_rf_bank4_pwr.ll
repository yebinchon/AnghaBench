; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_rf_bank4_pwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_rf_bank4_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i32, i32, i32)* @carl9170_init_rf_bank4_pwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_init_rf_bank4_pwr(%struct.ar9170* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %29 [
    i32 129, label %22
    i32 128, label %25
    i32 130, label %28
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 10
  store i32 %24, i32* %8, align 4
  br label %33

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 10
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %4
  br label %33

29:                                               ; preds = %4
  %30 = call i32 (...) @BUG()
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %112

33:                                               ; preds = %28, %25, %22
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = srem i32 %37, 10
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 4800
  %43 = sdiv i32 %42, 5
  store i32 %43, i32* %17, align 4
  br label %49

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 4800
  %47 = sdiv i32 %46, 10
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @bitrev8(i32 %50)
  store i32 %51, i32* %17, align 4
  br label %70

52:                                               ; preds = %33
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 2484
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 2274
  %58 = sdiv i32 %57, 5
  %59 = add nsw i32 10, %58
  store i32 %59, i32* %17, align 4
  store i32 1, i32* %20, align 4
  br label %65

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 2272
  %63 = sdiv i32 %62, 5
  %64 = add nsw i32 16, %63
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %17, align 4
  %67 = mul nsw i32 %66, 4
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @bitrev8(i32 %68)
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %65, %49
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %18, align 4
  %73 = shl i32 %72, 3
  %74 = or i32 33, %73
  %75 = load i32, i32* %19, align 4
  %76 = shl i32 %75, 2
  %77 = or i32 %74, %76
  %78 = load i32, i32* %20, align 4
  %79 = shl i32 %78, 1
  %80 = or i32 %77, %79
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, 31
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, 31
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = shl i32 %85, 5
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %11, align 4
  %90 = ashr i32 %89, 5
  %91 = and i32 %90, 7
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = ashr i32 %92, 5
  %94 = and i32 %93, 7
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = shl i32 %95, 5
  %97 = load i32, i32* %13, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %16, align 4
  %99 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %100 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %99)
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @carl9170_regwrite(i32 1857712, i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @carl9170_regwrite(i32 1857768, i32 %103)
  %105 = call i32 (...) @carl9170_regwrite_finish()
  %106 = call i32 (...) @carl9170_regwrite_result()
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %70
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %112

111:                                              ; preds = %70
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %109, %29
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @carl9170_regwrite(i32, i32) #1

declare dso_local i32 @carl9170_regwrite_finish(...) #1

declare dso_local i32 @carl9170_regwrite_result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
