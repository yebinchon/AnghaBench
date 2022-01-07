; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_tda8290_i2c_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_tda8290_i2c_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda1004x_state* }
%struct.tda1004x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@tda8290_i2c_gate_ctrl.tda8290_close = internal global [2 x i32] [i32 33, i32 192], align 4
@tda8290_i2c_gate_ctrl.tda8290_open = internal global [2 x i32] [i32 33, i32 128], align 4
@.str = private unnamed_addr constant [35 x i8] c"could not access tda8290 I2C gate\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda8290_i2c_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda8290_i2c_gate_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda1004x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.tda1004x_state*, %struct.tda1004x_state** %10, align 8
  store %struct.tda1004x_state* %11, %struct.tda1004x_state** %6, align 8
  %12 = load %struct.tda1004x_state*, %struct.tda1004x_state** %6, align 8
  %13 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 2, i32* %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @tda8290_i2c_gate_ctrl.tda8290_close, i64 0, i64 0), i32** %25, align 8
  br label %28

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @tda8290_i2c_gate_ctrl.tda8290_open, i64 0, i64 0), i32** %27, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.tda1004x_state*, %struct.tda1004x_state** %6, align 8
  %30 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @i2c_transfer(i32 %31, %struct.i2c_msg* %8, i32 1)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %28
  %39 = call i32 @msleep(i32 20)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
