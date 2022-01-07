; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_set_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_set_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TICKS_PER_SECOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_set_timestamp(%struct.s_smc* %0, i64* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = call i32 (...) @smt_get_time()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = mul nsw i32 %8, 100
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @TICKS_PER_SECOND, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sdiv i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 31
  %17 = and i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = load i64*, i64** %4, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 23
  %23 = sext i32 %22 to i64
  %24 = load i64*, i64** %4, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 15
  %28 = sext i32 %27 to i64
  %29 = load i64*, i64** %4, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 3
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 7
  %33 = sext i32 %32 to i64
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 4
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %42 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %50 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %4, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 7
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %58 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %2
  %63 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %64 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %2
  %67 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %68 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %74 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  ret void
}

declare dso_local i32 @smt_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
