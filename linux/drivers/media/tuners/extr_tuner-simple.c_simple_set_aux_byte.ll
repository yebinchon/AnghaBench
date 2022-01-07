; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_set_aux_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_set_aux_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"setting aux byte: 0x%02x 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @simple_set_aux_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_set_aux_byte(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tuner_simple_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %11, align 8
  store %struct.tuner_simple_priv* %12, %struct.tuner_simple_priv** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -57
  %15 = or i32 %14, 24
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tuner_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %25 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %27 = call i32 @tuner_i2c_xfer_send(i32* %25, i32* %26, i32 2)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 2, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ 0, %36 ], [ %38, %37 ]
  ret i32 %40
}

declare dso_local i32 @tuner_dbg(i8*, i32, i32) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i32*, i32) #1

declare dso_local i32 @tuner_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
