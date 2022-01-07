; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_configure_ptp_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_configure_ptp_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i32 }

@NIG_REG_P1_TLLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_TLLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_TLLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_TLLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@TX_TIMESTAMPING_EN = common dso_local global i32 0, align 4
@BNX2X_PTP_TX_ON_PARAM_MASK = common dso_local global i32 0, align 4
@BNX2X_PTP_TX_ON_RULE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"One-step timestamping is not supported\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@BNX2X_PTP_V1_L4_PARAM_MASK = common dso_local global i32 0, align 4
@BNX2X_PTP_V1_L4_RULE_MASK = common dso_local global i32 0, align 4
@BNX2X_PTP_V2_L4_PARAM_MASK = common dso_local global i32 0, align 4
@BNX2X_PTP_V2_L4_RULE_MASK = common dso_local global i32 0, align 4
@BNX2X_PTP_V2_L2_PARAM_MASK = common dso_local global i32 0, align 4
@BNX2X_PTP_V2_L2_RULE_MASK = common dso_local global i32 0, align 4
@BNX2X_PTP_V2_PARAM_MASK = common dso_local global i32 0, align 4
@BNX2X_PTP_V2_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_TO_HOST = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_TO_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_configure_ptp_filters(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i32 @BP_PORT(%struct.bnx2x* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %139

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @NIG_REG_P1_TLLH_PTP_PARAM_MASK, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @NIG_REG_P0_TLLH_PTP_PARAM_MASK, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @NIG_REG_P1_TLLH_PTP_RULE_MASK, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @NIG_REG_P0_TLLH_PTP_RULE_MASK, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %6, align 4
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %53 [
    i32 129, label %35
    i32 128, label %49
  ]

35:                                               ; preds = %30
  %36 = load i32, i32* @TX_TIMESTAMPING_EN, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BNX2X_PTP_TX_ON_PARAM_MASK, align 4
  %44 = call i32 @REG_WR(%struct.bnx2x* %41, i32 %42, i32 %43)
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @BNX2X_PTP_TX_ON_RULE_MASK, align 4
  %48 = call i32 @REG_WR(%struct.bnx2x* %45, i32 %46, i32 %47)
  br label %53

49:                                               ; preds = %30
  %50 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ERANGE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %139

53:                                               ; preds = %30, %35
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @NIG_REG_P1_LLH_PTP_PARAM_MASK, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @NIG_REG_P0_LLH_PTP_PARAM_MASK, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @NIG_REG_P1_LLH_PTP_RULE_MASK, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @NIG_REG_P0_LLH_PTP_RULE_MASK, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %6, align 4
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %121 [
    i32 144, label %73
    i32 145, label %74
    i32 130, label %74
    i32 143, label %74
    i32 141, label %77
    i32 140, label %77
    i32 142, label %77
    i32 133, label %88
    i32 132, label %88
    i32 134, label %88
    i32 136, label %99
    i32 135, label %99
    i32 137, label %99
    i32 138, label %110
    i32 131, label %110
    i32 139, label %110
  ]

73:                                               ; preds = %68
  br label %121

74:                                               ; preds = %68, %68, %68
  %75 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %76 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %75, i32 0, i32 1
  store i32 144, i32* %76, align 4
  br label %121

77:                                               ; preds = %68, %68, %68
  %78 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %79 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %78, i32 0, i32 1
  store i32 141, i32* %79, align 4
  %80 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @BNX2X_PTP_V1_L4_PARAM_MASK, align 4
  %83 = call i32 @REG_WR(%struct.bnx2x* %80, i32 %81, i32 %82)
  %84 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @BNX2X_PTP_V1_L4_RULE_MASK, align 4
  %87 = call i32 @REG_WR(%struct.bnx2x* %84, i32 %85, i32 %86)
  br label %121

88:                                               ; preds = %68, %68, %68
  %89 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 1
  store i32 133, i32* %90, align 4
  %91 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @BNX2X_PTP_V2_L4_PARAM_MASK, align 4
  %94 = call i32 @REG_WR(%struct.bnx2x* %91, i32 %92, i32 %93)
  %95 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @BNX2X_PTP_V2_L4_RULE_MASK, align 4
  %98 = call i32 @REG_WR(%struct.bnx2x* %95, i32 %96, i32 %97)
  br label %121

99:                                               ; preds = %68, %68, %68
  %100 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %101 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %100, i32 0, i32 1
  store i32 136, i32* %101, align 4
  %102 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @BNX2X_PTP_V2_L2_PARAM_MASK, align 4
  %105 = call i32 @REG_WR(%struct.bnx2x* %102, i32 %103, i32 %104)
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @BNX2X_PTP_V2_L2_RULE_MASK, align 4
  %109 = call i32 @REG_WR(%struct.bnx2x* %106, i32 %107, i32 %108)
  br label %121

110:                                              ; preds = %68, %68, %68
  %111 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %112 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %111, i32 0, i32 1
  store i32 138, i32* %112, align 4
  %113 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @BNX2X_PTP_V2_PARAM_MASK, align 4
  %116 = call i32 @REG_WR(%struct.bnx2x* %113, i32 %114, i32 %115)
  %117 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @BNX2X_PTP_V2_RULE_MASK, align 4
  %120 = call i32 @REG_WR(%struct.bnx2x* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %68, %110, %99, %88, %77, %74, %73
  %122 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %123 = call i32 @bnx2x_enable_ptp_packets(%struct.bnx2x* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %139

128:                                              ; preds = %121
  %129 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @NIG_REG_P1_LLH_PTP_TO_HOST, align 4
  br label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @NIG_REG_P0_LLH_PTP_TO_HOST, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = call i32 @REG_WR(%struct.bnx2x* %129, i32 %137, i32 1)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %136, %126, %49, %14
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_enable_ptp_packets(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
