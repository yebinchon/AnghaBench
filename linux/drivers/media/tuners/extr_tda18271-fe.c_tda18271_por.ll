; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_por.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_por.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@R_EB12 = common dso_local global i64 0, align 8
@R_EB18 = common dso_local global i64 0, align 8
@R_EB21 = common dso_local global i64 0, align 8
@R_EB23 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18271_por to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_por(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18271_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %7, align 8
  store %struct.tda18271_priv* %8, %struct.tda18271_priv** %3, align 8
  %9 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %10 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* @R_EB12, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, -33
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %14, align 1
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %20 = load i64, i64* @R_EB12, align 8
  %21 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %19, i64 %20, i32 1)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @tda_fail(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %80

26:                                               ; preds = %1
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* @R_EB18, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, -129
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* @R_EB18, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, -4
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %42 = load i64, i64* @R_EB18, align 8
  %43 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %41, i64 %42, i32 1)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @tda_fail(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %80

48:                                               ; preds = %26
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* @R_EB21, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, 3
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %57 = call i32 @tda18271_set_standby_mode(%struct.dvb_frontend* %56, i32 1, i32 0, i32 0)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @tda_fail(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %80

62:                                               ; preds = %48
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* @R_EB23, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, -5
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* @R_EB23, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, -3
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %72, align 1
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %78 = load i64, i64* @R_EB21, align 8
  %79 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %77, i64 %78, i32 3)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %62, %61, %47, %25
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i64 @tda_fail(i32) #1

declare dso_local i32 @tda18271_set_standby_mode(%struct.dvb_frontend*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
