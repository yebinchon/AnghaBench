; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_radio_tea5777_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_radio_tea5777_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.radio_tea5777 = type { i64, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.radio_tea5777*, i64)* }

@bands = common dso_local global %struct.TYPE_4__* null, align 8
@TEA5777_W_AM_FM_MASK = common dso_local global i32 0, align 4
@TEA5777_FM_IF = common dso_local global i32 0, align 4
@TEA5777_FM_FREQ_STEP = common dso_local global i32 0, align 4
@TEA5777_W_FM_PLL_MASK = common dso_local global i32 0, align 4
@TEA5777_W_FM_PLL_SHIFT = common dso_local global i32 0, align 4
@TEA5777_W_FM_FREF_MASK = common dso_local global i32 0, align 4
@TEA5777_W_FM_FREF_VALUE = common dso_local global i32 0, align 4
@TEA5777_W_FM_FREF_SHIFT = common dso_local global i32 0, align 4
@TEA5777_W_FM_FORCEMONO_MASK = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@TEA5777_W_FM_FORCEMONO_SHIFT = common dso_local global i64 0, align 8
@TEA5777_W_AM_FM_SHIFT = common dso_local global i64 0, align 8
@TEA5777_AM_IF = common dso_local global i32 0, align 4
@TEA5777_AM_FREQ_STEP = common dso_local global i32 0, align 4
@TEA5777_W_AM_PLL_MASK = common dso_local global i64 0, align 8
@TEA5777_W_AM_PLL_SHIFT = common dso_local global i32 0, align 4
@TEA5777_W_AM_AGCRF_MASK = common dso_local global i32 0, align 4
@TEA5777_W_AM_MWLW_MASK = common dso_local global i32 0, align 4
@TEA5777_W_AM_MW = common dso_local global i32 0, align 4
@TEA5777_W_AM_MWLW_SHIFT = common dso_local global i32 0, align 4
@TEA5777_W_AM_LNA_MASK = common dso_local global i32 0, align 4
@TEA5777_W_AM_LNA_SHIFT = common dso_local global i64 0, align 8
@TEA5777_W_AM_PEAK_MASK = common dso_local global i64 0, align 8
@TEA5777_W_AM_PEAK_SHIFT = common dso_local global i64 0, align 8
@TEA5777_W_AM_CALLIGN_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radio_tea5777*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radio_tea5777* %0, %struct.radio_tea5777** %3, align 8
  %6 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %7 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bands, align 8
  %10 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %11 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bands, align 8
  %17 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %18 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clamp(i32 %8, i32 %15, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 8
  %26 = sdiv i32 %25, 16
  store i32 %26, i32* %4, align 4
  %27 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %28 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  switch i64 %29, label %187 [
    i64 128, label %30
    i64 129, label %89
  ]

30:                                               ; preds = %1
  %31 = load i32, i32* @TEA5777_W_AM_FM_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %34 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TEA5777_FM_IF, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* @TEA5777_FM_FREQ_STEP, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @TEA5777_W_FM_PLL_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %45 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TEA5777_W_FM_PLL_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %52 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* @TEA5777_W_FM_FREF_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %58 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @TEA5777_W_FM_FREF_VALUE, align 4
  %62 = load i32, i32* @TEA5777_W_FM_FREF_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %65 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @TEA5777_W_FM_FORCEMONO_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %71 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %75 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %30
  %80 = load i64, i64* @TEA5777_W_FM_FORCEMONO_SHIFT, align 8
  %81 = shl i64 1, %80
  %82 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %83 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = or i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  br label %88

88:                                               ; preds = %79, %30
  br label %187

89:                                               ; preds = %1
  %90 = load i32, i32* @TEA5777_W_AM_FM_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %93 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i64, i64* @TEA5777_W_AM_FM_SHIFT, align 8
  %97 = shl i64 1, %96
  %98 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %99 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = or i64 %101, %97
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @TEA5777_AM_IF, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* @TEA5777_AM_FREQ_STEP, align 4
  %108 = sdiv i32 %106, %107
  store i32 %108, i32* %4, align 4
  %109 = load i64, i64* @TEA5777_W_AM_PLL_MASK, align 8
  %110 = xor i64 %109, -1
  %111 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %112 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = and i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @TEA5777_W_AM_PLL_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %121 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @TEA5777_W_AM_AGCRF_MASK, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %127 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* @TEA5777_W_AM_AGCRF_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %133 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* @TEA5777_W_AM_MWLW_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %139 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @TEA5777_W_AM_MW, align 4
  %143 = load i32, i32* @TEA5777_W_AM_MWLW_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %146 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @TEA5777_W_AM_LNA_MASK, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %152 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load i64, i64* @TEA5777_W_AM_LNA_SHIFT, align 8
  %156 = shl i64 1, %155
  %157 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %158 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = or i64 %160, %156
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 8
  %163 = load i64, i64* @TEA5777_W_AM_PEAK_MASK, align 8
  %164 = xor i64 %163, -1
  %165 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %166 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = and i64 %168, %164
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 8
  %171 = load i64, i64* @TEA5777_W_AM_PEAK_SHIFT, align 8
  %172 = shl i64 1, %171
  %173 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %174 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = or i64 %176, %172
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 8
  %179 = load i64, i64* @TEA5777_W_AM_CALLIGN_MASK, align 8
  %180 = xor i64 %179, -1
  %181 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %182 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = and i64 %184, %180
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 8
  br label %187

187:                                              ; preds = %1, %89, %88
  %188 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %189 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %188, i32 0, i32 5
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32 (%struct.radio_tea5777*, i64)*, i32 (%struct.radio_tea5777*, i64)** %191, align 8
  %193 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %194 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %195 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = call i32 %192(%struct.radio_tea5777* %193, i64 %197)
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %187
  %202 = load i32, i32* %5, align 4
  store i32 %202, i32* %2, align 4
  br label %213

203:                                              ; preds = %187
  %204 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %205 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %204, i32 0, i32 2
  store i32 0, i32* %205, align 4
  %206 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %207 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %206, i32 0, i32 3
  store i32 -1, i32* %207, align 8
  %208 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %209 = load i32, i32* %4, align 4
  %210 = call i32 @tea5777_freq_to_v4l2_freq(%struct.radio_tea5777* %208, i32 %209)
  %211 = load %struct.radio_tea5777*, %struct.radio_tea5777** %3, align 8
  %212 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 4
  store i32 0, i32* %2, align 4
  br label %213

213:                                              ; preds = %203, %201
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @tea5777_freq_to_v4l2_freq(%struct.radio_tea5777*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
