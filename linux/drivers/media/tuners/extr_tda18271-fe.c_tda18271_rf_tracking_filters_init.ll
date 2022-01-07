; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_rf_tracking_filters_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_rf_tracking_filters_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, %struct.tda18271_rf_tracking_filter_cal* }
%struct.tda18271_rf_tracking_filter_cal = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"freq = %d, rf = %d\0A\00", align 1
@R_EB14 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64)* @tda18271_rf_tracking_filters_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_rf_tracking_filters_init(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tda18271_priv*, align 8
  %7 = alloca %struct.tda18271_rf_tracking_filter_cal*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i64], align 16
  %15 = alloca [3 x i64], align 16
  %16 = alloca [3 x i32], align 4
  %17 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = load %struct.tda18271_priv*, %struct.tda18271_priv** %19, align 8
  store %struct.tda18271_priv* %20, %struct.tda18271_priv** %6, align 8
  %21 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %22 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %21, i32 0, i32 1
  %23 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %22, align 8
  store %struct.tda18271_rf_tracking_filter_cal* %23, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %24 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %25 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %28 = call i32 @tda18271_lookup_rf_band(%struct.dvb_frontend* %27, i64* %5, i32* null)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @tda_fail(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  br label %237

34:                                               ; preds = %2
  %35 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %35, i64 %37
  %39 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 1000, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 %42, i64* %43, align 16
  %44 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %44, i64 %46
  %48 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 1000, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  store i64 %51, i64* %52, align 8
  %53 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %53, i64 %55
  %57 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 1000, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 %60, i64* %61, align 16
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %233, %34
  %63 = load i32, i32* %10, align 4
  %64 = icmp sle i32 %63, 2
  br i1 %64, label %65, label %236

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 0, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %237

72:                                               ; preds = %65
  %73 = load i64, i64* %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @tda_cal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %73, i32 %74)
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %78
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %81
  %83 = call i32 @tda18271_powerscan(%struct.dvb_frontend* %76, i64* %79, i64* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @tda_fail(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %237

89:                                               ; preds = %72
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %92
  %94 = call i32 @tda18271_calc_rf_cal(%struct.dvb_frontend* %90, i64* %93)
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* @R_EB14, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 %101
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 1, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %89
  %106 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @tda18271_calibrate_rf(%struct.dvb_frontend* %106, i64 %110)
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %114
  store i32 %112, i32* %115, align 4
  br label %124

116:                                              ; preds = %89
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %122
  store i32 %120, i32* %123, align 4
  br label %124

124:                                              ; preds = %116, %105
  %125 = load i32, i32* %10, align 4
  switch i32 %125, label %230 [
    i32 0, label %126
    i32 1, label %150
    i32 2, label %185
  ]

126:                                              ; preds = %124
  %127 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %127, i64 %129
  %131 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %130, i32 0, i32 3
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %133, %135
  %137 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %137, i64 %139
  %141 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %140, i32 0, i32 4
  store i32 %136, i32* %141, align 8
  %142 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %143 = load i64, i64* %142, align 16
  %144 = sdiv i64 %143, 1000
  %145 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %145, i64 %147
  %149 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %148, i32 0, i32 9
  store i64 %144, i64* %149, align 8
  br label %232

150:                                              ; preds = %124
  %151 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %152, %154
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %155, %157
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %158, %160
  store i32 %161, i32* %13, align 4
  %162 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %165 = load i64, i64* %164, align 16
  %166 = sub nsw i64 %163, %165
  %167 = trunc i64 %166 to i32
  %168 = sdiv i32 %167, 1000
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %12, align 4
  %171 = sdiv i32 %169, %170
  %172 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %172, i64 %174
  %176 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %175, i32 0, i32 3
  store i32 %171, i32* %176, align 4
  %177 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %178 = load i64, i64* %177, align 8
  %179 = sdiv i64 %178, 1000
  %180 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %180, i64 %182
  %184 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %183, i32 0, i32 8
  store i64 %179, i64* %184, align 8
  br label %232

185:                                              ; preds = %124
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %187, %189
  %191 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %190, %192
  %194 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %193, %195
  store i32 %196, i32* %13, align 4
  %197 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %198 = load i64, i64* %197, align 16
  %199 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %198, %200
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %202, 1000
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %12, align 4
  %206 = sdiv i32 %204, %205
  %207 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %207, i64 %209
  %211 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %210, i32 0, i32 5
  store i32 %206, i32* %211, align 4
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %213, %215
  %217 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %217, i64 %219
  %221 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %220, i32 0, i32 6
  store i32 %216, i32* %221, align 8
  %222 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %223 = load i64, i64* %222, align 16
  %224 = sdiv i64 %223, 1000
  %225 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %225, i64 %227
  %229 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %228, i32 0, i32 7
  store i64 %224, i64* %229, align 8
  br label %232

230:                                              ; preds = %124
  %231 = call i32 (...) @BUG()
  br label %232

232:                                              ; preds = %230, %185, %150, %126
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %62

236:                                              ; preds = %62
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %236, %87, %71, %32
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @tda18271_lookup_rf_band(%struct.dvb_frontend*, i64*, i32*) #1

declare dso_local i64 @tda_fail(i32) #1

declare dso_local i32 @tda_cal(i8*, i64, i32) #1

declare dso_local i32 @tda18271_powerscan(%struct.dvb_frontend*, i64*, i64*) #1

declare dso_local i32 @tda18271_calc_rf_cal(%struct.dvb_frontend*, i64*) #1

declare dso_local i64 @tda18271_calibrate_rf(%struct.dvb_frontend*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
