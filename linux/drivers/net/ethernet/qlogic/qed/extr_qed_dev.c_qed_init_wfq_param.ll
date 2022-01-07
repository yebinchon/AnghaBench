; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_wfq_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_wfq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@QED_WFQ_UNIT = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"Vport [%d] - Requested rate[%d Mbps] is less than one percent of configured PF min rate[%d Mbps]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Number of vports is greater than %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"Total requested min rate for all vports[%d Mbps] is greater than configured PF min rate[%d Mbps]\0A\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"Non WFQ configured vports rate [%d Mbps] is less than one percent of configured PF min rate[%d Mbps]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, i32, i32)* @qed_init_wfq_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_wfq_param(%struct.qed_hwfn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %57, %4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %45 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %41, %30, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %22

60:                                               ; preds = %22
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @QED_WFQ_UNIT, align 4
  %72 = sdiv i32 %70, %71
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %60
  %75 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %76 = load i32, i32* @NETIF_MSG_LINK, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %75, i32 %76, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %174

83:                                               ; preds = %60
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @QED_WFQ_UNIT, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %89 = load i32, i32* @NETIF_MSG_LINK, align 4
  %90 = load i32, i32* @QED_WFQ_UNIT, align 4
  %91 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %88, i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %174

94:                                               ; preds = %83
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %100 = load i32, i32* @NETIF_MSG_LINK, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %99, i32 %100, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %174

106:                                              ; preds = %94
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %13, align 4
  %112 = sdiv i32 %110, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @QED_WFQ_UNIT, align 4
  %116 = sdiv i32 %114, %115
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %106
  %119 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %120 = load i32, i32* @NETIF_MSG_LINK, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %119, i32 %120, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %174

126:                                              ; preds = %106
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %129 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store i32 %127, i32* %135, align 4
  %136 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %137 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 4
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %170, %126
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %173

148:                                              ; preds = %144
  %149 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %150 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %170

160:                                              ; preds = %148
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %163 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  store i32 %161, i32* %169, align 4
  br label %170

170:                                              ; preds = %160, %159
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %15, align 4
  br label %144

173:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %118, %98, %87, %74
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
