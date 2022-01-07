; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_StandBy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_StandBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda_state = type { i32*, i32 }

@EB12 = common dso_local global i64 0, align 8
@EB18 = common dso_local global i64 0, align 8
@EB21 = common dso_local global i64 0, align 8
@EP3 = common dso_local global i64 0, align 8
@EB23 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda_state*)* @StandBy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StandBy(%struct.tda_state* %0) #0 {
  %2 = alloca %struct.tda_state*, align 8
  %3 = alloca i32, align 4
  store %struct.tda_state* %0, %struct.tda_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %1
  %5 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %6 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @EB12, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, -33
  store i32 %11, i32* %9, align 4
  %12 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %13 = load i64, i64* @EB12, align 8
  %14 = call i32 @UpdateReg(%struct.tda_state* %12, i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %70

18:                                               ; preds = %4
  %19 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %20 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @EB18, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -132
  store i32 %25, i32* %23, align 4
  %26 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %27 = load i64, i64* @EB18, align 8
  %28 = call i32 @UpdateReg(%struct.tda_state* %26, i64 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %70

32:                                               ; preds = %18
  %33 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %34 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @EB21, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, 3
  store i32 %39, i32* %37, align 4
  %40 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %41 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %44 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @EP3, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %49 = load i64, i64* @EP3, align 8
  %50 = call i32 @UpdateReg(%struct.tda_state* %48, i64 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %32
  br label %70

54:                                               ; preds = %32
  %55 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %56 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @EB23, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -7
  store i32 %61, i32* %59, align 4
  %62 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %63 = load i64, i64* @EB21, align 8
  %64 = load i64, i64* @EB23, align 8
  %65 = call i32 @UpdateRegs(%struct.tda_state* %62, i64 %63, i64 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %70

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %68, %53, %31, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @UpdateReg(%struct.tda_state*, i64) #1

declare dso_local i32 @UpdateRegs(%struct.tda_state*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
