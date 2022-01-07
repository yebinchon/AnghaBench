; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_configure_ptp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_configure_ptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NIG_REG_P1_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_TLLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_TLLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_TLLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_TLLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_TO_HOST = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_TO_HOST = common dso_local global i32 0, align 4
@NIG_REG_P1_PTP_EN = common dso_local global i32 0, align 4
@NIG_REG_P0_PTP_EN = common dso_local global i32 0, align 4
@NIG_REG_TIMESYNC_GEN_REG = common dso_local global i64 0, align 8
@tsgen_ctrl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to reset PHC drift register\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID = common dso_local global i32 0, align 4
@NIG_REG_P1_TLLH_PTP_BUF_SEQID = common dso_local global i32 0, align 4
@NIG_REG_P0_TLLH_PTP_BUF_SEQID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_configure_ptp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_configure_ptp(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i64], align 16
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = call i32 @BP_PORT(%struct.bnx2x* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @NIG_REG_P1_LLH_PTP_PARAM_MASK, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @NIG_REG_P0_LLH_PTP_PARAM_MASK, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i32 @REG_WR(%struct.bnx2x* %9, i32 %17, i32 2047)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @NIG_REG_P1_LLH_PTP_RULE_MASK, align 4
  br label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @NIG_REG_P0_LLH_PTP_RULE_MASK, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @REG_WR(%struct.bnx2x* %19, i32 %27, i32 16383)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @NIG_REG_P1_TLLH_PTP_PARAM_MASK, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @NIG_REG_P0_TLLH_PTP_PARAM_MASK, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @REG_WR(%struct.bnx2x* %29, i32 %37, i32 2047)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @NIG_REG_P1_TLLH_PTP_RULE_MASK, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @NIG_REG_P0_TLLH_PTP_RULE_MASK, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @REG_WR(%struct.bnx2x* %39, i32 %47, i32 16383)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @NIG_REG_P1_LLH_PTP_TO_HOST, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @NIG_REG_P0_LLH_PTP_TO_HOST, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @REG_WR(%struct.bnx2x* %49, i32 %57, i32 0)
  %59 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @NIG_REG_P1_PTP_EN, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @NIG_REG_P0_PTP_EN, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = call i32 @REG_WR(%struct.bnx2x* %59, i32 %67, i32 63)
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 0, i64* %69, align 16
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %72 = load i64, i64* @NIG_REG_TIMESYNC_GEN_REG, align 8
  %73 = load i64, i64* @tsgen_ctrl, align 8
  %74 = add nsw i64 %72, %73
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %76 = call i32 @REG_WR_DMAE(%struct.bnx2x* %71, i64 %74, i64* %75, i32 2)
  %77 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %78 = call i32 @bnx2x_send_reset_timesync_ramrod(%struct.bnx2x* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %66
  %82 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EFAULT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %106

85:                                               ; preds = %66
  %86 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID, align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @REG_WR(%struct.bnx2x* %86, i32 %94, i32 65536)
  %96 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @NIG_REG_P1_TLLH_PTP_BUF_SEQID, align 4
  br label %103

101:                                              ; preds = %93
  %102 = load i32, i32* @NIG_REG_P0_TLLH_PTP_BUF_SEQID, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = call i32 @REG_WR(%struct.bnx2x* %96, i32 %104, i32 65536)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %81
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @REG_WR_DMAE(%struct.bnx2x*, i64, i64*, i32) #1

declare dso_local i32 @bnx2x_send_reset_timesync_ramrod(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
