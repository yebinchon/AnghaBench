; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_cfm.c_cfm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_cfm.c_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"CFM : state %s%s event %s\00", align 1
@AFLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ACTIONS \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cfm_states = common dso_local global i32* null, align 8
@cfm_events = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SC9_C_WRAP_A = common dso_local global i32 0, align 4
@PA = common dso_local global i64 0, align 8
@PM_PEER = common dso_local global i64 0, align 8
@SC10_C_WRAP_B = common dso_local global i32 0, align 4
@PB = common dso_local global i64 0, align 8
@SC11_C_WRAP_S = common dso_local global i32 0, align 4
@PS = common dso_local global i64 0, align 8
@TS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SMT_COND_SMT_PEER_WRAP = common dso_local global i32 0, align 4
@cf_to_ptype = common dso_local global i32* null, align 8
@MAC0 = common dso_local global i64 0, align 8
@INDEX_MAC = common dso_local global i32 0, align 4
@SMT_EVENT_MAC_PATH_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfm(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %9 = call i32 @all_selection_criteria(%struct.s_smc* %8)
  %10 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @cem_priv_state(%struct.s_smc* %10, i32 %11)
  %13 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %14 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %51, %2
  %18 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AFLAG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32*, i32** @cfm_states, align 8
  %28 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %29 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AFLAG, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %27, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @cfm_events, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DB_CFM(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %37, i32 %42)
  %44 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %45 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  %48 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @cfm_fsm(%struct.s_smc* %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %17
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %54 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %17, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %6, align 4
  %60 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %61 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SC9_C_WRAP_A, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %68 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i64, i64* @PA, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PM_PEER, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %122, label %76

76:                                               ; preds = %66, %58
  %77 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %78 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SC10_C_WRAP_B, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %85 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* @PB, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PM_PEER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %122, label %93

93:                                               ; preds = %83, %76
  %94 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %95 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SC11_C_WRAP_S, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %93
  %101 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %102 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i64, i64* @PS, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PM_PEER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %100
  %111 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %112 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i64, i64* @PS, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @TS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %110, %83, %66
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %110, %100, %93
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %127 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %125, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %133 = load i32, i32* @SMT_COND_SMT_PEER_WRAP, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @smt_srf_event(%struct.s_smc* %132, i32 %133, i32 0, i32 %134)
  br label %136

136:                                              ; preds = %131, %124
  %137 = load i32*, i32** @cf_to_ptype, align 8
  %138 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %139 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %146 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i64, i64* @MAC0, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 4
  %152 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %153 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %154 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @cfm_state_change(%struct.s_smc* %152, i32 %156)
  ret void
}

declare dso_local i32 @all_selection_criteria(%struct.s_smc*) #1

declare dso_local i32 @cem_priv_state(%struct.s_smc*, i32) #1

declare dso_local i32 @DB_CFM(i8*, i8*, i32, i32) #1

declare dso_local i32 @cfm_fsm(%struct.s_smc*, i32) #1

declare dso_local i32 @smt_srf_event(%struct.s_smc*, i32, i32, i32) #1

declare dso_local i32 @cfm_state_change(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
