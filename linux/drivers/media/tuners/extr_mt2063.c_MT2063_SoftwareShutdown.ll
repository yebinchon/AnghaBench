; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_SoftwareShutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_SoftwareShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt2063_state = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MT2063_REG_PWR_1 = common dso_local global i64 0, align 8
@MT2063_REG_BYP_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt2063_state*, i32)* @MT2063_SoftwareShutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MT2063_SoftwareShutdown(%struct.mt2063_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mt2063_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt2063_state* %0, %struct.mt2063_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %11 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @MT2063_REG_PWR_1, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, 4
  store i32 %16, i32* %14, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %19 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @MT2063_REG_PWR_1, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -5
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %17, %9
  %26 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %27 = load i64, i64* @MT2063_REG_PWR_1, align 8
  %28 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %29 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @MT2063_REG_PWR_1, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @mt2063_write(%struct.mt2063_state* %26, i64 %27, i32* %32, i32 1)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %82

36:                                               ; preds = %25
  %37 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %38 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @MT2063_REG_BYP_CTRL, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 159
  %44 = or i32 %43, 64
  %45 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %46 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @MT2063_REG_BYP_CTRL, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %51 = load i64, i64* @MT2063_REG_BYP_CTRL, align 8
  %52 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %53 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @MT2063_REG_BYP_CTRL, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @mt2063_write(%struct.mt2063_state* %50, i64 %51, i32* %56, i32 1)
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %61 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @MT2063_REG_BYP_CTRL, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 159
  %67 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %68 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @MT2063_REG_BYP_CTRL, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %73 = load i64, i64* @MT2063_REG_BYP_CTRL, align 8
  %74 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %75 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @MT2063_REG_BYP_CTRL, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = call i32 @mt2063_write(%struct.mt2063_state* %72, i64 %73, i32* %78, i32 1)
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %36, %25
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @mt2063_write(%struct.mt2063_state*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
