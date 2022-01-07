; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.s_phy*, %struct.TYPE_2__ }
%struct.s_phy = type { i64, i32, %struct.fddi_mib_p* }
%struct.fddi_mib_p = type { i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@PS = common dso_local global i32 0, align 4
@SMT_SAS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PCM %c: state %s%s, event %s\00", align 1
@AFLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ACTIONS \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pcm_states = common dso_local global i32* null, align 8
@pcm_events = common dso_local global i32* null, align 8
@PC5_SIGNAL = common dso_local global i32 0, align 4
@PC3_CONNECT = common dso_local global i32 0, align 4
@PC8_ACTIVE = common dso_local global i32 0, align 4
@SMT_EVENT_PORT_PATH_CHANGE = common dso_local global i32 0, align 4
@INDEX_PORT = common dso_local global i64 0, align 8
@PC0_OFF = common dso_local global i32 0, align 4
@PC2_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcm(%struct.s_smc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s_phy*, align 8
  %10 = alloca %struct.fddi_mib_p*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SMT_SAS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %119

22:                                               ; preds = %14, %3
  %23 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %24 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %23, i32 0, i32 0
  %25 = load %struct.s_phy*, %struct.s_phy** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %25, i64 %27
  store %struct.s_phy* %28, %struct.s_phy** %9, align 8
  %29 = load %struct.s_phy*, %struct.s_phy** %9, align 8
  %30 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %29, i32 0, i32 2
  %31 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %30, align 8
  store %struct.fddi_mib_p* %31, %struct.fddi_mib_p** %10, align 8
  %32 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %33 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %70, %22
  %36 = load %struct.s_phy*, %struct.s_phy** %9, align 8
  %37 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %40 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AFLAG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32*, i32** @pcm_states, align 8
  %48 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %49 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AFLAG, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %47, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** @pcm_events, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DB_PCM(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %46, i32 %56, i32 %61)
  %63 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %64 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  %66 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %67 = load %struct.s_phy*, %struct.s_phy** %9, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @pcm_fsm(%struct.s_smc* %66, %struct.s_phy* %67, i32 %68)
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %35
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %73 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %35, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @PC5_SIGNAL, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @PC3_CONNECT, align 4
  %82 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %83 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %88

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %87 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %90 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @PC8_ACTIVE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %100 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PC8_ACTIVE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98, %94
  %105 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %106 = load i32, i32* @SMT_EVENT_PORT_PATH_CHANGE, align 4
  %107 = load i64, i64* @INDEX_PORT, align 8
  %108 = load %struct.s_phy*, %struct.s_phy** %9, align 8
  %109 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @smt_srf_event(%struct.s_smc* %105, i32 %106, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %104, %98, %88
  %115 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @pcm_state_change(%struct.s_smc* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %21
  ret void
}

declare dso_local i32 @DB_PCM(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @pcm_fsm(%struct.s_smc*, %struct.s_phy*, i32) #1

declare dso_local i32 @smt_srf_event(%struct.s_smc*, i32, i32, i32) #1

declare dso_local i32 @pcm_state_change(%struct.s_smc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
