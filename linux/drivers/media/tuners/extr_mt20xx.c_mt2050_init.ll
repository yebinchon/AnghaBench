; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt20xx.c_mt2050_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt20xx.c_mt2050_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.microtune_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.microtune_priv = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"mt2050: sro is %x\0A\00", align 1
@mt2050_tuner_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt2050_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2050_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.microtune_priv*, align 8
  %4 = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = load %struct.microtune_priv*, %struct.microtune_priv** %6, align 8
  store %struct.microtune_priv* %7, %struct.microtune_priv** %3, align 8
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 6, i8* %8, align 1
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 16, i8* %9, align 1
  %10 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %11 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %13 = call i32 @tuner_i2c_xfer_send(i32* %11, i8* %12, i32 2)
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 15, i8* %14, align 1
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 15, i8* %15, align 1
  %16 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %17 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %19 = call i32 @tuner_i2c_xfer_send(i32* %17, i8* %18, i32 2)
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 13, i8* %20, align 1
  %21 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %22 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %24 = call i32 @tuner_i2c_xfer_send(i32* %22, i8* %23, i32 1)
  %25 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %26 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %28 = call i32 @tuner_i2c_xfer_recv(i32* %26, i8* %27, i32 1)
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @tuner_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 zeroext %30)
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @memcpy(i32* %34, i32* @mt2050_tuner_ops, i32 4)
  ret i32 0
}

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i8*, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i8 zeroext) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
