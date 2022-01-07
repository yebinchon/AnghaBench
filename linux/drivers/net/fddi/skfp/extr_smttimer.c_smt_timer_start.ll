; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smttimer.c_smt_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smttimer.c_smt_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.smt_timer* }
%struct.smt_timer = type { i32, i32, %struct.smt_timer*, i32, %struct.s_smc* }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_timer_start(%struct.s_smc* %0, %struct.smt_timer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.s_smc*, align 8
  %6 = alloca %struct.smt_timer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smt_timer**, align 8
  %10 = alloca %struct.smt_timer*, align 8
  %11 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %5, align 8
  store %struct.smt_timer* %1, %struct.smt_timer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 16
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %4
  %18 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %19 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %20 = call i32 @smt_timer_stop(%struct.s_smc* %18, %struct.smt_timer* %19)
  %21 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %22 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %23 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %22, i32 0, i32 4
  store %struct.s_smc* %21, %struct.s_smc** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %26 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %29 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %31 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.smt_timer*, %struct.smt_timer** %32, align 8
  %34 = icmp ne %struct.smt_timer* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %17
  %36 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %37 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %38 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.smt_timer* %36, %struct.smt_timer** %39, align 8
  %40 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %41 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %40, i32 0, i32 2
  store %struct.smt_timer* null, %struct.smt_timer** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %44 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @hwt_start(%struct.s_smc* %45, i32 %46)
  br label %106

48:                                               ; preds = %17
  %49 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %50 = call i32 @timer_done(%struct.s_smc* %49, i32 0)
  store i32 0, i32* %11, align 4
  %51 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %52 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.smt_timer** %53, %struct.smt_timer*** %9, align 8
  br label %54

54:                                               ; preds = %73, %48
  %55 = load %struct.smt_timer**, %struct.smt_timer*** %9, align 8
  %56 = load %struct.smt_timer*, %struct.smt_timer** %55, align 8
  store %struct.smt_timer* %56, %struct.smt_timer** %10, align 8
  %57 = icmp ne %struct.smt_timer* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.smt_timer*, %struct.smt_timer** %10, align 8
  %61 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %76

67:                                               ; preds = %58
  %68 = load %struct.smt_timer*, %struct.smt_timer** %10, align 8
  %69 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %67
  %74 = load %struct.smt_timer*, %struct.smt_timer** %10, align 8
  %75 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %74, i32 0, i32 2
  store %struct.smt_timer** %75, %struct.smt_timer*** %9, align 8
  br label %54

76:                                               ; preds = %66, %54
  %77 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %78 = load %struct.smt_timer**, %struct.smt_timer*** %9, align 8
  store %struct.smt_timer* %77, %struct.smt_timer** %78, align 8
  %79 = load %struct.smt_timer*, %struct.smt_timer** %10, align 8
  %80 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %81 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %80, i32 0, i32 2
  store %struct.smt_timer* %79, %struct.smt_timer** %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %86 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.smt_timer*, %struct.smt_timer** %10, align 8
  %88 = icmp ne %struct.smt_timer* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %76
  %90 = load %struct.smt_timer*, %struct.smt_timer** %6, align 8
  %91 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.smt_timer*, %struct.smt_timer** %10, align 8
  %94 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %89, %76
  %98 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %99 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %100 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load %struct.smt_timer*, %struct.smt_timer** %101, align 8
  %103 = getelementptr inbounds %struct.smt_timer, %struct.smt_timer* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @hwt_start(%struct.s_smc* %98, i32 %104)
  br label %106

106:                                              ; preds = %97, %35
  ret void
}

declare dso_local i32 @smt_timer_stop(%struct.s_smc*, %struct.smt_timer*) #1

declare dso_local i32 @hwt_start(%struct.s_smc*, i32) #1

declare dso_local i32 @timer_done(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
