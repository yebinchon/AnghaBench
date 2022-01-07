; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_smt_free_mbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_smt_free_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.s_smc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [29 x i8] c"free_mbuf: sm_use_count = %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"free SMbuf: mb = %p\00", align 1
@HWM_E0003 = common dso_local global i32 0, align 4
@HWM_E0003_MSG = common dso_local global i32 0, align 4
@mb_free = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_free_mbuf(%struct.s_smc* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %6 = icmp ne %struct.TYPE_11__* %5, null
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 -1
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %9, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = call i32 @DB_GEN(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %7
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = call i32 @DB_GEN(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %21)
  %23 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %24 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %33 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %36, align 8
  br label %37

37:                                               ; preds = %20, %7
  br label %43

38:                                               ; preds = %2
  %39 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %40 = load i32, i32* @HWM_E0003, align 4
  %41 = load i32, i32* @HWM_E0003_MSG, align 4
  %42 = call i32 @SMT_PANIC(%struct.s_smc* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @DB_GEN(i32, i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
