; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_ad_to_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_ad_to_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_gpadc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ADC_INPUT_VMAIN = common dso_local global i64 0, align 8
@ADC_CH_CHG_V_MIN = common dso_local global i32 0, align 4
@ADC_CH_CHG_V_MAX = common dso_local global i32 0, align 4
@ADC_RESOLUTION = common dso_local global i32 0, align 4
@CALIB_SCALE = common dso_local global i32 0, align 4
@ADC_INPUT_BTEMP = common dso_local global i64 0, align 8
@ADC_CH_BTEMP_MIN = common dso_local global i32 0, align 4
@ADC_CH_BTEMP_MAX = common dso_local global i32 0, align 4
@ADC_INPUT_VBAT = common dso_local global i64 0, align 8
@ADC_CH_VBAT_MIN = common dso_local global i32 0, align 4
@ADC_CH_VBAT_MAX = common dso_local global i32 0, align 4
@ADC_CH_DIETEMP_MIN = common dso_local global i32 0, align 4
@ADC_CH_DIETEMP_MAX = common dso_local global i32 0, align 4
@ADC_CH_ACCDET2_MIN = common dso_local global i32 0, align 4
@ADC_CH_ACCDET2_MAX = common dso_local global i32 0, align 4
@ADC_CH_CHG_I_MIN = common dso_local global i32 0, align 4
@ADC_CH_CHG_I_MAX = common dso_local global i32 0, align 4
@ADC_CH_BKBAT_MIN = common dso_local global i32 0, align 4
@ADC_CH_BKBAT_MAX = common dso_local global i32 0, align 4
@ADC_INPUT_IBAT = common dso_local global i64 0, align 8
@ADC_CH_IBAT_MIN = common dso_local global i32 0, align 4
@ADC_CH_IBAT_MAX = common dso_local global i32 0, align 4
@CALIB_SHIFT_IBAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unknown channel, not possible to convert\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ab8500_gpadc_ad_to_voltage(%struct.ab8500_gpadc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ab8500_gpadc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ab8500_gpadc* %0, %struct.ab8500_gpadc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %215 [
    i32 132, label %9
    i32 128, label %48
    i32 139, label %48
    i32 137, label %48
    i32 143, label %48
    i32 141, label %48
    i32 140, label %48
    i32 134, label %87
    i32 130, label %87
    i32 136, label %126
    i32 142, label %136
    i32 129, label %146
    i32 133, label %156
    i32 131, label %156
    i32 138, label %166
    i32 135, label %176
  ]

9:                                                ; preds = %3
  %10 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %11 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @ADC_INPUT_VMAIN, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* @ADC_CH_CHG_V_MIN, align 4
  %20 = load i32, i32* @ADC_CH_CHG_V_MAX, align 4
  %21 = load i32, i32* @ADC_CH_CHG_V_MIN, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @ADC_RESOLUTION, align 4
  %26 = sdiv i32 %24, %25
  %27 = add nsw i32 %19, %26
  store i32 %27, i32* %7, align 4
  br label %222

28:                                               ; preds = %9
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %31 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* @ADC_INPUT_VMAIN, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %29, %36
  %38 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %39 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @ADC_INPUT_VMAIN, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %37, %44
  %46 = load i32, i32* @CALIB_SCALE, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %7, align 4
  br label %222

48:                                               ; preds = %3, %3, %3, %3, %3, %3
  %49 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %50 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* @ADC_INPUT_BTEMP, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @ADC_CH_BTEMP_MIN, align 4
  %59 = load i32, i32* @ADC_CH_BTEMP_MAX, align 4
  %60 = load i32, i32* @ADC_CH_BTEMP_MIN, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* @ADC_RESOLUTION, align 4
  %65 = sdiv i32 %63, %64
  %66 = add nsw i32 %58, %65
  store i32 %66, i32* %7, align 4
  br label %222

67:                                               ; preds = %48
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %70 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* @ADC_INPUT_BTEMP, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %68, %75
  %77 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %78 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* @ADC_INPUT_BTEMP, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %76, %83
  %85 = load i32, i32* @CALIB_SCALE, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %7, align 4
  br label %222

87:                                               ; preds = %3, %3
  %88 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %89 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* @ADC_INPUT_VBAT, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* @ADC_CH_VBAT_MIN, align 4
  %98 = load i32, i32* @ADC_CH_VBAT_MAX, align 4
  %99 = load i32, i32* @ADC_CH_VBAT_MIN, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %6, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* @ADC_RESOLUTION, align 4
  %104 = sdiv i32 %102, %103
  %105 = add nsw i32 %97, %104
  store i32 %105, i32* %7, align 4
  br label %222

106:                                              ; preds = %87
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %109 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* @ADC_INPUT_VBAT, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %107, %114
  %116 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %117 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i64, i64* @ADC_INPUT_VBAT, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %115, %122
  %124 = load i32, i32* @CALIB_SCALE, align 4
  %125 = sdiv i32 %123, %124
  store i32 %125, i32* %7, align 4
  br label %222

126:                                              ; preds = %3
  %127 = load i32, i32* @ADC_CH_DIETEMP_MIN, align 4
  %128 = load i32, i32* @ADC_CH_DIETEMP_MAX, align 4
  %129 = load i32, i32* @ADC_CH_DIETEMP_MIN, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* %6, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* @ADC_RESOLUTION, align 4
  %134 = sdiv i32 %132, %133
  %135 = add nsw i32 %127, %134
  store i32 %135, i32* %7, align 4
  br label %222

136:                                              ; preds = %3
  %137 = load i32, i32* @ADC_CH_ACCDET2_MIN, align 4
  %138 = load i32, i32* @ADC_CH_ACCDET2_MAX, align 4
  %139 = load i32, i32* @ADC_CH_ACCDET2_MIN, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* %6, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* @ADC_RESOLUTION, align 4
  %144 = sdiv i32 %142, %143
  %145 = add nsw i32 %137, %144
  store i32 %145, i32* %7, align 4
  br label %222

146:                                              ; preds = %3
  %147 = load i32, i32* @ADC_CH_CHG_V_MIN, align 4
  %148 = load i32, i32* @ADC_CH_CHG_V_MAX, align 4
  %149 = load i32, i32* @ADC_CH_CHG_V_MIN, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load i32, i32* %6, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32, i32* @ADC_RESOLUTION, align 4
  %154 = sdiv i32 %152, %153
  %155 = add nsw i32 %147, %154
  store i32 %155, i32* %7, align 4
  br label %222

156:                                              ; preds = %3, %3
  %157 = load i32, i32* @ADC_CH_CHG_I_MIN, align 4
  %158 = load i32, i32* @ADC_CH_CHG_I_MAX, align 4
  %159 = load i32, i32* @ADC_CH_CHG_I_MIN, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* %6, align 4
  %162 = mul nsw i32 %160, %161
  %163 = load i32, i32* @ADC_RESOLUTION, align 4
  %164 = sdiv i32 %162, %163
  %165 = add nsw i32 %157, %164
  store i32 %165, i32* %7, align 4
  br label %222

166:                                              ; preds = %3
  %167 = load i32, i32* @ADC_CH_BKBAT_MIN, align 4
  %168 = load i32, i32* @ADC_CH_BKBAT_MAX, align 4
  %169 = load i32, i32* @ADC_CH_BKBAT_MIN, align 4
  %170 = sub nsw i32 %168, %169
  %171 = load i32, i32* %6, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* @ADC_RESOLUTION, align 4
  %174 = sdiv i32 %172, %173
  %175 = add nsw i32 %167, %174
  store i32 %175, i32* %7, align 4
  br label %222

176:                                              ; preds = %3
  %177 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %178 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i64, i64* @ADC_INPUT_IBAT, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %176
  %186 = load i32, i32* @ADC_CH_IBAT_MIN, align 4
  %187 = load i32, i32* @ADC_CH_IBAT_MAX, align 4
  %188 = load i32, i32* @ADC_CH_IBAT_MIN, align 4
  %189 = sub nsw i32 %187, %188
  %190 = load i32, i32* %6, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load i32, i32* @ADC_RESOLUTION, align 4
  %193 = sdiv i32 %191, %192
  %194 = add nsw i32 %186, %193
  store i32 %194, i32* %7, align 4
  br label %222

195:                                              ; preds = %176
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %198 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %197, i32 0, i32 1
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = load i64, i64* @ADC_INPUT_IBAT, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %196, %203
  %205 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %206 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %205, i32 0, i32 1
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = load i64, i64* @ADC_INPUT_IBAT, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %204, %211
  %213 = load i32, i32* @CALIB_SHIFT_IBAT, align 4
  %214 = ashr i32 %212, %213
  store i32 %214, i32* %7, align 4
  br label %222

215:                                              ; preds = %3
  %216 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %4, align 8
  %217 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @dev_err(i32 %218, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %215, %195, %185, %166, %156, %146, %136, %126, %106, %96, %67, %57, %28, %18
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
