; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_ecm.c_prop_actions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_ecm.c_prop_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RS_EVENT = common dso_local global i32 0, align 4
@SMT_E0108 = common dso_local global i32 0, align 4
@SMT_E0108_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ECM : prop_actions - trace_prop %lu\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ECM : prop_actions - in %d out %d\00", align 1
@ENTITY_MAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ECM : initiate TRACE on PHY %c\00", align 1
@PA = common dso_local global i8 0, align 1
@EVENT_PCM = common dso_local global i64 0, align 8
@PC_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"ECM : propagate TRACE on PHY B\00", align 1
@EVENT_PCMB = common dso_local global i64 0, align 8
@PB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"ECM : propagate TRACE on PHY A\00", align 1
@EVENT_PCMA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"ECM : TRACE terminated\00", align 1
@PT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @prop_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prop_actions(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = load i32, i32* @RS_EVENT, align 4
  %7 = call i32 @RS_SET(%struct.s_smc* %5, i32 %6)
  %8 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %9 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %25 [
    i32 128, label %12
    i32 130, label %15
    i32 129, label %20
  ]

12:                                               ; preds = %1
  %13 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %14 = call i32 @pcm_get_s_port(%struct.s_smc* %13)
  store i32 %14, i32* %4, align 4
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %17 = call i32 @cfm_get_mac_input(%struct.s_smc* %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %19 = call i32 @cfm_get_mac_output(%struct.s_smc* %18)
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %22 = load i32, i32* @SMT_E0108, align 4
  %23 = load i32, i32* @SMT_E0108_MSG, align 4
  %24 = call i32 @SMT_PANIC(%struct.s_smc* %21, i32 %22, i32 %23)
  br label %110

25:                                               ; preds = %1, %15, %12
  %26 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %27 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @DB_ECM(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i8*, ...) @DB_ECM(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %35 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ENTITY_MAC, align 4
  %39 = call i32 @ENTITY_BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %25
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 65, %43
  %45 = load i8, i8* @PA, align 1
  %46 = sext i8 %45 to i32
  %47 = sub nsw i32 %44, %46
  %48 = call i32 (i8*, ...) @DB_ECM(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %50 = load i64, i64* @EVENT_PCM, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i32, i32* @PC_TRACE, align 4
  %55 = call i32 @queue_event(%struct.s_smc* %49, i64 %53, i32 %54)
  br label %106

56:                                               ; preds = %25
  %57 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %58 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8, i8* @PA, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 @ENTITY_PHY(i32 %62)
  %64 = call i32 @ENTITY_BIT(i32 %63)
  %65 = and i32 %60, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %56
  %68 = load i32, i32* %4, align 4
  %69 = load i8, i8* @PA, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @DB_ECM(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %75 = load i64, i64* @EVENT_PCMB, align 8
  %76 = load i32, i32* @PC_TRACE, align 4
  %77 = call i32 @queue_event(%struct.s_smc* %74, i64 %75, i32 %76)
  br label %105

78:                                               ; preds = %67, %56
  %79 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %80 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PB, align 4
  %84 = call i32 @ENTITY_PHY(i32 %83)
  %85 = call i32 @ENTITY_BIT(i32 %84)
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @PB, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = call i32 (i8*, ...) @DB_ECM(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %94 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %95 = load i64, i64* @EVENT_PCMA, align 8
  %96 = load i32, i32* @PC_TRACE, align 4
  %97 = call i32 @queue_event(%struct.s_smc* %94, i64 %95, i32 %96)
  br label %104

98:                                               ; preds = %88, %78
  %99 = call i32 (i8*, ...) @DB_ECM(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @PT_PENDING, align 4
  %101 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %102 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %72
  br label %106

106:                                              ; preds = %105, %42
  %107 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %108 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %20
  ret void
}

declare dso_local i32 @RS_SET(%struct.s_smc*, i32) #1

declare dso_local i32 @pcm_get_s_port(%struct.s_smc*) #1

declare dso_local i32 @cfm_get_mac_input(%struct.s_smc*) #1

declare dso_local i32 @cfm_get_mac_output(%struct.s_smc*) #1

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @DB_ECM(i8*, ...) #1

declare dso_local i32 @ENTITY_BIT(i32) #1

declare dso_local i32 @queue_event(%struct.s_smc*, i64, i32) #1

declare dso_local i32 @ENTITY_PHY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
