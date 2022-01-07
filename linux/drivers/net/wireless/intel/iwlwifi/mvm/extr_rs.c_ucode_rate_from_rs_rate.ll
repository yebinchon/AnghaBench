; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_ucode_rate_from_rs_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_ucode_rate_from_rs_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.iwl_mvm = type { i32 }
%struct.rs_rate = type { i32, i32, i32, i32, i64, i64, i64 }

@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@RATE_MCS_ANT_ABC_MSK = common dso_local global i32 0, align 4
@iwl_rates = common dso_local global %struct.TYPE_2__* null, align 8
@IWL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IWL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@IWL_FIRST_HT_RATE = common dso_local global i32 0, align 4
@IWL_LAST_HT_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid HT rate index %d\0A\00", align 1
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@IWL_FIRST_VHT_RATE = common dso_local global i32 0, align 4
@IWL_LAST_VHT_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid VHT rate index %d\0A\00", align 1
@RATE_MCS_VHT_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid rate->type %d\0A\00", align 1
@RATE_MCS_ANT_AB_MSK = common dso_local global i32 0, align 4
@RATE_MCS_STBC_MSK = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RATE_MCS_LDPC_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.rs_rate*)* @ucode_rate_from_rs_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucode_rate_from_rs_rate(%struct.iwl_mvm* %0, %struct.rs_rate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.rs_rate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.rs_rate* %1, %struct.rs_rate** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %9 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %12 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @RATE_MCS_ANT_ABC_MSK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %21 = call i64 @is_legacy(%struct.rs_rate* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IWL_FIRST_CCK_RATE, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IWL_LAST_CCK_RATE, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %35, %23
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %193

45:                                               ; preds = %2
  %46 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %47 = call i64 @is_ht(%struct.rs_rate* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IWL_FIRST_HT_RATE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IWL_LAST_HT_RATE, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53, %49
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @IWL_ERR(%struct.iwl_mvm* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @IWL_LAST_HT_RATE, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %67 = call i64 @is_ht_siso(%struct.rs_rate* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %94

78:                                               ; preds = %62
  %79 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %80 = call i64 @is_ht_mimo2(%struct.rs_rate* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %93

91:                                               ; preds = %78
  %92 = call i32 @WARN_ON_ONCE(i32 1)
  br label %93

93:                                               ; preds = %91, %82
  br label %94

94:                                               ; preds = %93, %69
  br label %152

95:                                               ; preds = %45
  %96 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %97 = call i64 @is_vht(%struct.rs_rate* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %145

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @IWL_FIRST_VHT_RATE, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @IWL_LAST_VHT_RATE, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103, %99
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @IWL_ERR(%struct.iwl_mvm* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @IWL_LAST_VHT_RATE, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %107, %103
  %113 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %117 = call i64 @is_vht_siso(%struct.rs_rate* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %144

128:                                              ; preds = %112
  %129 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %130 = call i64 @is_vht_mimo2(%struct.rs_rate* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %143

141:                                              ; preds = %128
  %142 = call i32 @WARN_ON_ONCE(i32 1)
  br label %143

143:                                              ; preds = %141, %132
  br label %144

144:                                              ; preds = %143, %119
  br label %151

145:                                              ; preds = %95
  %146 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %147 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %148 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @IWL_ERR(%struct.iwl_mvm* %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %145, %144
  br label %152

152:                                              ; preds = %151, %94
  %153 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %154 = call i64 @is_siso(%struct.rs_rate* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %158 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load i32, i32* @RATE_MCS_ANT_AB_MSK, align 4
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* @RATE_MCS_STBC_MSK, align 4
  %166 = load i32, i32* %6, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %161, %156, %152
  %169 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %170 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %6, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %6, align 4
  %174 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %175 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %168
  %179 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %180 = load i32, i32* %6, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %178, %168
  %183 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %184 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32, i32* @RATE_MCS_LDPC_MSK, align 4
  %189 = load i32, i32* %6, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %187, %182
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %43
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i64 @is_legacy(%struct.rs_rate*) #1

declare dso_local i64 @is_ht(%struct.rs_rate*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i64 @is_ht_siso(%struct.rs_rate*) #1

declare dso_local i64 @is_ht_mimo2(%struct.rs_rate*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @is_vht(%struct.rs_rate*) #1

declare dso_local i64 @is_vht_siso(%struct.rs_rate*) #1

declare dso_local i64 @is_vht_mimo2(%struct.rs_rate*) #1

declare dso_local i64 @is_siso(%struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
