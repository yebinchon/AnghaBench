; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_echo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }
%struct.smt_p_echo = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMT_P_ECHODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.smt_p_echo*, i64, i32)* @smt_fill_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smt_fill_echo(%struct.s_smc* %0, %struct.smt_p_echo* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.s_smc*, align 8
  %6 = alloca %struct.smt_p_echo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %5, align 8
  store %struct.smt_p_echo* %1, %struct.smt_p_echo** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %11 = call i32 @SK_UNUSED(%struct.s_smc* %10)
  %12 = load %struct.smt_p_echo*, %struct.smt_p_echo** %6, align 8
  %13 = load i32, i32* @SMT_P_ECHODATA, align 4
  %14 = call i32 @SMTSETPARA(%struct.smt_p_echo* %12, i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.smt_p_echo*, %struct.smt_p_echo** %6, align 8
  %17 = getelementptr inbounds %struct.smt_p_echo, %struct.smt_p_echo* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.smt_p_echo*, %struct.smt_p_echo** %6, align 8
  %20 = getelementptr inbounds %struct.smt_p_echo, %struct.smt_p_echo* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %9, align 8
  br label %22

22:                                               ; preds = %31, %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, 13
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %8, align 4
  br label %22

34:                                               ; preds = %22
  ret void
}

declare dso_local i32 @SK_UNUSED(%struct.s_smc*) #1

declare dso_local i32 @SMTSETPARA(%struct.smt_p_echo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
