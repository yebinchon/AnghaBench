; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_nig_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_nig_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_LSB = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_MSB = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_LSB = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_MSB = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_NUM_STRICT_ARB_SLOTS = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_NUM_STRICT_ARB_SLOTS = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_LSB = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_MSB = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_LSB = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_MSB = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CLIENT_IS_STRICT = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CLIENT_IS_SUBJECT2WFQ = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_0 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_1 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_2 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_2 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_3 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_3 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_4 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_4 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_5 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_5 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_6 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_7 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*)* @bnx2x_ets_e3b0_nig_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ets_e3b0_nig_disabled(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  %8 = load %struct.link_params*, %struct.link_params** %3, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %5, align 8
  %11 = load %struct.link_params*, %struct.link_params** %3, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %15 = call i32 @bnx2x_ets_get_min_w_val_nig(%struct.link_vars* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %20 = load i32, i32* @NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_LSB, align 4
  %21 = call i32 @REG_WR(%struct.bnx2x* %19, i32 %20, i32 5517840)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %23 = load i32, i32* @NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_MSB, align 4
  %24 = call i32 @REG_WR(%struct.bnx2x* %22, i32 %23, i32 0)
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %27 = load i32, i32* @NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_LSB, align 4
  %28 = call i32 @REG_WR(%struct.bnx2x* %26, i32 %27, i32 1985229328)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %30 = load i32, i32* @NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_MSB, align 4
  %31 = call i32 @REG_WR(%struct.bnx2x* %29, i32 %30, i32 8)
  br label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @NIG_REG_P1_TX_ARB_NUM_STRICT_ARB_SLOTS, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @NIG_REG_P0_TX_ARB_NUM_STRICT_ARB_SLOTS, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 @REG_WR(%struct.bnx2x* %33, i32 %41, i32 256)
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %47 = load i32, i32* @NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_LSB, align 4
  %48 = call i32 @REG_WR(%struct.bnx2x* %46, i32 %47, i32 2164035)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %50 = load i32, i32* @NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_MSB, align 4
  %51 = call i32 @REG_WR(%struct.bnx2x* %49, i32 %50, i32 0)
  br label %59

52:                                               ; preds = %40
  %53 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %54 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_LSB, align 4
  %55 = call i32 @REG_WR(%struct.bnx2x* %53, i32 %54, i32 1126238326)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %57 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_MSB, align 4
  %58 = call i32 @REG_WR(%struct.bnx2x* %56, i32 %57, i32 5)
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %64 = load i32, i32* @NIG_REG_P1_TX_ARB_CLIENT_IS_STRICT, align 4
  %65 = call i32 @REG_WR(%struct.bnx2x* %63, i32 %64, i32 63)
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %68 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT, align 4
  %69 = call i32 @REG_WR(%struct.bnx2x* %67, i32 %68, i32 511)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @NIG_REG_P1_TX_ARB_CLIENT_IS_SUBJECT2WFQ, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = call i32 @REG_WR(%struct.bnx2x* %71, i32 %79, i32 0)
  %81 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_0, align 4
  br label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = call i32 @REG_WR(%struct.bnx2x* %81, i32 %89, i32 0)
  %91 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_1, align 4
  br label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = call i32 @REG_WR(%struct.bnx2x* %91, i32 %99, i32 0)
  %101 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_2, align 4
  br label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_2, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = call i32 @REG_WR(%struct.bnx2x* %101, i32 %109, i32 0)
  %111 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %112 = load i64, i64* %6, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_3, align 4
  br label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_3, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = call i32 @REG_WR(%struct.bnx2x* %111, i32 %119, i32 0)
  %121 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %122 = load i64, i64* %6, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_4, align 4
  br label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_4, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = call i32 @REG_WR(%struct.bnx2x* %121, i32 %129, i32 0)
  %131 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %132 = load i64, i64* %6, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_5, align 4
  br label %138

136:                                              ; preds = %128
  %137 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_5, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = call i32 @REG_WR(%struct.bnx2x* %131, i32 %139, i32 0)
  %141 = load i64, i64* %6, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %138
  %144 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %145 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_6, align 4
  %146 = call i32 @REG_WR(%struct.bnx2x* %144, i32 %145, i32 0)
  %147 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %148 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_7, align 4
  %149 = call i32 @REG_WR(%struct.bnx2x* %147, i32 %148, i32 0)
  %150 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %151 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_8, align 4
  %152 = call i32 @REG_WR(%struct.bnx2x* %150, i32 %151, i32 0)
  br label %153

153:                                              ; preds = %143, %138
  %154 = load %struct.link_params*, %struct.link_params** %3, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @bnx2x_ets_e3b0_set_credit_upper_bound_nig(%struct.link_params* %154, i32 %155)
  ret void
}

declare dso_local i32 @bnx2x_ets_get_min_w_val_nig(%struct.link_vars*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_ets_e3b0_set_credit_upper_bound_nig(%struct.link_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
