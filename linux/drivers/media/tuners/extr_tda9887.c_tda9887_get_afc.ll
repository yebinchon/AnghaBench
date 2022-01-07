; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda9887.c_tda9887_get_afc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda9887.c_tda9887_get_afc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda9887_priv* }
%struct.tda9887_priv = type { i64, i32 }

@tda9887_get_afc.AFC_BITS_2_kHz = internal constant [16 x i32] [i32 -12500, i32 -37500, i32 -62500, i32 -97500, i32 -112500, i32 -137500, i32 -162500, i32 -187500, i32 187500, i32 162500, i32 137500, i32 112500, i32 97500, i32 62500, i32 37500, i32 12500], align 16
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @tda9887_get_afc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9887_get_afc(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tda9887_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda9887_priv*, %struct.tda9887_priv** %9, align 8
  store %struct.tda9887_priv* %10, %struct.tda9887_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.tda9887_priv*, %struct.tda9887_priv** %6, align 8
  %12 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.tda9887_priv*, %struct.tda9887_priv** %6, align 8
  %19 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %18, i32 0, i32 1
  %20 = call i32 @tuner_i2c_xfer_recv(i32* %19, i32* %7, i32 1)
  %21 = icmp eq i32 1, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 1
  %25 = and i32 %24, 15
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* @tda9887_get_afc.AFC_BITS_2_kHz, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
