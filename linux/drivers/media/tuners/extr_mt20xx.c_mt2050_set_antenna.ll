; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt20xx.c_mt2050_set_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt20xx.c_mt2050_set_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.microtune_priv* }
%struct.microtune_priv = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"mt2050: enabled antenna connector %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i8)* @mt2050_set_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt2050_set_antenna(%struct.dvb_frontend* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.microtune_priv*, align 8
  %6 = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  store %struct.microtune_priv* %9, %struct.microtune_priv** %5, align 8
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 6, i8* %10, align 1
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 17, i32 16
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %16, i8* %17, align 1
  %18 = load %struct.microtune_priv*, %struct.microtune_priv** %5, align 8
  %19 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %21 = call i32 @tuner_i2c_xfer_send(i32* %19, i8* %20, i32 2)
  %22 = load i8, i8* %4, align 1
  %23 = call i32 @tuner_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %22)
  ret void
}

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
