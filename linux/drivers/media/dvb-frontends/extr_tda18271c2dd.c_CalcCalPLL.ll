; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_CalcCalPLL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_CalcCalPLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda_state = type { i32* }

@m_Cal_PLL_Map = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CPD = common dso_local global i64 0, align 8
@CD1 = common dso_local global i64 0, align 8
@CD2 = common dso_local global i64 0, align 8
@CD3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda_state*, i32)* @CalcCalPLL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalcCalPLL(%struct.tda_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tda_state* %0, %struct.tda_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @m_Cal_PLL_Map, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @SearchMap3(i32 %10, i32 %11, i32* %6, i32* %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %21, 16384
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @do_div(i32 %23, i32 16000000)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %28 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @CPD, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %36 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @CD1, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %44 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @CD2, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 255
  %50 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %51 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @CD3, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %56 = load i64, i64* @CPD, align 8
  %57 = load i64, i64* @CD3, align 8
  %58 = call i32 @UpdateRegs(%struct.tda_state* %55, i64 %56, i64 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %17, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @SearchMap3(i32, i32, i32*, i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @UpdateRegs(%struct.tda_state*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
