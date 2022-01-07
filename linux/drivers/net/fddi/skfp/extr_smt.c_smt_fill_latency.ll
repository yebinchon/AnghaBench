; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.smt_p_latency = type { i32, i32, i8*, i8* }

@SMT_P_LATENCY = common dso_local global i32 0, align 4
@SMT_DAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.smt_p_latency*)* @smt_fill_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smt_fill_latency(%struct.s_smc* %0, %struct.smt_p_latency* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.smt_p_latency*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.smt_p_latency* %1, %struct.smt_p_latency** %4, align 8
  %5 = load %struct.smt_p_latency*, %struct.smt_p_latency** %4, align 8
  %6 = load i32, i32* @SMT_P_LATENCY, align 4
  %7 = call i32 @SMTSETPARA(%struct.smt_p_latency* %5, i32 %6)
  %8 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %9 = call i8* @phy_index(%struct.s_smc* %8, i32 0)
  %10 = load %struct.smt_p_latency*, %struct.smt_p_latency** %4, align 8
  %11 = getelementptr inbounds %struct.smt_p_latency, %struct.smt_p_latency* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load %struct.smt_p_latency*, %struct.smt_p_latency** %4, align 8
  %13 = getelementptr inbounds %struct.smt_p_latency, %struct.smt_p_latency* %12, i32 0, i32 0
  store i32 10, i32* %13, align 8
  %14 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %15 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SMT_DAS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %22 = call i8* @phy_index(%struct.s_smc* %21, i32 1)
  %23 = load %struct.smt_p_latency*, %struct.smt_p_latency** %4, align 8
  %24 = getelementptr inbounds %struct.smt_p_latency, %struct.smt_p_latency* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.smt_p_latency*, %struct.smt_p_latency** %4, align 8
  %26 = getelementptr inbounds %struct.smt_p_latency, %struct.smt_p_latency* %25, i32 0, i32 1
  store i32 10, i32* %26, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.smt_p_latency*, %struct.smt_p_latency** %4, align 8
  %29 = getelementptr inbounds %struct.smt_p_latency, %struct.smt_p_latency* %28, i32 0, i32 2
  store i8* null, i8** %29, align 8
  %30 = load %struct.smt_p_latency*, %struct.smt_p_latency** %4, align 8
  %31 = getelementptr inbounds %struct.smt_p_latency, %struct.smt_p_latency* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @SMTSETPARA(%struct.smt_p_latency*, i32) #1

declare dso_local i8* @phy_index(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
