; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl5007t_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"failed!\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl5007t_state*)* @mxl5007t_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl5007t_soft_reset(%struct.mxl5007t_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxl5007t_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_msg, align 8
  %6 = alloca i32, align 4
  store %struct.mxl5007t_state* %0, %struct.mxl5007t_state** %3, align 8
  store i32 255, i32* %4, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32* %4, i32** %7, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  %11 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %12 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 8
  %15 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %16 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @i2c_transfer(i32 %18, %struct.i2c_msg* %5, i32 1)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = call i32 @mxl_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EREMOTEIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @mxl_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
