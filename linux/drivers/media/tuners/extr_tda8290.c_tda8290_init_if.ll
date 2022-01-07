; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda8290_init_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda8290_init_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@tda8290_init_if.set_VS = internal global [2 x i8] c"0o", align 1
@tda8290_init_if.set_GP00_CF = internal global [2 x i8] c" \01", align 1
@tda8290_init_if.set_GP01_CF = internal global [2 x i8] c" \0B", align 1
@TDA8290_LNA_GP0_HIGH_ON = common dso_local global i64 0, align 8
@TDA8290_LNA_GP0_HIGH_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @tda8290_init_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8290_init_if(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda8290_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  store %struct.tda8290_priv* %6, %struct.tda8290_priv** %3, align 8
  %7 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %8 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TDA8290_LNA_GP0_HIGH_ON, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %15 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TDA8290_LNA_GP0_HIGH_OFF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13, %1
  %21 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %22 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %21, i32 0, i32 0
  %23 = call i32 @tuner_i2c_xfer_send(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_init_if.set_GP00_CF, i64 0, i64 0), i32 2)
  br label %28

24:                                               ; preds = %13
  %25 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %26 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %25, i32 0, i32 0
  %27 = call i32 @tuner_i2c_xfer_send(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_init_if.set_GP01_CF, i64 0, i64 0), i32 2)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %30 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %29, i32 0, i32 0
  %31 = call i32 @tuner_i2c_xfer_send(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_init_if.set_VS, i64 0, i64 0), i32 2)
  ret void
}

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
