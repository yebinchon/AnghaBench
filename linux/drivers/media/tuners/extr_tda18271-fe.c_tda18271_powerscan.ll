; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_powerscan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_powerscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@R_EP2 = common dso_local global i64 0, align 8
@R_EB14 = common dso_local global i64 0, align 8
@R_MPD = common dso_local global i64 0, align 8
@R_EP4 = common dso_local global i64 0, align 8
@R_EB10 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"bcal = %d, freq_in = %d, freq_out = %d (freq = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64*, i64*)* @tda18271_powerscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_powerscan(%struct.dvb_frontend* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tda18271_priv*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = load %struct.tda18271_priv*, %struct.tda18271_priv** %19, align 8
  store %struct.tda18271_priv* %20, %struct.tda18271_priv** %8, align 8
  %21 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %22 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %17, align 8
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %27 = call i32 @tda18271_calc_rf_band(%struct.dvb_frontend* %26, i64* %17)
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %29 = call i32 @tda18271_calc_rf_cal(%struct.dvb_frontend* %28, i64* %17)
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %31 = call i32 @tda18271_calc_gain_taper(%struct.dvb_frontend* %30, i64* %17)
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %33 = call i32 @tda18271_lookup_cid_target(%struct.dvb_frontend* %32, i64* %17, i8* %15, i32* %16)
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %35 = load i64, i64* @R_EP2, align 8
  %36 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %34, i64 %35, i32 1)
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %38 = load i64, i64* @R_EB14, align 8
  %39 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %37, i64 %38, i32 1)
  %40 = load i64, i64* %17, align 8
  %41 = add nsw i64 %40, 1000000
  store i64 %41, i64* %17, align 8
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %43 = load i64, i64* %17, align 8
  %44 = call i32 @tda18271_calc_main_pll(%struct.dvb_frontend* %42, i64 %43)
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %46 = load i64, i64* @R_MPD, align 8
  %47 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %45, i64 %46, i32 4)
  %48 = call i32 @msleep(i32 5)
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* @R_EP4, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, -4
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* @R_EP4, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %60, 1
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %58, align 1
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %64 = load i64, i64* @R_EP4, align 8
  %65 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %63, i64 %64, i32 1)
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %67 = load i64, i64* @R_EP2, align 8
  %68 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %66, i64 %67, i32 1)
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %70 = call i32 @tda18271_read_extended(%struct.dvb_frontend* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i64 @tda_fail(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %3
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %4, align 4
  br label %160

76:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %133, %128, %76
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* @R_EB10, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 63
  %87 = load i8, i8* %15, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %136

90:                                               ; preds = %80
  %91 = load i64*, i64** %6, align 8
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %12, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %92, %96
  %98 = add nsw i64 %97, 1000000
  store i64 %98, i64* %17, align 8
  %99 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %100 = load i64, i64* %17, align 8
  %101 = call i32 @tda18271_calc_main_pll(%struct.dvb_frontend* %99, i64 %100)
  %102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %103 = load i64, i64* @R_MPD, align 8
  %104 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %102, i64 %103, i32 4)
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %90
  %108 = call i32 @msleep(i32 5)
  store i32 0, i32* %13, align 4
  br label %111

109:                                              ; preds = %90
  %110 = call i32 @udelay(i32 100)
  br label %111

111:                                              ; preds = %109, %107
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %113 = load i64, i64* @R_EP2, align 8
  %114 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %112, i64 %113, i32 1)
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %116 = call i32 @tda18271_read_extended(%struct.dvb_frontend* %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i64 @tda_fail(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %4, align 4
  br label %160

122:                                              ; preds = %111
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 200
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %80

129:                                              ; preds = %122
  %130 = load i32, i32* %10, align 4
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = mul nsw i32 -1, %134
  store i32 %135, i32* %10, align 4
  store i32 200, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %80

136:                                              ; preds = %132, %80
  %137 = load i8*, i8** %9, align 8
  %138 = load i64, i64* @R_EB10, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, 63
  %143 = load i8, i8* %15, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp sge i32 %142, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  store i32 1, i32* %11, align 4
  %147 = load i64, i64* %17, align 8
  %148 = sub nsw i64 %147, 1000000
  %149 = load i64*, i64** %7, align 8
  store i64 %148, i64* %149, align 8
  br label %151

150:                                              ; preds = %136
  store i32 0, i32* %11, align 4
  br label %151

151:                                              ; preds = %150, %146
  %152 = load i32, i32* %11, align 4
  %153 = load i64*, i64** %6, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %7, align 8
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %17, align 8
  %158 = call i32 @tda_cal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %152, i64 %154, i64 %156, i64 %157)
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %151, %120, %74
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @tda18271_calc_rf_band(%struct.dvb_frontend*, i64*) #1

declare dso_local i32 @tda18271_calc_rf_cal(%struct.dvb_frontend*, i64*) #1

declare dso_local i32 @tda18271_calc_gain_taper(%struct.dvb_frontend*, i64*) #1

declare dso_local i32 @tda18271_lookup_cid_target(%struct.dvb_frontend*, i64*, i8*, i32*) #1

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i32 @tda18271_calc_main_pll(%struct.dvb_frontend*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tda18271_read_extended(%struct.dvb_frontend*) #1

declare dso_local i64 @tda_fail(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tda_cal(i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
