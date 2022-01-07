; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda_state*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.tda_state* %0) #0 {
  %2 = alloca %struct.tda_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tda_state* %0, %struct.tda_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 2, i32* %4, align 4
  store i32 7, i32* %5, align 4
  store i32 6, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 6, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 100, i32* %11, align 4
  %12 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %13 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %12, i32 0, i32 9
  store i64 0, i64* %13, align 8
  %14 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %15 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %14, i32 0, i32 0
  store i32 100, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 7
  %18 = shl i32 %17, 2
  %19 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %20 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 7
  %23 = shl i32 %22, 2
  %24 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %25 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 7
  %28 = shl i32 %27, 2
  %29 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %30 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 7
  %33 = shl i32 %32, 2
  %34 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %35 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %37 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %36, i32 0, i32 5
  store i32 32, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %42 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, 64
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 7
  %48 = shl i32 %47, 5
  %49 = or i32 %48, 15
  %50 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %51 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %56 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %59 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 2
  %62 = zext i1 %61 to i32
  %63 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %64 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
