; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_ecm.c_ecm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_ecm.c_ecm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ECM : state %s%s event %s\00", align 1
@AFLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ACTIONS \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ecm_states = common dso_local global i32* null, align 8
@ecm_events = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecm(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %40, %2
  %7 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %8 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AFLAG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %16 = load i32*, i32** @ecm_states, align 8
  %17 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %18 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AFLAG, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %16, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @ecm_events, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DB_ECM(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %26, i32 %31)
  %33 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %34 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ecm_fsm(%struct.s_smc* %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %6
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %43 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %6, label %47

47:                                               ; preds = %40
  %48 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %49 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %50 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ecm_state_change(%struct.s_smc* %48, i32 %52)
  ret void
}

declare dso_local i32 @DB_ECM(i8*, i8*, i32, i32) #1

declare dso_local i32 @ecm_fsm(%struct.s_smc*, i32) #1

declare dso_local i32 @ecm_state_change(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
