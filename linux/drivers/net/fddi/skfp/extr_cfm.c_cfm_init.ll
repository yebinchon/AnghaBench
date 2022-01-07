; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_cfm.c_cfm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_cfm.c_cfm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@SC0_ISOLATED = common dso_local global i32 0, align 4
@PA = common dso_local global i64 0, align 8
@PB = common dso_local global i64 0, align 8
@CEM_PST_DOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfm_init(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @SC0_ISOLATED, align 4
  %4 = call i32 @ACTIONS(i32 %3)
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %9 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %12 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %15 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i64, i64* @PA, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %21 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i64, i64* @PB, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** @CEM_PST_DOWN, align 8
  %27 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %28 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* @PA, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %26, i8** %32, align 8
  %33 = load i8*, i8** @CEM_PST_DOWN, align 8
  %34 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %35 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* @PB, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %33, i8** %39, align 8
  ret void
}

declare dso_local i32 @ACTIONS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
