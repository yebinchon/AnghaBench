; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_CalcMainPLL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_CalcMainPLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda_state = type { i32* }

@m_Main_PLL_Map = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPD = common dso_local global i64 0, align 8
@MD1 = common dso_local global i64 0, align 8
@MD2 = common dso_local global i64 0, align 8
@MD3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda_state*, i32)* @CalcMainPLL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalcMainPLL(%struct.tda_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tda_state* %0, %struct.tda_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @m_Main_PLL_Map, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @SearchMap3(i32 %10, i32 %11, i32* %6, i32* %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

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
  %27 = and i32 %26, 119
  %28 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %29 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @MPD, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 127
  %36 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %37 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @MD1, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %45 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @MD2, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %52 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @MD3, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %57 = load i64, i64* @MPD, align 8
  %58 = load i64, i64* @MD3, align 8
  %59 = call i32 @UpdateRegs(%struct.tda_state* %56, i64 %57, i64 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %17, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
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
