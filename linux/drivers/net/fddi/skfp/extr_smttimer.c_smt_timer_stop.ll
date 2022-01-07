; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smttimer.c_smt_timer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smttimer.c_smt_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.smt_timer* }
%struct.smt_timer = type { i64, %struct.smt_timer*, i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_timer_stop(%struct.s_smc* %0, %struct.smt_timer* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.smt_timer*, align 8
  %5 = alloca %struct.smt_timer**, align 8
  %6 = alloca %struct.smt_timer*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.smt_timer* %1, %struct.smt_timer** %4, align 8
  %7 = load i32, i32* @FALSE, align 4
  %8 = load %struct.smt_timer*, %struct.smt_timer** %4, align 8
  %9 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %11 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.smt_timer*, %struct.smt_timer** %12, align 8
  %14 = load %struct.smt_timer*, %struct.smt_timer** %4, align 8
  %15 = icmp eq %struct.smt_timer* %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.smt_timer*, %struct.smt_timer** %4, align 8
  %18 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %17, i32 0, i32 1
  %19 = load %struct.smt_timer*, %struct.smt_timer** %18, align 8
  %20 = icmp ne %struct.smt_timer* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %23 = call i32 @hwt_stop(%struct.s_smc* %22)
  br label %24

24:                                               ; preds = %21, %16, %2
  %25 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %26 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.smt_timer** %27, %struct.smt_timer*** %5, align 8
  br label %28

28:                                               ; preds = %57, %24
  %29 = load %struct.smt_timer**, %struct.smt_timer*** %5, align 8
  %30 = load %struct.smt_timer*, %struct.smt_timer** %29, align 8
  store %struct.smt_timer* %30, %struct.smt_timer** %6, align 8
  %31 = icmp ne %struct.smt_timer* %30, null
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %34 = load %struct.smt_timer*, %struct.smt_timer** %4, align 8
  %35 = icmp eq %struct.smt_timer* %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %38 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %37, i32 0, i32 1
  %39 = load %struct.smt_timer*, %struct.smt_timer** %38, align 8
  %40 = load %struct.smt_timer**, %struct.smt_timer*** %5, align 8
  store %struct.smt_timer* %39, %struct.smt_timer** %40, align 8
  %41 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %42 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %41, i32 0, i32 1
  %43 = load %struct.smt_timer*, %struct.smt_timer** %42, align 8
  %44 = icmp ne %struct.smt_timer* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %47 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %50 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %49, i32 0, i32 1
  %51 = load %struct.smt_timer*, %struct.smt_timer** %50, align 8
  %52 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %48
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %45, %36
  br label %60

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %59 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %58, i32 0, i32 1
  store %struct.smt_timer** %59, %struct.smt_timer*** %5, align 8
  br label %28

60:                                               ; preds = %55, %28
  ret void
}

declare dso_local i32 @hwt_stop(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
