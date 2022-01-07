; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_fsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_fsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }
%struct.smt_p_fsc = type { i8*, i8*, i64, i64 }

@SMT_P_FSC = common dso_local global i32 0, align 4
@INDEX_MAC = common dso_local global i8* null, align 8
@FSC_TYPE0 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.smt_p_fsc*)* @smt_fill_fsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smt_fill_fsc(%struct.s_smc* %0, %struct.smt_p_fsc* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.smt_p_fsc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.smt_p_fsc* %1, %struct.smt_p_fsc** %4, align 8
  %5 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %6 = call i32 @SK_UNUSED(%struct.s_smc* %5)
  %7 = load %struct.smt_p_fsc*, %struct.smt_p_fsc** %4, align 8
  %8 = load i32, i32* @SMT_P_FSC, align 4
  %9 = call i32 @SMTSETPARA(%struct.smt_p_fsc* %7, i32 %8)
  %10 = load %struct.smt_p_fsc*, %struct.smt_p_fsc** %4, align 8
  %11 = getelementptr inbounds %struct.smt_p_fsc, %struct.smt_p_fsc* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** @INDEX_MAC, align 8
  %13 = load %struct.smt_p_fsc*, %struct.smt_p_fsc** %4, align 8
  %14 = getelementptr inbounds %struct.smt_p_fsc, %struct.smt_p_fsc* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.smt_p_fsc*, %struct.smt_p_fsc** %4, align 8
  %16 = getelementptr inbounds %struct.smt_p_fsc, %struct.smt_p_fsc* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i8*, i8** @FSC_TYPE0, align 8
  %18 = load %struct.smt_p_fsc*, %struct.smt_p_fsc** %4, align 8
  %19 = getelementptr inbounds %struct.smt_p_fsc, %struct.smt_p_fsc* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  ret void
}

declare dso_local i32 @SK_UNUSED(%struct.s_smc*) #1

declare dso_local i32 @SMTSETPARA(%struct.smt_p_fsc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
