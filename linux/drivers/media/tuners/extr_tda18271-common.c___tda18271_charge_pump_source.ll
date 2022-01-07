; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c___tda18271_charge_pump_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c___tda18271_charge_pump_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@TDA18271_CAL_PLL = common dso_local global i32 0, align 4
@R_EB7 = common dso_local global i32 0, align 4
@R_EB4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32)* @__tda18271_charge_pump_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tda18271_charge_pump_source(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tda18271_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %13, align 8
  store %struct.tda18271_priv* %14, %struct.tda18271_priv** %9, align 8
  %15 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %16 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TDA18271_CAL_PLL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @R_EB7, align 4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @R_EB4, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %11, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, -33
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %30, align 1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 1
  %37 = shl i32 %36, 5
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %37
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %46, i32 %47, i32 1, i32 %48)
  ret i32 %49
}

declare dso_local i32 @__tda18271_write_regs(%struct.dvb_frontend*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
