; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_init_hw_rate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_init_hw_rate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.il_priv = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.il3945_rate_scaling_cmd = type { i32, %struct.il3945_rate_scaling_info*, i32 }
%struct.il3945_rate_scaling_info = type { i32, i32, i32 }

@il3945_rates = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Select A mode rate scale\0A\00", align 1
@RATE_1M_IDX_TBL = common dso_local global i32 0, align 4
@RATE_11M_IDX_TBL = common dso_local global i32 0, align 4
@IL_FIRST_OFDM_RATE = common dso_local global i64 0, align 8
@RATE_9M_IDX_TBL = common dso_local global i32 0, align 4
@RATE_12M_IDX_TBL = common dso_local global i64 0, align 8
@RATE_6M_IDX_TBL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Select B/G mode rate scale\0A\00", align 1
@IL_OFDM_RATES_MASK = common dso_local global i32 0, align 4
@IL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_54M_IDX_TBL = common dso_local global i32 0, align 4
@RATE_5M_IDX_TBL = common dso_local global i32 0, align 4
@C_RATE_SCALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_init_hw_rate_table(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.il3945_rate_scaling_cmd, align 8
  %9 = alloca %struct.il3945_rate_scaling_info*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %10 = bitcast %struct.il3945_rate_scaling_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, %struct.il3945_rate_scaling_cmd* %8, i32 0, i32 1
  %12 = load %struct.il3945_rate_scaling_info*, %struct.il3945_rate_scaling_info** %11, align 8
  store %struct.il3945_rate_scaling_info* %12, %struct.il3945_rate_scaling_info** %9, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %58, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @il3945_rates, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @il3945_rates, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @il3945_rates, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = load %struct.il3945_rate_scaling_info*, %struct.il3945_rate_scaling_info** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %32, i64 %34
  %36 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %35, i32 0, i32 2
  store i32 %31, i32* %36, align 4
  %37 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.il3945_rate_scaling_info*, %struct.il3945_rate_scaling_info** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %40, i64 %42
  %44 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @il3945_get_prev_ieee_rate(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @il3945_rates, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.il3945_rate_scaling_info*, %struct.il3945_rate_scaling_info** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %53, i64 %55
  %57 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %18
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %13

61:                                               ; preds = %13
  %62 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %146 [
    i32 128, label %65
    i32 129, label %101
  ]

65:                                               ; preds = %61
  %66 = call i32 @D_RATE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @RATE_1M_IDX_TBL, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %83, %65
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @RATE_11M_IDX_TBL, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @il3945_rates, align 8
  %74 = load i64, i64* @IL_FIRST_OFDM_RATE, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.il3945_rate_scaling_info*, %struct.il3945_rate_scaling_info** %9, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %78, i64 %80
  %82 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 4
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %68

86:                                               ; preds = %68
  %87 = load i32, i32* @RATE_9M_IDX_TBL, align 4
  %88 = load %struct.il3945_rate_scaling_info*, %struct.il3945_rate_scaling_info** %9, align 8
  %89 = load i64, i64* @RATE_12M_IDX_TBL, align 8
  %90 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %88, i64 %89
  %91 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @il3945_rates, align 8
  %93 = load i64, i64* @IL_FIRST_OFDM_RATE, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.il3945_rate_scaling_info*, %struct.il3945_rate_scaling_info** %9, align 8
  %98 = load i64, i64* @RATE_6M_IDX_TBL, align 8
  %99 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %97, i64 %98
  %100 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  br label %148

101:                                              ; preds = %61
  %102 = call i32 @D_RATE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IL_OFDM_RATES_MASK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %145, label %110

110:                                              ; preds = %101
  %111 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %112 = call i32 @il_is_associated(%struct.il_priv* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %145

114:                                              ; preds = %110
  %115 = load i32, i32* @IL_FIRST_CCK_RATE, align 4
  store i32 %115, i32* %6, align 4
  %116 = load i64, i64* @RATE_6M_IDX_TBL, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %134, %114
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @RATE_54M_IDX_TBL, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** @il3945_rates, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.il3945_rate_scaling_info*, %struct.il3945_rate_scaling_info** %9, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %129, i64 %131
  %133 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %132, i32 0, i32 0
  store i32 %128, i32* %133, align 4
  br label %134

134:                                              ; preds = %122
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %118

137:                                              ; preds = %118
  %138 = load i32, i32* @RATE_11M_IDX_TBL, align 4
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* @RATE_5M_IDX_TBL, align 4
  %140 = load %struct.il3945_rate_scaling_info*, %struct.il3945_rate_scaling_info** %9, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %140, i64 %142
  %144 = getelementptr inbounds %struct.il3945_rate_scaling_info, %struct.il3945_rate_scaling_info* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 4
  br label %145

145:                                              ; preds = %137, %110, %101
  br label %148

146:                                              ; preds = %61
  %147 = call i32 @WARN_ON(i32 1)
  br label %148

148:                                              ; preds = %146, %145, %86
  %149 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, %struct.il3945_rate_scaling_cmd* %8, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %151 = load i32, i32* @C_RATE_SCALE, align 4
  %152 = call i32 @il_send_cmd_pdu(%struct.il_priv* %150, i32 %151, i32 24, %struct.il3945_rate_scaling_cmd* %8)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %2, align 4
  br label %162

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, %struct.il3945_rate_scaling_cmd* %8, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %160 = load i32, i32* @C_RATE_SCALE, align 4
  %161 = call i32 @il_send_cmd_pdu(%struct.il_priv* %159, i32 %160, i32 24, %struct.il3945_rate_scaling_cmd* %8)
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %157, %155
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @il3945_get_prev_ieee_rate(i32) #2

declare dso_local i32 @D_RATE(i8*) #2

declare dso_local i32 @il_is_associated(%struct.il_priv*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il3945_rate_scaling_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
