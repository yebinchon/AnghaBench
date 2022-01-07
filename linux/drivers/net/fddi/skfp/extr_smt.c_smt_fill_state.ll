; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.smt_p_state = type { i32, i32, i64 }

@SMT_P_STATE = common dso_local global i32 0, align 4
@SMT_ST_WRAPPED = common dso_local global i32 0, align 4
@SMT_ST_TWISTED_A = common dso_local global i32 0, align 4
@SMT_ST_TWISTED_B = common dso_local global i32 0, align 4
@SMT_ST_ROOTED_S = common dso_local global i32 0, align 4
@SMT_ST_SYNC_SERVICE = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i64 0, align 8
@SMT_ST_MY_DUPA = common dso_local global i32 0, align 4
@SMT_ST_UNA_DUPA = common dso_local global i32 0, align 4
@SMT_ST_SRF = common dso_local global i32 0, align 4
@SMT_ST_UNATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.smt_p_state*)* @smt_fill_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smt_fill_state(%struct.s_smc* %0, %struct.smt_p_state* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.smt_p_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.smt_p_state* %1, %struct.smt_p_state** %4, align 8
  %7 = load %struct.smt_p_state*, %struct.smt_p_state** %4, align 8
  %8 = load i32, i32* @SMT_P_STATE, align 4
  %9 = call i32 @SMTSETPARA(%struct.smt_p_state* %7, i32 %8)
  %10 = load %struct.smt_p_state*, %struct.smt_p_state** %4, align 8
  %11 = getelementptr inbounds %struct.smt_p_state, %struct.smt_p_state* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @SMT_ST_WRAPPED, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %23 = call i32 @pcm_status_twisted(%struct.s_smc* %22)
  store i32 %23, i32* %6, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @SMT_ST_TWISTED_A, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @SMT_ST_TWISTED_B, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %40 = call i64 @pcm_rooted_station(%struct.s_smc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @SMT_ST_ROOTED_S, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %48 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @SMT_ST_SYNC_SERVICE, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %46
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.smt_p_state*, %struct.smt_p_state** %4, align 8
  %62 = getelementptr inbounds %struct.smt_p_state, %struct.smt_p_state* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %64 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i64, i64* @MAC0, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load i32, i32* @SMT_ST_MY_DUPA, align 4
  br label %75

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %78 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i64, i64* @MAC0, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @SMT_ST_UNA_DUPA, align 4
  br label %89

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = or i32 %76, %90
  %92 = load %struct.smt_p_state*, %struct.smt_p_state** %4, align 8
  %93 = getelementptr inbounds %struct.smt_p_state, %struct.smt_p_state* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  ret void
}

declare dso_local i32 @SMTSETPARA(%struct.smt_p_state*, i32) #1

declare dso_local i32 @pcm_status_twisted(%struct.s_smc*) #1

declare dso_local i64 @pcm_rooted_station(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
