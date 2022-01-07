; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_fill_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smt_p_policy = type { i32, i32 }

@smt_fill_policy.ansi_weirdness = internal constant [16 x i32] [i32 0, i32 7, i32 5, i32 3, i32 8, i32 1, i32 6, i32 4, i32 9, i32 10, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@SMT_P_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.smt_p_policy*)* @smt_fill_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smt_fill_policy(%struct.s_smc* %0, %struct.smt_p_policy* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.smt_p_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.smt_p_policy* %1, %struct.smt_p_policy** %4, align 8
  %9 = load %struct.smt_p_policy*, %struct.smt_p_policy** %4, align 8
  %10 = load i32, i32* @SMT_P_POLICY, align 4
  %11 = call i32 @SMTSETPARA(%struct.smt_p_policy* %9, i32 %10)
  store i32 0, i32* %8, align 4
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %5, align 4
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @smt_fill_policy.ansi_weirdness, i64 0, i64 0), i32** %6, align 8
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %39 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.smt_p_policy*, %struct.smt_p_policy** %4, align 8
  %43 = getelementptr inbounds %struct.smt_p_policy, %struct.smt_p_policy* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.smt_p_policy*, %struct.smt_p_policy** %4, align 8
  %46 = getelementptr inbounds %struct.smt_p_policy, %struct.smt_p_policy* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i32 @SMTSETPARA(%struct.smt_p_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
