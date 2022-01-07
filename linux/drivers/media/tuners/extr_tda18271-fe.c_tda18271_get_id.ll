; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Error reading device ID @ %d-%04x, bailing out.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@R_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"TDA18271HD/C1\00", align 1
@TDA18271HDC1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"TDA18271HD/C2\00", align 1
@TDA18271HDC2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Unknown device (%i) detected @ %d-%04x, device not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"%s detected @ %d-%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18271_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_get_id(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.tda18271_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  store %struct.tda18271_priv* %10, %struct.tda18271_priv** %4, align 8
  %11 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %12 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %15 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = call i32 @tda18271_read_regs(%struct.dvb_frontend* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %20 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %19, i32 0, i32 3
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %26 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @i2c_adapter_id(i32 %28)
  %30 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %31 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @tda_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %82

37:                                               ; preds = %1
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* @R_ID, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 127
  switch i32 %43, label %52 [
    i32 3, label %44
    i32 4, label %48
  ]

44:                                               ; preds = %37
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %45 = load i32, i32* @TDA18271HDC1, align 4
  %46 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %47 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %70

48:                                               ; preds = %37
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %49 = load i32, i32* @TDA18271HDC2, align 4
  %50 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %51 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %70

52:                                               ; preds = %37
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* @R_ID, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %59 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i2c_adapter_id(i32 %61)
  %63 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %64 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @tda_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %62, i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %82

70:                                               ; preds = %48, %44
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %73 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @i2c_adapter_id(i32 %75)
  %77 = load %struct.tda18271_priv*, %struct.tda18271_priv** %4, align 8
  %78 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @tda_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %71, i32 %76, i32 %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %70, %52, %24
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tda18271_read_regs(%struct.dvb_frontend*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tda_info(i8*, ...) #1

declare dso_local i32 @i2c_adapter_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
