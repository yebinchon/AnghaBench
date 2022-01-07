; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda9887.c_tda9887_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda9887.c_tda9887_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda9887_priv* }
%struct.tda9887_priv = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 1)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda9887_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9887_status(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda9887_priv*, align 8
  %4 = alloca [1 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.tda9887_priv*, %struct.tda9887_priv** %7, align 8
  store %struct.tda9887_priv* %8, %struct.tda9887_priv** %3, align 8
  %9 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %10 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %12 = call i32 @tuner_i2c_xfer_recv(i32* %10, i8* %11, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @tuner_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %20 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %21 = call i32 @dump_read_message(%struct.dvb_frontend* %19, i8* %20)
  ret i32 0
}

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i8*, i32) #1

declare dso_local i32 @tuner_info(i8*, i32) #1

declare dso_local i32 @dump_read_message(%struct.dvb_frontend*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
