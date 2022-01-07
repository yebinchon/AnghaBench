; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-i2c.h_tuner_i2c_xfer_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-i2c.h_tuner_i2c_xfer_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuner_i2c_props = type { i32, i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tuner_i2c_props*, i8*, i32)* @tuner_i2c_xfer_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tuner_i2c_props*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca i32, align 4
  store %struct.tuner_i2c_props* %0, %struct.tuner_i2c_props** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  %15 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %4, align 8
  %16 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 8
  %18 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %4, align 8
  %19 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @i2c_transfer(i32 %20, %struct.i2c_msg* %7, i32 1)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  ret i32 %29
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
