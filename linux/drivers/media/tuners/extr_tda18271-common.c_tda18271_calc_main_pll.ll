; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c_tda18271_calc_main_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c_tda18271_calc_main_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@MAIN_PLL = common dso_local global i32 0, align 4
@R_MPD = common dso_local global i64 0, align 8
@R_MD1 = common dso_local global i64 0, align 8
@R_MD2 = common dso_local global i64 0, align 8
@R_MD3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_calc_main_pll(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda18271_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.tda18271_priv*, %struct.tda18271_priv** %12, align 8
  store %struct.tda18271_priv* %13, %struct.tda18271_priv** %5, align 8
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %15 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = load i32, i32* @MAIN_PLL, align 4
  %19 = call i32 @tda18271_lookup_pll_map(%struct.dvb_frontend* %17, i32 %18, i32* %4, i32* %8, i32* %7)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @tda_fail(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %57

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = and i32 127, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @R_MPD, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 %27, i8* %30, align 1
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sdiv i32 %32, 1000
  %34 = mul nsw i32 %31, %33
  %35 = shl i32 %34, 7
  %36 = sdiv i32 %35, 125
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 127, %38
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* @R_MD1, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 %40, i8* %43, align 1
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 255, %45
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* @R_MD2, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %47, i8* %50, align 1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 255, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* @R_MD3, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %56, align 1
  br label %57

57:                                               ; preds = %24, %23
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i32 @tda18271_lookup_pll_map(%struct.dvb_frontend*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @tda_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
