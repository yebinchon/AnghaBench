; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_ClearPowerMaskBits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_ClearPowerMaskBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt2063_state = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MT2063_ALL_SD = common dso_local global i32 0, align 4
@MT2063_REG_PWR_2 = common dso_local global i64 0, align 8
@MT2063_REG_PWR_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt2063_state*, i32)* @MT2063_ClearPowerMaskBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MT2063_ClearPowerMaskBits(%struct.mt2063_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mt2063_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt2063_state* %0, %struct.mt2063_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MT2063_ALL_SD, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = lshr i32 %14, 8
  %16 = xor i32 %15, -1
  %17 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %18 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @MT2063_REG_PWR_2, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %16
  store i32 %23, i32* %21, align 4
  %24 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %25 = load i64, i64* @MT2063_REG_PWR_2, align 8
  %26 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %27 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @MT2063_REG_PWR_2, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i32 @mt2063_write(%struct.mt2063_state* %24, i64 %25, i32* %30, i32 1)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %13, %2
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 255
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 255
  %41 = xor i32 %40, -1
  %42 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %43 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @MT2063_REG_PWR_1, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %41
  store i32 %48, i32* %46, align 4
  %49 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %50 = load i64, i64* @MT2063_REG_PWR_1, align 8
  %51 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %52 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @MT2063_REG_PWR_1, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = call i32 @mt2063_write(%struct.mt2063_state* %49, i64 %50, i32* %55, i32 1)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %38, %34
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @mt2063_write(%struct.mt2063_state*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
