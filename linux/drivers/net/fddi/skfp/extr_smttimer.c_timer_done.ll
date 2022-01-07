; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smttimer.c_timer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smttimer.c_timer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.smt_timer* }
%struct.smt_timer = type { i64, i32, %struct.smt_timer*, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, i32)* @timer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_done(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.smt_timer*, align 8
  %7 = alloca %struct.smt_timer*, align 8
  %8 = alloca %struct.smt_timer**, align 8
  %9 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %11 = call i64 @hwt_read(%struct.s_smc* %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.smt_timer** %14, %struct.smt_timer*** %8, align 8
  %15 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.smt_timer*, %struct.smt_timer** %17, align 8
  store %struct.smt_timer* %18, %struct.smt_timer** %6, align 8
  br label %19

19:                                               ; preds = %54, %2
  %20 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %21 = icmp ne %struct.smt_timer* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %28, label %55

28:                                               ; preds = %26
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %31 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load i32, i32* @FALSE, align 4
  %36 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %37 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %39 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %44 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %43, i32 0, i32 2
  store %struct.smt_timer** %44, %struct.smt_timer*** %8, align 8
  %45 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %46 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %45, i32 0, i32 2
  %47 = load %struct.smt_timer*, %struct.smt_timer** %46, align 8
  store %struct.smt_timer* %47, %struct.smt_timer** %6, align 8
  br label %54

48:                                               ; preds = %28
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %51 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  store i64 0, i64* %5, align 8
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %34
  br label %19

55:                                               ; preds = %26
  %56 = load %struct.smt_timer**, %struct.smt_timer*** %8, align 8
  store %struct.smt_timer* null, %struct.smt_timer** %56, align 8
  %57 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %58 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.smt_timer*, %struct.smt_timer** %59, align 8
  store %struct.smt_timer* %60, %struct.smt_timer** %7, align 8
  %61 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %62 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %63 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.smt_timer* %61, %struct.smt_timer** %64, align 8
  %65 = load %struct.smt_timer*, %struct.smt_timer** %7, align 8
  store %struct.smt_timer* %65, %struct.smt_timer** %6, align 8
  br label %66

66:                                               ; preds = %78, %55
  %67 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %68 = icmp ne %struct.smt_timer* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %71 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %70, i32 0, i32 2
  %72 = load %struct.smt_timer*, %struct.smt_timer** %71, align 8
  store %struct.smt_timer* %72, %struct.smt_timer** %7, align 8
  %73 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %74 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %75 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @timer_event(%struct.s_smc* %73, i32 %76)
  br label %78

78:                                               ; preds = %69
  %79 = load %struct.smt_timer*, %struct.smt_timer** %7, align 8
  store %struct.smt_timer* %79, %struct.smt_timer** %6, align 8
  br label %66

80:                                               ; preds = %66
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %85 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %struct.smt_timer*, %struct.smt_timer** %86, align 8
  %88 = icmp ne %struct.smt_timer* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %91 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %92 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.smt_timer*, %struct.smt_timer** %93, align 8
  %95 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @hwt_start(%struct.s_smc* %90, i64 %96)
  br label %98

98:                                               ; preds = %89, %83, %80
  ret void
}

declare dso_local i64 @hwt_read(%struct.s_smc*) #1

declare dso_local i32 @timer_event(%struct.s_smc*, i32) #1

declare dso_local i32 @hwt_start(%struct.s_smc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
