; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_PowerScanInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_PowerScanInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda_state = type { i32* }

@EP3 = common dso_local global i64 0, align 8
@EP4 = common dso_local global i64 0, align 8
@EB18 = common dso_local global i64 0, align 8
@EB21 = common dso_local global i64 0, align 8
@EB23 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda_state*)* @PowerScanInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PowerScanInit(%struct.tda_state* %0) #0 {
  %2 = alloca %struct.tda_state*, align 8
  %3 = alloca i32, align 4
  store %struct.tda_state* %0, %struct.tda_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %1
  %5 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %6 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @EP3, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, -32
  %12 = or i32 %11, 18
  %13 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %14 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @EP3, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %12, i32* %17, align 4
  %18 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %19 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @EP4, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -32
  %25 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %26 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @EP4, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %24, i32* %29, align 4
  %30 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %31 = load i64, i64* @EP3, align 8
  %32 = load i64, i64* @EP4, align 8
  %33 = call i32 @UpdateRegs(%struct.tda_state* %30, i64 %31, i64 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %89

37:                                               ; preds = %4
  %38 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %39 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @EB18, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -4
  %45 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %46 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @EB18, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %51 = load i64, i64* @EB18, align 8
  %52 = call i32 @UpdateReg(%struct.tda_state* %50, i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %89

56:                                               ; preds = %37
  %57 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %58 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @EB21, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -4
  %64 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %65 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @EB21, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %70 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @EB23, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, 6
  %76 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %77 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @EB23, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %82 = load i64, i64* @EB21, align 8
  %83 = load i64, i64* @EB23, align 8
  %84 = call i32 @UpdateRegs(%struct.tda_state* %81, i64 %82, i64 %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %56
  br label %89

88:                                               ; preds = %56
  br label %89

89:                                               ; preds = %88, %87, %55, %36
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @UpdateRegs(%struct.tda_state*, i64, i64) #1

declare dso_local i32 @UpdateReg(%struct.tda_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
