; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rate_n_flags_from_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rate_n_flags_from_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.il_priv = type { i32 }
%struct.il_scale_tbl_info = type { i32, i64, i32, i64, i64 }

@il_rates = common dso_local global %struct.TYPE_2__* null, align 8
@IL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@IL_LAST_OFDM_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid HT rate idx %d\0A\00", align 1
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid tbl->lq_type %d\0A\00", align 1
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@RATE_MCS_ANT_ABC_MSK = common dso_local global i32 0, align 4
@RATE_MCS_DUP_MSK = common dso_local global i32 0, align 4
@RATE_MCS_HT40_MSK = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RATE_MCS_GF_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"GF was set with SGI:SISO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_scale_tbl_info*, i32, i64)* @il4965_rate_n_flags_from_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv* %0, %struct.il_scale_tbl_info* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.il_scale_tbl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.il_scale_tbl_info* %1, %struct.il_scale_tbl_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %11 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @is_legacy(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @il_rates, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IL_FIRST_CCK_RATE, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IL_LAST_CCK_RATE, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %25, %15
  br label %80

34:                                               ; preds = %4
  %35 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %36 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @is_Ht(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @IL_LAST_OFDM_RATE, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @IL_LAST_OFDM_RATE, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %51 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @is_siso(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @il_rates, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %73

64:                                               ; preds = %48
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @il_rates, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %64, %55
  br label %79

74:                                               ; preds = %34
  %75 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %76 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %73
  br label %80

80:                                               ; preds = %79, %33
  %81 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %82 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* @RATE_MCS_ANT_ABC_MSK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %91 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @is_Ht(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %148

95:                                               ; preds = %80
  %96 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %97 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %102 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @RATE_MCS_DUP_MSK, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %113

109:                                              ; preds = %100
  %110 = load i32, i32* @RATE_MCS_HT40_MSK, align 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %95
  %115 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %116 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i64, i64* %8, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = load i32, i32* @RATE_MCS_GF_MSK, align 4
  %128 = load i32, i32* %9, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %131 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @is_siso(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %126
  %136 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %137 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %9, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %9, align 4
  %145 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %140, %135, %126
  br label %147

147:                                              ; preds = %146, %123
  br label %148

148:                                              ; preds = %147, %80
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i64 @is_Ht(i32) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i64 @is_siso(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
