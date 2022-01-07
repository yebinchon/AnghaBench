; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/echo/extr_echo.c_lms_adapt_bg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/echo/extr_echo.c_lms_adapt_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oslec_state = type { i32, i32, i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oslec_state*, i32, i32)* @lms_adapt_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lms_adapt_bg(%struct.oslec_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oslec_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.oslec_state* %0, %struct.oslec_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %10, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 0, %20
  %22 = ashr i32 %19, %21
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %25 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %28 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %33 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %69, %23
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %42 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 16384
  %55 = ashr i32 %54, 15
  %56 = sext i32 %55 to i64
  %57 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %58 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %56
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  br label %69

69:                                               ; preds = %40
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  br label %36

72:                                               ; preds = %36
  br label %73

73:                                               ; preds = %105, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %73
  %77 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %78 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 16384
  %91 = ashr i32 %90, 15
  %92 = sext i32 %91 to i64
  %93 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %94 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %93, i32 0, i32 2
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %92
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  br label %105

105:                                              ; preds = %76
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %7, align 4
  br label %73

108:                                              ; preds = %73
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
