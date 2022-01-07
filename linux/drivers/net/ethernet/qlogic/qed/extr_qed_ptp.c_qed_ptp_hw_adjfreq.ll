; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_adjfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_adjfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { %struct.qed_ptt* }
%struct.qed_ptt = type { i32 }

@QED_DRIFT_CNTR_TIME_QUANTA_SHIFT = common dso_local global i32 0, align 4
@QED_DRIFT_CNTR_ADJUSTMENT_SHIFT = common dso_local global i32 0, align 4
@QED_DRIFT_CNTR_DIRECTION_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_TSGEN_RST_DRIFT_CNTR = common dso_local global i32 0, align 4
@NIG_REG_TSGEN_DRIFT_CNTR_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Drift counter is not reset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32)* @qed_ptp_hw_adjfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ptp_hw_adjfreq(%struct.qed_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_hwfn*, align 8
  %14 = alloca %struct.qed_ptt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %21 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %20)
  store %struct.qed_hwfn* %21, %struct.qed_hwfn** %13, align 8
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %13, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 0
  %24 = load %struct.qed_ptt*, %struct.qed_ptt** %23, align 8
  store %struct.qed_ptt* %24, %struct.qed_ptt** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %17, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %112

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 7, i32* %7, align 4
  br label %35

35:                                               ; preds = %108, %33
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %111

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 1000000000
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @div_s64(i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 8
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 268435454
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 268435454, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, 16
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %61, 1000000000
  %63 = sub nsw i32 %60, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 16, %65
  %67 = add nsw i32 %64, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %70, %54
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 16
  %83 = mul nsw i32 %80, %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %84, %85
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 16
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %88, %79
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %19, align 4
  %100 = mul nsw i32 %98, %99
  %101 = icmp sgt i32 %97, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %19, align 4
  br label %107

107:                                              ; preds = %102, %94
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %7, align 4
  br label %35

111:                                              ; preds = %35
  br label %118

112:                                              ; preds = %30
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 4, i32* %6, align 4
  store i32 249999999, i32* %8, align 4
  br label %117

116:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  store i32 268435455, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %115
  br label %118

118:                                              ; preds = %117, %111
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @QED_DRIFT_CNTR_TIME_QUANTA_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @QED_DRIFT_CNTR_ADJUSTMENT_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = or i32 %121, %124
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @QED_DRIFT_CNTR_DIRECTION_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = or i32 %125, %128
  store i32 %129, i32* %15, align 4
  %130 = load %struct.qed_hwfn*, %struct.qed_hwfn** %13, align 8
  %131 = load %struct.qed_ptt*, %struct.qed_ptt** %14, align 8
  %132 = load i32, i32* @NIG_REG_TSGEN_RST_DRIFT_CNTR, align 4
  %133 = call i32 @qed_wr(%struct.qed_hwfn* %130, %struct.qed_ptt* %131, i32 %132, i32 1)
  %134 = load %struct.qed_hwfn*, %struct.qed_hwfn** %13, align 8
  %135 = load %struct.qed_ptt*, %struct.qed_ptt** %14, align 8
  %136 = load i32, i32* @NIG_REG_TSGEN_RST_DRIFT_CNTR, align 4
  %137 = call i32 @qed_rd(%struct.qed_hwfn* %134, %struct.qed_ptt* %135, i32 %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %118
  %142 = load %struct.qed_hwfn*, %struct.qed_hwfn** %13, align 8
  %143 = load %struct.qed_ptt*, %struct.qed_ptt** %14, align 8
  %144 = load i32, i32* @NIG_REG_TSGEN_DRIFT_CNTR_CONF, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @qed_wr(%struct.qed_hwfn* %142, %struct.qed_ptt* %143, i32 %144, i32 %145)
  br label %152

147:                                              ; preds = %118
  %148 = load %struct.qed_hwfn*, %struct.qed_hwfn** %13, align 8
  %149 = call i32 @DP_INFO(%struct.qed_hwfn* %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %157

152:                                              ; preds = %141
  %153 = load %struct.qed_hwfn*, %struct.qed_hwfn** %13, align 8
  %154 = load %struct.qed_ptt*, %struct.qed_ptt** %14, align 8
  %155 = load i32, i32* @NIG_REG_TSGEN_RST_DRIFT_CNTR, align 4
  %156 = call i32 @qed_wr(%struct.qed_hwfn* %153, %struct.qed_ptt* %154, i32 %155, i32 0)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
