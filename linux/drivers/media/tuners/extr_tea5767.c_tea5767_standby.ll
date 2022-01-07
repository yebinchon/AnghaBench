; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_standby.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tea5767_priv* }
%struct.tea5767_priv = type { i32 }

@TEA5767_PORT1_HIGH = common dso_local global i8 0, align 1
@TEA5767_PORT2_HIGH = common dso_local global i8 0, align 1
@TEA5767_HIGH_CUT_CTRL = common dso_local global i8 0, align 1
@TEA5767_ST_NOISE_CTL = common dso_local global i8 0, align 1
@TEA5767_JAPAN_BAND = common dso_local global i8 0, align 1
@TEA5767_STDBY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 5)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tea5767_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tea5767_standby(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca [5 x i8], align 1
  %4 = alloca %struct.tea5767_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  store %struct.tea5767_priv* %9, %struct.tea5767_priv** %4, align 8
  store i32 7019, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 63
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  store i8 %13, i8* %14, align 1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 1
  store i8 %17, i8* %18, align 1
  %19 = load i8, i8* @TEA5767_PORT1_HIGH, align 1
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 2
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* @TEA5767_PORT2_HIGH, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @TEA5767_HIGH_CUT_CTRL, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i8, i8* @TEA5767_ST_NOISE_CTL, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = load i8, i8* @TEA5767_JAPAN_BAND, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = load i8, i8* @TEA5767_STDBY, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 3
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 4
  store i8 0, i8* %37, align 1
  %38 = load %struct.tea5767_priv*, %struct.tea5767_priv** %4, align 8
  %39 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %41 = call i32 @tuner_i2c_xfer_send(i32* %39, i8* %40, i32 5)
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 5, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %1
  ret i32 0
}

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tuner_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
