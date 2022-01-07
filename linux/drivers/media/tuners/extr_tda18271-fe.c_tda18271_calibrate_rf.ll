; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_calibrate_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_calibrate_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@R_EP4 = common dso_local global i64 0, align 8
@R_EP3 = common dso_local global i64 0, align 8
@R_EB18 = common dso_local global i64 0, align 8
@R_EP1 = common dso_local global i64 0, align 8
@R_EB13 = common dso_local global i64 0, align 8
@TDA18271_MAIN_PLL = common dso_local global i32 0, align 4
@TDA18271_CAL_PLL = common dso_local global i32 0, align 4
@R_EB14 = common dso_local global i64 0, align 8
@R_EB20 = common dso_local global i64 0, align 8
@R_CPD = common dso_local global i64 0, align 8
@R_MPD = common dso_local global i64 0, align 8
@R_EP2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda18271_calibrate_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_calibrate_rf(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda18271_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  store %struct.tda18271_priv* %10, %struct.tda18271_priv** %5, align 8
  %11 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %12 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* @R_EP4, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, -4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %16, align 1
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = load i64, i64* @R_EP4, align 8
  %23 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %21, i64 %22, i32 1)
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* @R_EP3, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, 64
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* @R_EB18, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, 3
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %33, align 1
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %39 = load i64, i64* @R_EB18, align 8
  %40 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %38, i64 %39, i32 1)
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = call i32 @tda18271_calc_bp_filter(%struct.dvb_frontend* %41, i32* %4)
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %44 = call i32 @tda18271_calc_gain_taper(%struct.dvb_frontend* %43, i32* %4)
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %46 = call i32 @tda18271_calc_rf_band(%struct.dvb_frontend* %45, i32* %4)
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %48 = call i32 @tda18271_calc_km(%struct.dvb_frontend* %47, i32* %4)
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %50 = load i64, i64* @R_EP1, align 8
  %51 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %49, i64 %50, i32 3)
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %53 = load i64, i64* @R_EB13, align 8
  %54 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %52, i64 %53, i32 1)
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %56 = load i32, i32* @TDA18271_MAIN_PLL, align 4
  %57 = call i32 @tda18271_charge_pump_source(%struct.dvb_frontend* %55, i32 %56, i32 1)
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %59 = load i32, i32* @TDA18271_CAL_PLL, align 4
  %60 = call i32 @tda18271_charge_pump_source(%struct.dvb_frontend* %58, i32 %59, i32 1)
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* @R_EB14, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %65 = load i64, i64* @R_EB14, align 8
  %66 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %64, i64 %65, i32 1)
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* @R_EB20, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, -33
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 1
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %75 = load i64, i64* @R_EB20, align 8
  %76 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %74, i64 %75, i32 1)
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* @R_EP4, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %81, 3
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %85 = load i64, i64* @R_EP4, align 8
  %86 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %84, i64 %85, i32 2)
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @tda18271_calc_cal_pll(%struct.dvb_frontend* %88, i32 %89)
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %92 = load i64, i64* @R_CPD, align 8
  %93 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %91, i64 %92, i32 4)
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1000000
  store i32 %95, i32* %7, align 4
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @tda18271_calc_main_pll(%struct.dvb_frontend* %96, i32 %97)
  %99 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %100 = load i64, i64* @R_MPD, align 8
  %101 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %99, i64 %100, i32 4)
  %102 = call i32 @msleep(i32 5)
  %103 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %104 = load i64, i64* @R_EP2, align 8
  %105 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %103, i64 %104, i32 1)
  %106 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %107 = load i64, i64* @R_EP1, align 8
  %108 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %106, i64 %107, i32 1)
  %109 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %110 = load i64, i64* @R_EP2, align 8
  %111 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %109, i64 %110, i32 1)
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %113 = load i64, i64* @R_EP1, align 8
  %114 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %112, i64 %113, i32 1)
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %116 = load i32, i32* @TDA18271_MAIN_PLL, align 4
  %117 = call i32 @tda18271_charge_pump_source(%struct.dvb_frontend* %115, i32 %116, i32 0)
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %119 = load i32, i32* @TDA18271_CAL_PLL, align 4
  %120 = call i32 @tda18271_charge_pump_source(%struct.dvb_frontend* %118, i32 %119, i32 0)
  %121 = call i32 @msleep(i32 10)
  %122 = load i8*, i8** %6, align 8
  %123 = load i64, i64* @R_EB20, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %126, 32
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %124, align 1
  %129 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %130 = load i64, i64* @R_EB20, align 8
  %131 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %129, i64 %130, i32 1)
  %132 = call i32 @msleep(i32 60)
  %133 = load i8*, i8** %6, align 8
  %134 = load i64, i64* @R_EP4, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, -4
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %135, align 1
  %140 = load i8*, i8** %6, align 8
  %141 = load i64, i64* @R_EP3, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, -65
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %142, align 1
  %147 = load i8*, i8** %6, align 8
  %148 = load i64, i64* @R_EB18, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, -4
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %149, align 1
  %154 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %155 = load i64, i64* @R_EB18, align 8
  %156 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %154, i64 %155, i32 1)
  %157 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %158 = load i64, i64* @R_EP3, align 8
  %159 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %157, i64 %158, i32 2)
  %160 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %161 = load i64, i64* @R_EP1, align 8
  %162 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %160, i64 %161, i32 1)
  %163 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %164 = call i32 @tda18271_read_extended(%struct.dvb_frontend* %163)
  %165 = load i8*, i8** %6, align 8
  %166 = load i64, i64* @R_EB14, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  ret i32 %169
}

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i32 @tda18271_calc_bp_filter(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tda18271_calc_gain_taper(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tda18271_calc_rf_band(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tda18271_calc_km(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tda18271_charge_pump_source(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i32 @tda18271_calc_cal_pll(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @tda18271_calc_main_pll(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tda18271_read_extended(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
