; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_disable_ptp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_disable_ptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NIG_REG_P1_LLH_PTP_TO_HOST = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_TO_HOST = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_TLLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_TLLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_TLLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_TLLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_PTP_EN = common dso_local global i32 0, align 4
@NIG_REG_P0_PTP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_disable_ptp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_disable_ptp(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = call i32 @BP_PORT(%struct.bnx2x* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @NIG_REG_P1_LLH_PTP_TO_HOST, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @NIG_REG_P0_LLH_PTP_TO_HOST, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call i32 @REG_WR(%struct.bnx2x* %6, i32 %14, i32 0)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @NIG_REG_P1_LLH_PTP_PARAM_MASK, align 4
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @NIG_REG_P0_LLH_PTP_PARAM_MASK, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @REG_WR(%struct.bnx2x* %16, i32 %24, i32 2047)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @NIG_REG_P1_LLH_PTP_RULE_MASK, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @NIG_REG_P0_LLH_PTP_RULE_MASK, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @REG_WR(%struct.bnx2x* %26, i32 %34, i32 16383)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @NIG_REG_P1_TLLH_PTP_PARAM_MASK, align 4
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @NIG_REG_P0_TLLH_PTP_PARAM_MASK, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @REG_WR(%struct.bnx2x* %36, i32 %44, i32 2047)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @NIG_REG_P1_TLLH_PTP_RULE_MASK, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @NIG_REG_P0_TLLH_PTP_RULE_MASK, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i32 @REG_WR(%struct.bnx2x* %46, i32 %54, i32 16383)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @NIG_REG_P1_PTP_EN, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @NIG_REG_P0_PTP_EN, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @REG_WR(%struct.bnx2x* %56, i32 %64, i32 0)
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
