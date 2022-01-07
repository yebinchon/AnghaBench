; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda8290_standby.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda8290_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.tda8290_priv* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.tda8290_priv = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@tda8290_standby.cb1 = internal global [2 x i8] c"0\D0", align 1
@tda8290_standby.tda8290_standby = internal global [2 x i8] c"\00\02", align 1
@tda8290_standby.tda8290_agc_tri = internal global [2 x i8] c"\02 ", align 1
@TDA8275A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @tda8290_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8290_standby(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda8290_priv*, align 8
  %4 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = load %struct.tda8290_priv*, %struct.tda8290_priv** %6, align 8
  store %struct.tda8290_priv* %7, %struct.tda8290_priv** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_standby.cb1, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  store i32 2, i32* %9, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 3
  %12 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %25, align 8
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %28 = bitcast %struct.dvb_frontend* %27 to %struct.dvb_frontend.0*
  %29 = call i32 %26(%struct.dvb_frontend.0* %28, i32 1)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %32 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TDA8275A, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i8 -112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_standby.cb1, i64 0, i64 1), align 1
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %40 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i2c_transfer(i32 %42, %struct.i2c_msg* %4, i32 1)
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %54, align 8
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %57 = bitcast %struct.dvb_frontend* %56 to %struct.dvb_frontend.0*
  %58 = call i32 %55(%struct.dvb_frontend.0* %57, i32 0)
  br label %59

59:                                               ; preds = %50, %38
  %60 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %61 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %60, i32 0, i32 1
  %62 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_6__* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_standby.tda8290_agc_tri, i64 0, i64 0), i32 2)
  %63 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %64 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %63, i32 0, i32 1
  %65 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_standby.tda8290_standby, i64 0, i64 0), i32 2)
  ret void
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
