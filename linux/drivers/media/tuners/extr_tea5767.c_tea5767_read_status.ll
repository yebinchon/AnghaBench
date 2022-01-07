; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tea5767_priv* }
%struct.tea5767_priv = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 5)\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i8*)* @tea5767_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tea5767_read_status(%struct.dvb_frontend* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tea5767_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tea5767_priv*, %struct.tea5767_priv** %9, align 8
  store %struct.tea5767_priv* %10, %struct.tea5767_priv** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @memset(i8* %11, i32 0, i32 5)
  %13 = load %struct.tea5767_priv*, %struct.tea5767_priv** %6, align 8
  %14 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %13, i32 0, i32 0
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @tuner_i2c_xfer_recv(i32* %14, i8* %15, i32 5)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 5, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EREMOTEIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i8*, i32) #1

declare dso_local i32 @tuner_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
